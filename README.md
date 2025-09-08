# Site du _Référentiel des métadonnées descriptives du spectacle_

Documentation interne (pour les contributeurs du référentiel) à venir ici.

## Dépendences

### Python

* MkDocs
* Material for MkDocs
* [Mkdocs-Macros](https://mkdocs-macros-plugin.readthedocs.io/en/latest/)
* un fork propriétaire de [json-schema-for-humans](https://github.com/a10s-ca/json-schema-for-humans)

`pip install -r requirements.txt` devrait tout installer

### Ruby

Ruby est utilisé pour générer les fichiers de présentation des vocabulaires contrôlés.

`gem install linkeddata` (ruby 3.1.2 or higher)

## Conventions

Les pages qui décrivent des classes principales contiennent la variable `iucd` (pour "indent utility class definitions"). Cette variable est passée au templates de présentation des classes utilitaires et permet d'en altérer l'apparence pour rendre leur présence plus visuelle dans les tableaux étendus des propriétés.

