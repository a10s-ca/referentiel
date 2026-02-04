# Salle (Room)

**Nom:** Salle (Room)

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

**Description:** Certains lieux contiennent plusieurs salles. Cette classe permet de préciser et décrire la salle utilisée dans le contexte d’une représentation donnée.

| Propriété                                                                | Description                                                                                                                                                      | Priorité           | Type et définition                                                                   |
| ------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------ | ------------------------------------------------------------------------------------ |
| [type](#type )                                                           | -                                                                                                                                                                | Obligatoire        | const                                                                                |
| [identifier](#identifier )<br/>_Identifiant_                             | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.                                | Obligatoire (1..N) | [Identifiant](../identifier )                                             |
| [name](#name )<br/>_Nom_                                                 | Nom de la salle, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. | Optionnel          | [Texte court multilingue](../datatypes/text_short_multilingual )          |
| [nameSameAsPlace](#nameSameAsPlace )<br/>_Nom identique au lieu_         | -                                                                                                                                                                | Obligatoire        | boolean                                                                              |
| [description](#description )<br/>_Description_                           | Énumération de textes longs associés à un code de langue au standard ISO 639-1.                                                                                  | Optionnel          | [Texte long multilingue](../datatypes/text_long_multilingual )            |
| [shortDescription](#shortDescription )<br/>_Description courte_          | Description résumée de la salle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.                   | Optionnel          | [Texte long multilingue](../datatypes/text_long_multilingual )            |
| [media](#media )<br/>_Médias_                                            | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au lieux.                                                                        | Optionnel (0..N)   | Tableau d'objets de type [Média](../media )                               |
| [inPlace](#inPlace )<br/>_Lieu_                                          | Lieu associé à l'offre (physique ou virtuel).                                                                                                                    | Optionnel          | [Lieu (Place)](../place )                                                 |
| [address](#address )<br/>_Adresse_                                       | Coordonnées complètes de la salle, lorsque les coordonnées de la salle sont différentes ou plus précises que celles du lieu.                                     | Optionnel          | [Postal Address](../postal_address )                                      |
| [roomAccessibility](#roomAccessibility )<br/>_Accessibilité de la salle_ | Caractéristiques d'accessibilité universelle pour la salle.                                                                                                      | Optionnel (0..N)   | Tableau d'objets de type [additionalType](../term )                       |
| [roomConfiguration](#roomConfiguration )<br/>_Configuration de la salle_ | Précisions sur les configurations possibles de la salle.                                                                                                         | Optionnel (0..N)   | Tableau d'objets de type [Configuration de salle](../room_specification ) |

Condition particulière:
si (nameSameAsPlace = false) alors :

- Les propriétés suivantes sont obligatoires :

    * name

## <a name="type"></a>1. Propriété `Salle (Room) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Room"`

## <a name="identifier"></a>2. Propriété `Salle (Room) > identifier`

**Nom:** Identifiant

|                 |                                        |
| --------------- | -------------------------------------- |
| **Type**        | `array`                                |
| **Requis**      | Oui                                    |
| **Défini dans** | [identifier](../identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

[Voir la documentation de Identifiant](../identifier)

## <a name="name"></a>3. Propriété `Salle (Room) > name`

**Nom:** Nom

|                 |                                                         |
| --------------- | ------------------------------------------------------- |
| **Type**        | `array of object`                                       |
| **Requis**      | Non                                                     |
| **Défini dans** | [name](../datatypes/text_short_multilingual) |

**Description:** Nom de la salle, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels.

[Voir la documentation de Texte court multilingue](../datatypes/text_short_multilingual)

## <a name="nameSameAsPlace"></a>4. Propriété `Salle (Room) > nameSameAsPlace`

**Nom:** Nom identique au lieu

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

## <a name="description"></a>5. Propriété `Salle (Room) > description`

**Nom:** Description

|                 |                                                               |
| --------------- | ------------------------------------------------------------- |
| **Type**        | `array of object`                                             |
| **Requis**      | Non                                                           |
| **Défini dans** | [description](../datatypes/text_long_multilingual) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

[Voir la documentation de Texte long multilingue](../datatypes/text_long_multilingual)

## <a name="shortDescription"></a>6. Propriété `Salle (Room) > shortDescription`

**Nom:** Description courte

|                 |                                                               |
| --------------- | ------------------------------------------------------------- |
| **Type**        | `array of object`                                             |
| **Requis**      | Non                                                           |
| **Défini dans** | [description](../datatypes/text_long_multilingual) |

**Description:** Description résumée de la salle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.

[Voir la documentation de Texte long multilingue](../datatypes/text_long_multilingual)

## <a name="media"></a>7. Propriété `Salle (Room) > media`

**Nom:** Médias

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au lieux.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être | Description                                                                                          |
| -------------------------------- | ---------------------------------------------------------------------------------------------------- |
| [Média](#media_items)            | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

### <a name="media_items"></a>7.1. Salle (Room) > media > Média

**Nom:** Média

|                               |                              |
| ----------------------------- | ---------------------------- |
| **Type**                      | `object`                     |
| **Requis**                    | Non                          |
| **Propriétés additionnelles** | Tout type permis             |
| **Défini dans**               | [Média](../media) |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

[Voir la documentation de Média](../media)

## <a name="inPlace"></a>8. Propriété `Salle (Room) > inPlace`

**Nom:** Lieu

|                               |                                |
| ----------------------------- | ------------------------------ |
| **Type**                      | `object`                       |
| **Requis**                    | Non                            |
| **Propriétés additionnelles** | Tout type permis               |
| **Défini dans**               | [inPlace](../place) |

**Description:** Lieu associé à l'offre (physique ou virtuel).

[Voir la documentation de Lieu (Place)](../place)

## <a name="address"></a>9. Propriété `Salle (Room) > address`

**Nom:** Adresse

|                               |                                         |
| ----------------------------- | --------------------------------------- |
| **Type**                      | `object`                                |
| **Requis**                    | Non                                     |
| **Propriétés additionnelles** | Tout type permis                        |
| **Défini dans**               | [address](../postal_address) |

**Description:** Coordonnées complètes de la salle, lorsque les coordonnées de la salle sont différentes ou plus précises que celles du lieu.

[Voir la documentation de Postal Address](../postal_address)

## <a name="roomAccessibility"></a>10. Propriété `Salle (Room) > roomAccessibility`

**Nom:** Accessibilité de la salle

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Caractéristiques d'accessibilité universelle pour la salle. 

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être | Description                                                                             |
| -------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#roomAccessibility_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="roomAccessibility_items"></a>10.1. Salle (Room) > roomAccessibility > Term

**Nom:** Term

|                               |                                           |
| ----------------------------- | ----------------------------------------- |
| **Type**                      | `object`                                  |
| **Requis**                    | Non                                       |
| **Propriétés additionnelles** | Tout type permis                          |
| **Même définition que**       | [additionalType](#inPlace_additionalType) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

## <a name="roomConfiguration"></a>11. Propriété `Salle (Room) > roomConfiguration`

**Nom:** Configuration de la salle

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Précisions sur les configurations possibles de la salle.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                   | Description                                           |
| -------------------------------------------------- | ----------------------------------------------------- |
| [Configuration de salle](#roomConfiguration_items) | Précisions sur un configuration possible de la salle. |

### <a name="roomConfiguration_items"></a>11.1. Salle (Room) > roomConfiguration > Configuration de salle

**Nom:** Configuration de salle

|                               |                                                            |
| ----------------------------- | ---------------------------------------------------------- |
| **Type**                      | `object`                                                   |
| **Requis**                    | Non                                                        |
| **Propriétés additionnelles** | Tout type permis                                           |
| **Défini dans**               | [Configuration de salle](../room_specification) |

**Description:** Précisions sur un configuration possible de la salle.

[Voir la documentation de Configuration de salle](../room_specification)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-02-04 at 16:37:16 -0500
