import subprocess

VOCABULARIES = ['accessibiliteUniversellesTermes', 'associationGeographiqueType', 'avertissement', 'configurationSalleTermes', 'contenusType', 'contributionType', 'disciplines-asq', 'publicCible']

def on_pre_build(config):
    try:
        for vocab in VOCABULARIES:
            subprocess.run(["ruby", "./schema/vocabularies/skosForHumans.rb", "./schema/vocabularies/" + vocab + ".skos.jsonld", "./docs/references/vocabulaires/" + vocab + ".md"], check=True)
        print("Ruby script executed successfully!")
    except subprocess.CalledProcessError as e:
        print(f"Error executing Ruby script: {e}")
        # Handle the error as needed, potentially raising an exception to stop the build

