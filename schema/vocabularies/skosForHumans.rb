#!/usr/bin/env ruby
# frozen_string_literal: true

require 'rdf'
require 'rdf/json'
require 'rdf/vocab'
require 'erb'
require 'linkeddata'
require 'fileutils'

# --- Helpers ---------------------------------------------------------------

def code_from_uri(uri)
  return "" if uri.nil? || uri.empty?
  return uri.split('#').last if uri.include?('#')
  uri.chomp('/').split('/').last
end

# Récupération récursive des narrower (via skos:broader)
def fetch_narrower_concepts(graph, concept)
  narrower_concepts = []
  graph.query([:narrower, RDF::Vocab::SKOS.broader, concept]).each do |st|
    uri  = st.subject.to_s
    label_stmt = graph.query([st.subject, RDF::Vocab::SKOS.prefLabel, nil]).first ||
                 graph.query([st.subject, RDF::RDFS.label, nil]).first
    label = label_stmt&.object&.to_s
    definition = graph.query([st.subject, RDF::Vocab::SKOS.definition, nil]).first&.object&.to_s

    narrower_concepts << {
      uri: uri,
      label: label,
      definition: definition,
      narrower: fetch_narrower_concepts(graph, st.subject)
    }
  end

  # tri par label pour stabilité
  narrower_concepts.sort_by { |c| (c[:label] || '').downcase }
end

# Rendu récursif en Markdown d'une liste de narrower
def render_narrower_md(narrower_concepts, level = 0)
  indent = '  ' * level
  narrower_concepts.map do |c|
    label = c[:label] && !c[:label].empty? ? c[:label] : code_from_uri(c[:uri])
    line = "#{indent}- **[#{label}](#{c[:uri]})**  \n" \
           "#{indent}  `code: #{code_from_uri(c[:uri])}`"
    if c[:definition] && !c[:definition].empty?
      line += "\n#{indent}  _Définition_: #{c[:definition]}"
    end
    if c[:narrower]&.any?
      line += "\n#{indent}  Concepts plus spécifiques :\n" \
              "#{render_narrower_md(c[:narrower], level + 1)}"
    end
    line
  end.join("\n")
end

# --- Entrée / chargement ---------------------------------------------------

if ARGV.empty?
  puts "Usage: ruby generate_skos_md.rb <input_file.jsonld> <outputfile>"
  exit
end

file_path = ARGV[0]
unless File.exist?(file_path)
  puts "Error: File '#{file_path}' not found."
  exit
end

graph = RDF::Graph.load(file_path, format: :jsonld)

# --- Extraction des top concepts & métadonnées -----------------------------

top_level_concepts = []
graph.query([:concept, RDF::Vocab::SKOS.topConceptOf, :scheme]).each do |st|
  top_level_concepts << {
    uri: st.subject.to_s,
    label: graph.query([st.subject, RDF::Vocab::SKOS.prefLabel, nil]).first&.object&.to_s ||
           graph.query([st.subject, RDF::RDFS.label, nil]).first&.object&.to_s,
    definition: graph.query([st.subject, RDF::Vocab::SKOS.definition, nil]).first&.object&.to_s,
    narrower: fetch_narrower_concepts(graph, st.subject)
  }
end

graph.query([:scheme, RDF::Vocab::SKOS.hasTopConcept, :concept]).each do |st|
  top_level_concepts << {
    uri: st.object.to_s,
    label: graph.query([st.object, RDF::Vocab::SKOS.prefLabel, nil]).first&.object&.to_s ||
           graph.query([st.object, RDF::RDFS.label, nil]).first&.object&.to_s,
    definition: graph.query([st.object, RDF::Vocab::SKOS.definition, nil]).first&.object&.to_s,
    narrower: fetch_narrower_concepts(graph, st.object)
  }
end

# dédoublonnage éventuel
top_level_concepts.uniq! { |c| c[:uri] }
top_level_concepts.sort_by! { |c| (c[:label] || '').downcase }

concept_scheme = graph.query([nil, RDF.type, RDF::Vocab::SKOS.ConceptScheme]).first&.subject
meta = {
  title: graph.query([concept_scheme, RDF::Vocab::SKOS.prefLabel, :label]).first&.object&.to_s ||
         graph.query([concept_scheme, RDF::RDFS.label, :label]).first&.object&.to_s ||
         File.basename(file_path, '.jsonld'),
  uri: concept_scheme&.to_s,
  version: graph.query([concept_scheme, RDF::URI('http://www.w3.org/2002/07/owl#versionInfo'), :v]).first&.object&.to_s,
  definition: graph.query([concept_scheme, RDF::Vocab::SKOS.definition, :d]).first&.object&.to_s,
  source: graph.query([concept_scheme, RDF::Vocab::PROV.wasDerivedFrom, :s]).first&.object&.to_s
}

# --- Template Markdown (ERB) ----------------------------------------------

template = <<~'MD'
  # <%= meta[:title] %>

  <% if meta[:definition] && !meta[:definition].empty? %>
  <%= meta[:definition] %>

  <% end %>
  > Type : `skos:ConceptScheme`

  <% if meta[:source] && !meta[:source].empty? %>
  **Source :** <%= meta[:source] %>
  <% end %>
  <% if meta[:uri] && !meta[:uri].empty? %>
  **URI :** <%= meta[:uri] %>
  <% end %>
  <% if meta[:version] && !meta[:version].empty? %>
  **Version :** <%= meta[:version] %>
  <% end %>

  <% if top_level_concepts.any? %>
  ## Concepts de premier niveau

  <% top_level_concepts.each_with_index do |concept, idx| %>
  ### <%= concept[:label] || code_from_uri(concept[:uri]) %>

  - **URI** : <%= concept[:uri] %>
  - **Code** : `<%= code_from_uri(concept[:uri]) %>`
  <% if concept[:definition] && !concept[:definition].empty? %>
  - **Définition** : <%= concept[:definition] %>
  <% end %>
  <% if concept[:narrower].any? %>
  **Concepts plus spécifiques :**
  <%= render_narrower_md(concept[:narrower], 0) %>
  <% end %>

  <% end %>
  <% end %>

  ---
  _Généré automatiquement par [skos-for-humans](http://culturecreates.com) le <%= Time.now.strftime('%Y-%m-%d') %>._
MD

# --- Rendu & écriture ------------------------------------------------------

md_output = ERB.new(template).result(binding)

output_filename = ARGV[1]
FileUtils.mkdir_p(File.dirname(output_filename))
File.write(output_filename, md_output)

puts "Markdown file generated at #{output_filename}"
