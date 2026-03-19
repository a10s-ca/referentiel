# Salle (Room)

Certains lieux contiennent plusieurs salles. Cette classe permet de préciser et décrire la salle utilisée dans le contexte d’une représentation donnée.

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Propriété                                                                | Description                                                                                                                                                      | Priorité           | Type et définition                                                                   |
| ------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------ | ------------------------------------------------------------------------------------ |
| [type](#type )                                                           | -                                                                                                                                                                | Obligatoire        | const                                                                                |
| [identifier](#identifier )<br/>_Identifiant_                             | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.                                | Obligatoire (1..N) | [Identifiant (Identifier)](../identifier )                                |
| [name](#name )<br/>_Nom_                                                 | Nom de la salle, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. | Optionnel          | [Texte court multilingue](../datatypes/text_short_multilingual )          |
| [nameSameAsPlace](#nameSameAsPlace )<br/>_Nom identique au lieu_         | -                                                                                                                                                                | Obligatoire        | boolean                                                                              |
| [description](#description )<br/>_Description_                           | Énumération de textes longs associés à un code de langue au standard ISO 639-1.                                                                                  | Optionnel          | [Texte long multilingue](../datatypes/text_long_multilingual )            |
| [shortDescription](#shortDescription )<br/>_Description courte_          | Description résumée de la salle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.                   | Optionnel          | [Texte long multilingue](../datatypes/text_long_multilingual )            |
| [media](#media )<br/>_Médias_                                            | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au lieux.                                                                        | Optionnel (0..N)   | Tableau d'objets de type [Média (Media)](../media )                       |
| [inPlace](#inPlace )<br/>_Lieu_                                          | Lieu associé à l'offre (physique ou virtuel).                                                                                                                    | Optionnel          | [Lieu (Place)](../place )                                                 |
| [address](#address )<br/>_Adresse_                                       | Coordonnées complètes de la salle, lorsque les coordonnées de la salle sont différentes ou plus précises que celles du lieu.                                     | Optionnel          | [Adresse postale (Postal Address)](../postal_address )                    |
| [roomAccessibility](#roomAccessibility )<br/>_Accessibilité de la salle_ | Caractéristiques d'accessibilité universelle pour la salle.<br /><br />[Voir le vocabulaire suggéré](../vocabularies/accessibiliteUniversellesTermes/)           | Optionnel (0..N)   | Tableau d'objets de type [additionalType](../term )                       |
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

## <a name="identifier"></a>2. Propriété `Salle (Room) > identifier` (Identifiant)

Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

|                 |                                        |
| --------------- | -------------------------------------- |
| **Type**        | `array`                                |
| **Requis**      | Oui                                    |
| **Défini dans** | [identifier](../identifier) |

[Voir la documentation de Identifiant (Identifier)](../identifier)

## <a name="name"></a>3. Propriété `Salle (Room) > name` (Nom)

Nom de la salle, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels.

|                 |                                                         |
| --------------- | ------------------------------------------------------- |
| **Type**        | `array of object`                                       |
| **Requis**      | Non                                                     |
| **Défini dans** | [name](../datatypes/text_short_multilingual) |

[Voir la documentation de Texte court multilingue](../datatypes/text_short_multilingual)

## <a name="nameSameAsPlace"></a>4. Propriété `Salle (Room) > nameSameAsPlace` (Nom identique au lieu)

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

## <a name="description"></a>5. Propriété `Salle (Room) > description` (Description)

Énumération de textes longs associés à un code de langue au standard ISO 639-1.

|                 |                                                               |
| --------------- | ------------------------------------------------------------- |
| **Type**        | `array of object`                                             |
| **Requis**      | Non                                                           |
| **Défini dans** | [description](../datatypes/text_long_multilingual) |

[Voir la documentation de Texte long multilingue](../datatypes/text_long_multilingual)

## <a name="shortDescription"></a>6. Propriété `Salle (Room) > shortDescription` (Description courte)

Description résumée de la salle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.

|                 |                                                               |
| --------------- | ------------------------------------------------------------- |
| **Type**        | `array of object`                                             |
| **Requis**      | Non                                                           |
| **Défini dans** | [description](../datatypes/text_long_multilingual) |

[Voir la documentation de Texte long multilingue](../datatypes/text_long_multilingual)

## <a name="media"></a>7. Propriété `Salle (Room) > media` (Médias)

Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au lieux.

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

| Chaque item du tableau doit être | Description                                                                                          |
| -------------------------------- | ---------------------------------------------------------------------------------------------------- |
| [Média (Media)](#media_items)    | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

### <a name="media_items"></a>7.1. Salle (Room) > media > Média (Media)

Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

|                               |                                      |
| ----------------------------- | ------------------------------------ |
| **Type**                      | `object`                             |
| **Requis**                    | Non                                  |
| **Propriétés additionnelles** | Tout type permis                     |
| **Défini dans**               | [Média (Media)](../media) |

[Voir la documentation de Média (Media)](../media)

## <a name="inPlace"></a>8. Propriété `Salle (Room) > inPlace` (Lieu)

Lieu associé à l'offre (physique ou virtuel).

|                               |                                |
| ----------------------------- | ------------------------------ |
| **Type**                      | `object`                       |
| **Requis**                    | Non                            |
| **Propriétés additionnelles** | Tout type permis               |
| **Défini dans**               | [inPlace](../place) |

[Voir la documentation de Lieu (Place)](../place)

## <a name="address"></a>9. Propriété `Salle (Room) > address` (Adresse)

Coordonnées complètes de la salle, lorsque les coordonnées de la salle sont différentes ou plus précises que celles du lieu.

|                               |                                         |
| ----------------------------- | --------------------------------------- |
| **Type**                      | `object`                                |
| **Requis**                    | Non                                     |
| **Propriétés additionnelles** | Tout type permis                        |
| **Défini dans**               | [address](../postal_address) |

[Voir la documentation de Adresse postale (Postal Address)](../postal_address)

## <a name="roomAccessibility"></a>10. Propriété `Salle (Room) > roomAccessibility` (Accessibilité de la salle)

Caractéristiques d'accessibilité universelle pour la salle.

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

| Chaque item du tableau doit être         | Description                                                                             |
| ---------------------------------------- | --------------------------------------------------------------------------------------- |
| [Terme (Term)](#roomAccessibility_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="roomAccessibility_items"></a>10.1. Salle (Room) > roomAccessibility > Terme (Term)

Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

|                               |                                           |
| ----------------------------- | ----------------------------------------- |
| **Type**                      | `object`                                  |
| **Requis**                    | Non                                       |
| **Propriétés additionnelles** | Tout type permis                          |
| **Même définition que**       | [additionalType](#inPlace_additionalType) |

## <a name="roomConfiguration"></a>11. Propriété `Salle (Room) > roomConfiguration` (Configuration de la salle)

Précisions sur les configurations possibles de la salle.

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

| Chaque item du tableau doit être                   | Description                                           |
| -------------------------------------------------- | ----------------------------------------------------- |
| [Configuration de salle](#roomConfiguration_items) | Précisions sur un configuration possible de la salle. |

### <a name="roomConfiguration_items"></a>11.1. Salle (Room) > roomConfiguration > Configuration de salle

Précisions sur un configuration possible de la salle.

|                               |                                                            |
| ----------------------------- | ---------------------------------------------------------- |
| **Type**                      | `object`                                                   |
| **Requis**                    | Non                                                        |
| **Propriétés additionnelles** | Tout type permis                                           |
| **Défini dans**               | [Configuration de salle](../room_specification) |

[Voir la documentation de Configuration de salle](../room_specification)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-03-19 at 15:44:03 -0400
