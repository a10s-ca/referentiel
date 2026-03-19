# Lieu (Place)

Sert à décrire un lieu, typiquement associé à une représentation. La classe est générique et les lieux peuvent correspondre à des édifices ou à des lieux extérieurs. Il s’agit du lieu associé à une adresse, ou à des indications géographiques précises, qui serait présenté à un consommateur comme l’endroit où se présenter pour assister à une représentation.

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Propriété                                                              | Description                                                                                                                                                                                                                                                                                                      | Priorité           | Type et définition                                                                |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------ | --------------------------------------------------------------------------------- |
| [type](#type )                                                         | -                                                                                                                                                                                                                                                                                                                | Obligatoire        | const                                                                             |
| [additionalType](#additionalType )<br/>_Type additionnel_              | Identification du type de lieu. Ne pas confondre avec les caractéristiques de la salle, qui doivent être documentées dans un objet de la classe Salle.<br /><br />Le vocabulaire suggéré est celui de [Wikiproject Cultural venues](https://www.wikidata.org/wiki/Wikidata:WikiProject_Cultural_venues/Typology) | Optionnel          | [Terme (Term)](../term )                                               |
| [identifier](#identifier )<br/>_Identifiant_                           | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.                                                                                                                                                                                | Obligatoire (1..N) | [Identifiant (Identifier)](../identifier )                             |
| [name](#name )<br/>_Nom_                                               | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)                                                                                                                                                                                                                      | Obligatoire        | [Texte court multilingue](../datatypes/text_short_multilingual )       |
| [description](#description )<br/>_Description_                         | Énumération de textes longs associés à un code de langue au standard ISO 639-1.                                                                                                                                                                                                                                  | Optionnel          | [Texte long multilingue](../datatypes/text_long_multilingual )         |
| [virtualPlace](#virtualPlace )<br/>_Lieu virtuel_                      | -                                                                                                                                                                                                                                                                                                                | Obligatoire        | boolean                                                                           |
| [hasRooms](#hasRooms )<br/>_Salle_                                     | Énumération des salles présentes dans le lieu. Recommandé pour les lieux contenant plusieurs salles, ou pour documenter des informations associés à la classe Salle (par exemple, les configurations possibles) dans un lieu avec une seule salle.                                                               | Optionnel (0..N)   | Tableau d'objets de type [Salle (Room)](../room )                      |
| [address](#address )<br/>_Adresse_                                     | Coordonnées complètes du lieu.                                                                                                                                                                                                                                                                                   | Optionnel          | [Adresse postale (Postal Address)](../postal_address )                 |
| [mainEntityOfPage](#mainEntityOfPage )<br/>_Pages web_                 | URL vers des pages web donnant plus d'information sur le lieu.                                                                                                                                                                                                                                                   | Optionnel (0..N)   | Tableau d'objets de type [WebPage](../web_page )                       |
| [placeAccessibility](#placeAccessibility )<br/>_Accessibilité du lieu_ | Caractéristiques d'accessibilité universelle pour le lieu. Des caractéristiques supplémentaires pourraient être documentées pour la ou les salles.<br /><br />[Voir le vocabulaire suggéré](../vocabularies/accessibiliteUniversellesTermes/)                                                                    | Optionnel (0..N)   | Tableau d'objets de type [additionalType](../term )                    |
| [geoCoordinates](#geoCoordinates )<br/>_Coordonnées géographiques_     | Coordonnées géographiques                                                                                                                                                                                                                                                                                        | Optionnel          | [Coordonnées géographiques d'un point.](../datatypes/geo_coordinates ) |

Condition particulière:
si (virtualPlace = false) alors :

- Les propriétés suivantes sont obligatoires :

    * type
    * address

## <a name="type"></a>1. Propriété `Lieu (Place) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Place"`

## <a name="additionalType"></a>2. Propriété `Lieu (Place) > additionalType` (Type additionnel)

Identification du type de lieu. Ne pas confondre avec les caractéristiques de la salle, qui doivent être documentées dans un objet de la classe Salle.

Le vocabulaire suggéré est celui de [Wikiproject Cultural venues](https://www.wikidata.org/wiki/Wikidata:WikiProject_Cultural_venues/Typology)

|                               |                                      |
| ----------------------------- | ------------------------------------ |
| **Type**                      | `object`                             |
| **Requis**                    | Non                                  |
| **Propriétés additionnelles** | Tout type permis                     |
| **Défini dans**               | [additionalType](../term) |

[Voir la documentation de Terme (Term)](../term)

## <a name="identifier"></a>3. Propriété `Lieu (Place) > identifier` (Identifiant)

Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

|                 |                                        |
| --------------- | -------------------------------------- |
| **Type**        | `array`                                |
| **Requis**      | Oui                                    |
| **Défini dans** | [identifier](../identifier) |

[Voir la documentation de Identifiant (Identifier)](../identifier)

## <a name="name"></a>4. Propriété `Lieu (Place) > name` (Nom)

Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

|                 |                                                          |
| --------------- | -------------------------------------------------------- |
| **Type**        | `array of object`                                        |
| **Requis**      | Oui                                                      |
| **Défini dans** | [label](../datatypes/text_short_multilingual) |

[Voir la documentation de Texte court multilingue](../datatypes/text_short_multilingual)

## <a name="description"></a>5. Propriété `Lieu (Place) > description` (Description)

Énumération de textes longs associés à un code de langue au standard ISO 639-1.

|                 |                                                               |
| --------------- | ------------------------------------------------------------- |
| **Type**        | `array of object`                                             |
| **Requis**      | Non                                                           |
| **Défini dans** | [description](../datatypes/text_long_multilingual) |

[Voir la documentation de Texte long multilingue](../datatypes/text_long_multilingual)

## <a name="virtualPlace"></a>6. Propriété `Lieu (Place) > virtualPlace` (Lieu virtuel)

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

## <a name="hasRooms"></a>7. Propriété `Lieu (Place) > hasRooms` (Salle)

Énumération des salles présentes dans le lieu. Recommandé pour les lieux contenant plusieurs salles, ou pour documenter des informations associés à la classe Salle (par exemple, les configurations possibles) dans un lieu avec une seule salle.

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être | Description                                                                                                                                             |
| -------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Salle (Room)](#hasRooms_items)  | Certains lieux contiennent plusieurs salles. Cette classe permet de préciser et décrire la salle utilisée dans le contexte d’une représentation donnée. |

### <a name="hasRooms_items"></a>7.1. Lieu (Place) > hasRooms > Salle (Room)

Certains lieux contiennent plusieurs salles. Cette classe permet de préciser et décrire la salle utilisée dans le contexte d’une représentation donnée.

|                               |                                    |
| ----------------------------- | ---------------------------------- |
| **Type**                      | `object`                           |
| **Requis**                    | Non                                |
| **Propriétés additionnelles** | Tout type permis                   |
| **Défini dans**               | [Salle (Room)](../room) |

[Voir la documentation de Salle (Room)](../room)

## <a name="address"></a>8. Propriété `Lieu (Place) > address` (Adresse)

Coordonnées complètes du lieu.

|                               |                                         |
| ----------------------------- | --------------------------------------- |
| **Type**                      | `object`                                |
| **Requis**                    | Non                                     |
| **Propriétés additionnelles** | Tout type permis                        |
| **Défini dans**               | [address](../postal_address) |

[Voir la documentation de Adresse postale (Postal Address)](../postal_address)

## <a name="mainEntityOfPage"></a>9. Propriété `Lieu (Place) > mainEntityOfPage` (Pages web)

URL vers des pages web donnant plus d'information sur le lieu.

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être   | Description |
| ---------------------------------- | ----------- |
| [WebPage](#mainEntityOfPage_items) | -           |

### <a name="mainEntityOfPage_items"></a>9.1. Lieu (Place) > mainEntityOfPage > WebPage

|                               |                                   |
| ----------------------------- | --------------------------------- |
| **Type**                      | `object`                          |
| **Requis**                    | Non                               |
| **Propriétés additionnelles** | Tout type permis                  |
| **Défini dans**               | [WebPage](../web_page) |

[Voir la documentation de WebPage](../web_page)

## <a name="placeAccessibility"></a>10. Propriété `Lieu (Place) > placeAccessibility` (Accessibilité du lieu)

Caractéristiques d'accessibilité universelle pour le lieu. Des caractéristiques supplémentaires pourraient être documentées pour la ou les salles.

[Voir le vocabulaire suggéré](../vocabularies/accessibiliteUniversellesTermes/)

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être          | Description                                                                             |
| ----------------------------------------- | --------------------------------------------------------------------------------------- |
| [Terme (Term)](#placeAccessibility_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="placeAccessibility_items"></a>10.1. Lieu (Place) > placeAccessibility > Terme (Term)

Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

|                               |                                   |
| ----------------------------- | --------------------------------- |
| **Type**                      | `object`                          |
| **Requis**                    | Non                               |
| **Propriétés additionnelles** | Tout type permis                  |
| **Même définition que**       | [additionalType](#additionalType) |

## <a name="geoCoordinates"></a>11. Propriété `Lieu (Place) > geoCoordinates` (Coordonnées géographiques)

Coordonnées géographiques

|                               |                                                           |
| ----------------------------- | --------------------------------------------------------- |
| **Type**                      | `object`                                                  |
| **Requis**                    | Non                                                       |
| **Propriétés additionnelles** | Tout type permis                                          |
| **Défini dans**               | [geoCoordinates](../datatypes/geo_coordinates) |

[Voir la documentation de Coordonnées géographiques d'un point.](../datatypes/geo_coordinates)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-03-19 at 15:44:03 -0400
