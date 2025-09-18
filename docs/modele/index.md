# Modèle de données

## Classes et relations

Le référentiel propose l'utilisation de [classes principales](./classes_principales/index.md) et de [classes utilitaires](./classes_utilitaires/index.md) pour structurer les données.

Les relations entre les classes principales sont illustrées dans le schéma suivant. Les classes utilitaires sont volontairement omises.

``` mermaid
flowchart TD
    Représentation -- inclut la contribution de --> Contributeur
    Représentation -- dans le cadre de --> Spectacle
    Représentation -- peut faire partie de  --> Série
    Représentation -- se tient dans --> Lieu
    Représentation -- se tient dans --> Salle
    Salle -- située dans --> Lieu
    Spectacle -- inclut la contribution de --> Contributeur
    Spectacle -- associé à --> Oeuvre
    Série -- inclut la contribution de --> Contributeur
```

## Conventions de nommage

Datascène est à la fois :

* un référentiel, soit un un cadre conceptuel qui peut servir de guide pour la modélisation des données dans différents systèmes ;
* un schéma JSON qui sert à sérialiser des données modélisées en conformité avec le référentiel, pour faciliter les transfert entre systèmes.

L'ensemble des classes sont nommées en français et en anglais. Le français est utilisé dans le cadre du référentiel, et l'anglais dans le cadre du format de sérialisation. Les propriétés sont nommées en anglais.



