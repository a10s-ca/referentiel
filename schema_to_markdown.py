from json_schema_for_humans.generate import generate_from_filename
from json_schema_for_humans.generation_configuration import GenerationConfiguration


json_for_schema_config = GenerationConfiguration(
    template_name='simplified_fr_md',
    show_toc=False,
    template_md_options={'properties_table_columns': ['Property','Title/Description','Type','Definition']}
)

CLASSES = ['show', 'performance', 'contributor', 'place', 'room', 'series', 'work']
UTILITIES = ['contribution', 'geographic_relations', 'offer', 'identifier', 'media', 'postal_address', 'room_specification', 'term', 'web_page']

def on_pre_build(config):
    for klass in CLASSES:
        generate_from_filename("schema/" + klass + ".schema.json", "docs/references/proprietes/" + klass + ".md", config=json_for_schema_config)
    for klass in UTILITIES:
        generate_from_filename("schema/utilities/" + klass + ".schema.json", "docs/references/proprietes/utilities/" + klass + ".md", config=json_for_schema_config)
