import os
import zipfile
import logging
from mkdocs.plugins import BasePlugin

def on_startup(command, dirty):
    logging.basicConfig(level=logging.INFO)
    logger = logging.getLogger("SchemaZipPlugin")

    schema_dir = os.path.join(os.path.dirname(__file__), 'schema')
    output_zip = os.path.join('docs', 'modele', 'datascene-json.zip')
    json_files = []

    logger.info(f"Lookin for all .json files in {schema_dir}...")

    # Collect all .json files recursively
    for root, _, files in os.walk(schema_dir):
        for file in files:
            if file.endswith('.json'):
                full_path = os.path.join(root, file)
                rel_path = os.path.relpath(full_path, schema_dir)
                json_files.append((full_path, rel_path))
                logger.info(f"Ajout du fichier : {rel_path}")

    logger.info(f"{len(json_files)} json files found.")

    # Ensure output directory exists
    os.makedirs(os.path.dirname(output_zip), exist_ok=True)
    logger.info(f"Creating zip: {output_zip}")

    # Write files to zip
    with zipfile.ZipFile(output_zip, 'w', zipfile.ZIP_DEFLATED) as zipf:
        for full_path, rel_path in json_files:
            zipf.write(full_path, arcname=rel_path)
            logger.info(f"File added to zip: {rel_path}")

    logger.info("Operation completed.")