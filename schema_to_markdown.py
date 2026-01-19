from json_schema_for_humans.generate import generate_from_filename
from json_schema_for_humans.generation_configuration import GenerationConfiguration

import re

json_for_schema_config = GenerationConfiguration(
    template_name='simplified_fr_md',
    show_toc=False,
    recursive_detection_depth=1,
    template_md_options={'properties_table_columns': ['Propriété','Description','Type de donnée','Définition']}
)

CLASSES = ['show', 'performance', 'contributor', 'place', 'room', 'series', 'work', 'offer']
UTILITIES = ['contribution', 'identifier', 'media', 'postal_address', 'room_specification', 'term', 'web_page', 'geographic_relation']
DATATYPES = ['canada_postal_code', 'country_code', 'currency', 'geo_coordinates', 'text_long_multilingual', 'text_long', 'text_short_multilingual', 'text_short']
PARTIALS = ['authorized_html', 'language', 'no_html']
VOCABULARIES = ['event_status', 'contributor_type']

def on_startup(command, dirty):
    for klass in CLASSES:
        source_filename = "schema/" + klass + ".schema.json"
        target_filename = "docs/references/" + klass + ".md"
        generate_from_filename(source_filename, target_filename, config=json_for_schema_config)
        fix_links_in_file(target_filename)
    for klass in UTILITIES:
        source_filename = "schema/" + klass + ".schema.json"
        target_filename = "docs/references/" + klass + ".md"
        generate_from_filename(source_filename, target_filename, config=json_for_schema_config)
        fix_links_in_file(target_filename)
    for klass in DATATYPES:
        source_filename = "schema/datatypes/" + klass + ".schema.json"
        target_filename = "docs/references/datatypes/" + klass + ".md"
        generate_from_filename(source_filename, target_filename, config=json_for_schema_config)
        fix_links_in_file(target_filename)
    for klass in PARTIALS:
        source_filename = "schema/datatypes/partials/" + klass + ".schema.json"
        target_filename = "docs/references/datatypes/partials/" + klass + ".md"
        generate_from_filename(source_filename, target_filename, config=json_for_schema_config)
        fix_links_in_file(target_filename)
    for klass in VOCABULARIES:
        source_filename = "schema/vocabularies/" + klass + ".schema.json"
        target_filename = "docs/references/vocabularies/" + klass + ".md"
        generate_from_filename(source_filename, target_filename, config=json_for_schema_config)
        fix_links_in_file(target_filename)

def fix_links_in_file(filename: str):
    replace_in_file_regex(filename, r"(?<!\.)\./", "../")
    replace_in_file_regex(filename, r"\.schema\.json", "")
    replace_in_file_regex(filename, r"\.\./partials", "../datatypes/partials")

def replace_in_file_regex(filename: str, pattern: str, replacement: str):
    """
    Remplace toutes les occurrences correspondant à l'expression régulière `pattern`
    par `replacement` dans le fichier.
    """
    try:
        # Lire le contenu du fichier
        with open(filename, "r", encoding="utf-8") as f:
            content = f.read()

        # Remplacer avec regex
        content = re.sub(pattern, replacement, content)

        # Réécrire le fichier
        with open(filename, "w", encoding="utf-8") as f:
            f.write(content)

    except FileNotFoundError:
        print(f"Erreur : le fichier {filename} est introuvable.")
    except Exception as e:
        print(f"Une erreur est survenue : {e}")
