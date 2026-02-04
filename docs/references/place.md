# Lieu (Place)

**Nom:** Lieu (Place)

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

**Description:** Sert à décrire un lieu, typiquement associé à une représentation. La classe est générique et les lieux peuvent correspondre à des édifices ou à des lieux extérieurs. Il s’agit du lieu associé à une adresse, ou à des indications géographiques précises, qui serait présenté à un consommateur comme l’endroit où se présenter pour assister à une représentation.

| Propriété                                  | Description                                                                                                                                                                                                                                        | Priorité           | Type et définition                                                                |
| ------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------ | --------------------------------------------------------------------------------- |
| [type](#type )                             | -                                                                                                                                                                                                                                                  | Obligatoire        | -                                                                                 |
| [additionalType](#additionalType )         | Identification du type de lieu. Ne pas confondre avec les caractéristiques de la salle, qui doivent être documentées dans un objet de la classe Salle.                                                                                             | Optionnel          | [Term](../term )                                                       |
| [identifier](#identifier )                 | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.                                                                                                                  | Obligatoire (1..N) | [Identifiant](../identifier )                                          |
| [name](#name )                             | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)                                                                                                                                                        | Obligatoire        | [Texte court multilingue](../datatypes/text_short_multilingual )       |
| [description](#description )               | Énumération de textes longs associés à un code de langue au standard ISO 639-1.                                                                                                                                                                    | Optionnel          | [Texte long multilingue](../datatypes/text_long_multilingual )         |
| [virtualPlace](#virtualPlace )             | -                                                                                                                                                                                                                                                  | Obligatoire        | -                                                                                 |
| [inRoom](#inRoom )                         | Énumération des salles présentes dans le lieu. Recommandé pour les lieux contenant plusieurs salles, ou pour documenter des informations associés à la classe Salle (par exemple, les configurations possibles) dans un lieu avec une seule salle. | Optionnel (0..N)   | Tableau d'objets de type [Salle (Room)](../room )                      |
| [address](#address )                       | Coordonnées complètes du lieu.                                                                                                                                                                                                                     | Optionnel          | [Postal Address](../postal_address )                                   |
| [mainEntityOfPage](#mainEntityOfPage )     | URL vers des pages web donnant plus d'information sur le lieu.                                                                                                                                                                                     | Optionnel (0..N)   | Tableau d'objets de type [WebPage](../web_page )                       |
| [placeAccessibility](#placeAccessibility ) | Caractéristiques d'accessibilité universelle pour le lieu. Des caractéristiques supplémentaires pourraient être documentées pour la ou les salles.                                                                                                 | Optionnel (0..N)   | Tableau d'objets de type [additionalType](../term )                    |
| [geoCoordinates](#geoCoordinates )         | Coordonnées géographiques                                                                                                                                                                                                                          | Optionnel          | [Coordonnées géographiques d'un point.](../datatypes/geo_coordinates ) |

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

## <a name="additionalType"></a>2. Propriété `Lieu (Place) > additionalType`

**Nom:** Term

|                               |                                      |
| ----------------------------- | ------------------------------------ |
| **Type**                      | `object`                             |
| **Requis**                    | Non                                  |
| **Propriétés additionnelles** | Tout type permis                     |
| **Défini dans**               | [additionalType](../term) |

**Description:** Identification du type de lieu. Ne pas confondre avec les caractéristiques de la salle, qui doivent être documentées dans un objet de la classe Salle.

[Voir la documentation de Term](../term)

## <a name="identifier"></a>3. Propriété `Lieu (Place) > identifier`

**Nom:** Identifiant

|                 |                                        |
| --------------- | -------------------------------------- |
| **Type**        | `array`                                |
| **Requis**      | Oui                                    |
| **Défini dans** | [identifier](../identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

[Voir la documentation de Identifiant](../identifier)

## <a name="name"></a>4. Propriété `Lieu (Place) > name`

**Nom:** Texte court multilingue

|                         |                                |
| ----------------------- | ------------------------------ |
| **Type**                | `array of object`              |
| **Requis**              | Oui                            |
| **Même définition que** | [label](#additionalType_label) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

## <a name="description"></a>5. Propriété `Lieu (Place) > description`

**Nom:** Texte long multilingue

|                 |                                                               |
| --------------- | ------------------------------------------------------------- |
| **Type**        | `array of object`                                             |
| **Requis**      | Non                                                           |
| **Défini dans** | [description](../datatypes/text_long_multilingual) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

[Voir la documentation de Texte long multilingue](../datatypes/text_long_multilingual)

## <a name="virtualPlace"></a>6. Propriété `Lieu (Place) > virtualPlace`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

## <a name="inRoom"></a>7. Propriété `Lieu (Place) > inRoom`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Énumération des salles présentes dans le lieu. Recommandé pour les lieux contenant plusieurs salles, ou pour documenter des informations associés à la classe Salle (par exemple, les configurations possibles) dans un lieu avec une seule salle.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être | Description                                                                                                                                             |
| -------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Salle (Room)](#inRoom_items)    | Certains lieux contiennent plusieurs salles. Cette classe permet de préciser et décrire la salle utilisée dans le contexte d’une représentation donnée. |

### <a name="inRoom_items"></a>7.1. Lieu (Place) > inRoom > Salle (Room)

**Nom:** Salle (Room)

|                               |                                    |
| ----------------------------- | ---------------------------------- |
| **Type**                      | `object`                           |
| **Requis**                    | Non                                |
| **Propriétés additionnelles** | Tout type permis                   |
| **Défini dans**               | [Salle (Room)](../room) |

**Description:** Certains lieux contiennent plusieurs salles. Cette classe permet de préciser et décrire la salle utilisée dans le contexte d’une représentation donnée.

[Voir la documentation de Salle (Room)](../room)

## <a name="address"></a>8. Propriété `Lieu (Place) > address`

**Nom:** Postal Address

|                               |                                  |
| ----------------------------- | -------------------------------- |
| **Type**                      | `object`                         |
| **Requis**                    | Non                              |
| **Propriétés additionnelles** | Tout type permis                 |
| **Même définition que**       | [address](#inRoom_items_address) |

**Description:** Coordonnées complètes du lieu.

## <a name="mainEntityOfPage"></a>9. Propriété `Lieu (Place) > mainEntityOfPage`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** URL vers des pages web donnant plus d'information sur le lieu.

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

**Nom:** WebPage

|                               |                                   |
| ----------------------------- | --------------------------------- |
| **Type**                      | `object`                          |
| **Requis**                    | Non                               |
| **Propriétés additionnelles** | Tout type permis                  |
| **Défini dans**               | [WebPage](../web_page) |

[Voir la documentation de WebPage](../web_page)

## <a name="placeAccessibility"></a>10. Propriété `Lieu (Place) > placeAccessibility`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Caractéristiques d'accessibilité universelle pour le lieu. Des caractéristiques supplémentaires pourraient être documentées pour la ou les salles.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être  | Description                                                                             |
| --------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#placeAccessibility_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="placeAccessibility_items"></a>10.1. Lieu (Place) > placeAccessibility > Term

**Nom:** Term

|                               |                                   |
| ----------------------------- | --------------------------------- |
| **Type**                      | `object`                          |
| **Requis**                    | Non                               |
| **Propriétés additionnelles** | Tout type permis                  |
| **Même définition que**       | [additionalType](#additionalType) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

## <a name="geoCoordinates"></a>11. Propriété `Lieu (Place) > geoCoordinates`

**Nom:** Coordonnées géographiques d'un point.

|                               |                                                           |
| ----------------------------- | --------------------------------------------------------- |
| **Type**                      | `object`                                                  |
| **Requis**                    | Non                                                       |
| **Propriétés additionnelles** | Tout type permis                                          |
| **Défini dans**               | [geoCoordinates](../datatypes/geo_coordinates) |

**Description:** Coordonnées géographiques

[Voir la documentation de Coordonnées géographiques d'un point.](../datatypes/geo_coordinates)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-02-02 at 16:58:12 -0500
