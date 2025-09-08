# Lieu (Place)

**Title:** Lieu (Place)

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Sert à décrire un lieu, typiquement associé à une représentation. La classe est générique et les lieux peuvent correspondre à des édifices ou à des lieux extérieurs. Il s’agit du lieu associé à une adresse, ou à des indications géographiques précises, qui serait présenté à un consommateur comme l’endroit où se présenter pour assister à une représentation.

| Property                                     | Title/Description                                                                                                                                                                                                                                  | Type            | Definition                                        |
| -------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | ------------------------------------------------- |
| + [type](#type )                             | -                                                                                                                                                                                                                                                  | const           | -                                                 |
| - [additionalType](#additionalType )         | Term                                                                                                                                                                                                                                               | object          | In ./utilities/term.schema.json                   |
| + [identifier](#identifier )                 | identifier                                                                                                                                                                                                                                         | array           | In ./utilities/identifier.schema.json             |
| + [name](#name )                             | Texte court multilingue                                                                                                                                                                                                                            | array of object | Same as [label](#additionalType_label )           |
| - [description](#description )               | Texte long multilingue                                                                                                                                                                                                                             | array of object | In ./datatypes/text_long_multilingual.schema.json |
| + [virtualPlace](#virtualPlace )             | -                                                                                                                                                                                                                                                  | boolean         | -                                                 |
| - [inRoom](#inRoom )                         | Énumération des salles présentes dans le lieu. Recommandé pour les lieux contenant plusieurs salles, ou pour documenter des informations associés à la classe Salle (par exemple, les configurations possibles) dans un lieu avec une seule salle. | array           | -                                                 |
| - [address](#address )                       | Postal Address                                                                                                                                                                                                                                     | object          | Same as [address](#inRoom_items_address )         |
| - [mainEntityOfPage](#mainEntityOfPage )     | URL vers des pages web donnant plus d'information sur le lieu.                                                                                                                                                                                     | array           | -                                                 |
| - [placeAccessibility](#placeAccessibility ) | Caractéristiques d'accessibilité universelle pour le lieu. Des caractéristiques supplémentaires pourraient être documentées pour la ou les salles.                                                                                                 | array           | -                                                 |
| - [geoCoordinates](#geoCoordinates )         | Coordonnées géographiques d'un point.                                                                                                                                                                                                              | object          | In ./datatypes/geo_coordinates.schema.json        |

## <a name="autogenerated_heading_2"></a>1. If (virtualPlace = false)

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

### <a name="autogenerated_heading_3"></a>1.1. The following properties are required
* type
* address

## <a name="type"></a>2. Property `Lieu (Place) > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Place"`

## <a name="additionalType"></a>3. Property `Lieu (Place) > additionalType`

**Title:** Term

|                           |                              |
| ------------------------- | ---------------------------- |
| **Type**                  | `object`                     |
| **Required**              | No                           |
| **Additional properties** | Any type allowed             |
| **Defined in**            | ./utilities/term.schema.json |

**Description:** Identification du type de lieu. Ne pas confondre avec les caractéristiques de la salle, qui doivent être documentées dans un objet de la classe Salle.

**Example:**

```json
{
    "type": "Term",
    "vocabulary": "datascene",
    "code": "ToutPublics",
    "version": "1.0",
    "sequenceNumber": 1
}
```

| Property                                            | Title/Description                                                                                        | Type            | Definition                                          |
| --------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------- |
| + [type](#additionalType_type )                     | -                                                                                                        | const           | -                                                   |
| + [vocabulary](#additionalType_vocabulary )         | Texte court                                                                                              | string          | In ../datatypes/text_short.schema.json              |
| - [version](#additionalType_version )               | Texte court                                                                                              | string          | Same as [vocabulary](#additionalType_vocabulary )   |
| + [code](#additionalType_code )                     | Texte court                                                                                              | string          | Same as [vocabulary](#additionalType_vocabulary )   |
| - [label](#additionalType_label )                   | Texte court multilingue                                                                                  | array of object | In ../datatypes/text_short_multilingual.schema.json |
| + [sequenceNumber](#additionalType_sequenceNumber ) | Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé). | integer         | -                                                   |

### <a name="additionalType_type"></a>3.1. Property `Lieu (Place) > additionalType > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Term"`

### <a name="additionalType_vocabulary"></a>3.2. Property `Lieu (Place) > additionalType > vocabulary`

**Title:** Texte court

|                |                                     |
| -------------- | ----------------------------------- |
| **Type**       | `string`                            |
| **Required**   | Yes                                 |
| **Defined in** | ../datatypes/text_short.schema.json |

**Description:** Identification du vocabulaire duquel est tiré le term.

Typiquement, cette identification correspond à l'appellation du vocabulaire dont l'usage est le plus fréquent, tout en minuscules, sans accents, et avec les espaces remplacés par des barres de soulignement.

| Restrictions                      |                                                                                                             |
| --------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Min length**                    | 1                                                                                                           |
| **Max length**                    | 500                                                                                                         |
| **Must match regular expression** | ```^(?!.*<[^>]+>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5E%3E%5D%2B%3E%29.%2A%24) |

### <a name="additionalType_version"></a>3.3. Property `Lieu (Place) > additionalType > version`

**Title:** Texte court

|                        |                                          |
| ---------------------- | ---------------------------------------- |
| **Type**               | `string`                                 |
| **Required**           | No                                       |
| **Same definition as** | [vocabulary](#additionalType_vocabulary) |

**Description:** Version du vocabulaire utilisé, lorsque c'est applicable

### <a name="additionalType_code"></a>3.4. Property `Lieu (Place) > additionalType > code`

**Title:** Texte court

|                        |                                          |
| ---------------------- | ---------------------------------------- |
| **Type**               | `string`                                 |
| **Required**           | Yes                                      |
| **Same definition as** | [vocabulary](#additionalType_vocabulary) |

**Description:** Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.

### <a name="additionalType_label"></a>3.5. Property `Lieu (Place) > additionalType > label`

**Title:** Texte court multilingue

|                |                                                  |
| -------------- | ------------------------------------------------ |
| **Type**       | `array of object`                                |
| **Required**   | No                                               |
| **Defined in** | ../datatypes/text_short_multilingual.schema.json |

**Description:** Version textuelle du terme tiré du vocabulaire choisi

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | True               |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be            | Description |
| ------------------------------------------ | ----------- |
| [label items](#additionalType_label_items) | -           |

#### <a name="additionalType_label_items"></a>3.5.1. Lieu (Place) > additionalType > label > label items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                                      | Title/Description | Type   | Definition                         |
| --------------------------------------------- | ----------------- | ------ | ---------------------------------- |
| + [lang](#additionalType_label_items_lang )   | Code de langue    | string | In ./partials/language.schema.json |
| + [value](#additionalType_label_items_value ) | Texte court       | string | In ./partials/no_html.schema.json  |

##### <a name="additionalType_label_items_lang"></a>3.5.1.1. Property `Lieu (Place) > additionalType > label > label items > lang`

**Title:** Code de langue

|                |                                 |
| -------------- | ------------------------------- |
| **Type**       | `string`                        |
| **Required**   | Yes                             |
| **Defined in** | ./partials/language.schema.json |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

**Examples:**

```json
"fr"
```

```json
"en"
```

```json
"mul"
```

| Restrictions                      |                                                                                                       |
| --------------------------------- | ----------------------------------------------------------------------------------------------------- |
| **Min length**                    | 2                                                                                                     |
| **Must match regular expression** | ```^[a-z]{2,3}$``` [Test](https://regex101.com/?regex=%5E%5Ba-z%5D%7B2%2C3%7D%24&testString=%22fr%22) |

##### <a name="additionalType_label_items_value"></a>3.5.1.2. Property `Lieu (Place) > additionalType > label > label items > value`

**Title:** Texte court

|                |                                |
| -------------- | ------------------------------ |
| **Type**       | `string`                       |
| **Required**   | Yes                            |
| **Defined in** | ./partials/no_html.schema.json |

**Description:** HTML non-autorisées

| Restrictions                      |                                                                                                             |
| --------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Min length**                    | 1                                                                                                           |
| **Max length**                    | 500                                                                                                         |
| **Must match regular expression** | ```^(?!.*<[^>]+>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5E%3E%5D%2B%3E%29.%2A%24) |

### <a name="additionalType_sequenceNumber"></a>3.6. Property `Lieu (Place) > additionalType > sequenceNumber`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | Yes       |

**Description:** Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).

## <a name="identifier"></a>4. Property `Lieu (Place) > identifier`

**Title:** identifier

|                |                                    |
| -------------- | ---------------------------------- |
| **Type**       | `array`                            |
| **Required**   | Yes                                |
| **Defined in** | ./utilities/identifier.schema.json |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

**Examples:**

```json
{
    "type": "PropertyValue",
    "propertyID": "isni",
    "valeur": "000000012124423X"
}
```

```json
"https://isni.org/isni/000000012124423X"
```

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | 1                  |
| **Max items**        | N/A                |
| **Items unicity**    | True               |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be       | Description |
| ------------------------------------- | ----------- |
| [identifier items](#identifier_items) | -           |

### <a name="identifier_items"></a>4.1. Lieu (Place) > identifier > identifier items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Any of(Option)                       |
| ------------------------------------ |
| [item 0](#identifier_items_anyOf_i0) |
| [item 1](#identifier_items_anyOf_i1) |

#### <a name="identifier_items_anyOf_i0"></a>4.1.1. Property `Lieu (Place) > identifier > identifier items > anyOf > item 0`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                               | Title/Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Type   | Definition |
| ------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------ | ---------- |
| + [type](#identifier_items_anyOf_i0_type )             | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | const  | -          |
| + [propertyID](#identifier_items_anyOf_i0_propertyID ) | Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles. | string | -          |
| + [value](#identifier_items_anyOf_i0_value )           | L'identifiant lui-même                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | string | -          |

##### <a name="identifier_items_anyOf_i0_type"></a>4.1.1.1. Property `Lieu (Place) > identifier > identifier items > anyOf > item 0 > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"PropertyValue"`

##### <a name="identifier_items_anyOf_i0_propertyID"></a>4.1.1.2. Property `Lieu (Place) > identifier > identifier items > anyOf > item 0 > propertyID`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles.

| Restrictions   |   |
| -------------- | - |
| **Min length** | 1 |

##### <a name="identifier_items_anyOf_i0_value"></a>4.1.1.3. Property `Lieu (Place) > identifier > identifier items > anyOf > item 0 > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** L'identifiant lui-même

| Restrictions   |   |
| -------------- | - |
| **Min length** | 1 |

#### <a name="identifier_items_anyOf_i1"></a>4.1.2. Property `Lieu (Place) > identifier > identifier items > anyOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |
| **Format**   | `uri`    |

**Description:** Un identifiant URI sous forme de chaîne de caractères.

## <a name="name"></a>5. Property `Lieu (Place) > name`

**Title:** Texte court multilingue

|                        |                                |
| ---------------------- | ------------------------------ |
| **Type**               | `array of object`              |
| **Required**           | Yes                            |
| **Same definition as** | [label](#additionalType_label) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

## <a name="description"></a>6. Property `Lieu (Place) > description`

**Title:** Texte long multilingue

|                |                                                |
| -------------- | ---------------------------------------------- |
| **Type**       | `array of object`                              |
| **Required**   | No                                             |
| **Defined in** | ./datatypes/text_long_multilingual.schema.json |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | 1                  |
| **Max items**        | N/A                |
| **Items unicity**    | True               |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be         | Description |
| --------------------------------------- | ----------- |
| [description items](#description_items) | -           |

### <a name="description_items"></a>6.1. Lieu (Place) > description > description items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                             | Title/Description | Type   | Definition                                        |
| ------------------------------------ | ----------------- | ------ | ------------------------------------------------- |
| + [lang](#description_items_lang )   | Code de langue    | string | Same as [lang](#additionalType_label_items_lang ) |
| + [value](#description_items_value ) | Texte long        | string | In ./partials/authorized_html.schema.json         |

#### <a name="description_items_lang"></a>6.1.1. Property `Lieu (Place) > description > description items > lang`

**Title:** Code de langue

|                        |                                          |
| ---------------------- | ---------------------------------------- |
| **Type**               | `string`                                 |
| **Required**           | Yes                                      |
| **Same definition as** | [lang](#additionalType_label_items_lang) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

#### <a name="description_items_value"></a>6.1.2. Property `Lieu (Place) > description > description items > value`

**Title:** Texte long

|                |                                        |
| -------------- | -------------------------------------- |
| **Type**       | `string`                               |
| **Required**   | Yes                                    |
| **Defined in** | ./partials/authorized_html.schema.json |

**Description:** Texte long avec formatage, incluant des paragraphes et des balises HTML autorisées b, i, u, sup et sub.

**Examples:**

```json
"<b>Texte en gras</b>"
```

```json
"<i>Texte en italique</i>"
```

```json
"<u>Texte souligné</u>"
```

```json
"<sup>Texte en exposant</sup>"
```

```json
"<sub>Texte en indice</sub>"
```

| Restrictions                      |                                                                                                                                                                                                                                                                                                 |
| --------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Max length**                    | 6000                                                                                                                                                                                                                                                                                            |
| **Must match regular expression** | ```^(?!.*<[^bius][^>]*>)(?!.*</?(?!b\|i\|u\|sup\|sub)[^>]*>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5Ebius%5D%5B%5E%3E%5D%2A%3E%29%28%3F%21.%2A%3C%2F%3F%28%3F%21b%7Ci%7Cu%7Csup%7Csub%29%5B%5E%3E%5D%2A%3E%29.%2A%24&testString=%22%3Cb%3ETexte+en+gras%3C%2Fb%3E%22) |

## <a name="virtualPlace"></a>7. Property `Lieu (Place) > virtualPlace`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | Yes       |

## <a name="inRoom"></a>8. Property `Lieu (Place) > inRoom`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Énumération des salles présentes dans le lieu. Recommandé pour les lieux contenant plusieurs salles, ou pour documenter des informations associés à la classe Salle (par exemple, les configurations possibles) dans un lieu avec une seule salle.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be | Description                                                                                                                                             |
| ------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Salle (Room)](#inRoom_items)   | Certains lieux contiennent plusieurs salles. Cette classe permet de préciser et décrire la salle utilisée dans le contexte d’une représentation donnée. |

### <a name="inRoom_items"></a>8.1. Lieu (Place) > inRoom > Salle (Room)

**Title:** Salle (Room)

|                           |                    |
| ------------------------- | ------------------ |
| **Type**                  | `object`           |
| **Required**              | No                 |
| **Additional properties** | Any type allowed   |
| **Defined in**            | ./room.schema.json |

**Description:** Certains lieux contiennent plusieurs salles. Cette classe permet de préciser et décrire la salle utilisée dans le contexte d’une représentation donnée.

| Property                                                | Title/Description                                                                         | Type            | Definition                                |
| ------------------------------------------------------- | ----------------------------------------------------------------------------------------- | --------------- | ----------------------------------------- |
| + [type](#inRoom_items_type )                           | -                                                                                         | const           | -                                         |
| + [identifier](#inRoom_items_identifier )               | identifier                                                                                | array           | Same as [identifier](#identifier )        |
| - [name](#inRoom_items_name )                           | Texte court multilingue                                                                   | array of object | Same as [label](#additionalType_label )   |
| + [nameSameAsPlace](#inRoom_items_nameSameAsPlace )     | -                                                                                         | boolean         | -                                         |
| - [description](#inRoom_items_description )             | Texte long multilingue                                                                    | array of object | Same as [description](#description )      |
| - [shortDescription](#inRoom_items_shortDescription )   | Texte long multilingue                                                                    | array of object | Same as [description](#description )      |
| - [media](#inRoom_items_media )                         | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au lieux. | array           | -                                         |
| - [inPlace](#inRoom_items_inPlace )                     | Lieu (Place)                                                                              | object          | Same as [Lieu (Place)](#root )            |
| - [address](#inRoom_items_address )                     | Postal Address                                                                            | object          | In ./utilities/postal_address.schema.json |
| - [roomAccessibility](#inRoom_items_roomAccessibility ) | Caractéristiques d'accessibilité universelle pour la salle.                               | array           | -                                         |
| - [roomConfiguration](#inRoom_items_roomConfiguration ) | Précisions sur les configurations possibles de la salle.                                  | array           | -                                         |

#### <a name="autogenerated_heading_4"></a>8.1.1. If (nameSameAsPlace = false)

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

##### <a name="autogenerated_heading_5"></a>8.1.1.1. The following properties are required
* name

#### <a name="inRoom_items_type"></a>8.1.2. Property `Lieu (Place) > inRoom > Salle (Room) > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Room"`

#### <a name="inRoom_items_identifier"></a>8.1.3. Property `Lieu (Place) > inRoom > Salle (Room) > identifier`

**Title:** identifier

|                        |                           |
| ---------------------- | ------------------------- |
| **Type**               | `array`                   |
| **Required**           | Yes                       |
| **Same definition as** | [identifier](#identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

#### <a name="inRoom_items_name"></a>8.1.4. Property `Lieu (Place) > inRoom > Salle (Room) > name`

**Title:** Texte court multilingue

|                        |                                |
| ---------------------- | ------------------------------ |
| **Type**               | `array of object`              |
| **Required**           | No                             |
| **Same definition as** | [label](#additionalType_label) |

**Description:** Nom de la salle, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels.

#### <a name="inRoom_items_nameSameAsPlace"></a>8.1.5. Property `Lieu (Place) > inRoom > Salle (Room) > nameSameAsPlace`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | Yes       |

#### <a name="inRoom_items_description"></a>8.1.6. Property `Lieu (Place) > inRoom > Salle (Room) > description`

**Title:** Texte long multilingue

|                        |                             |
| ---------------------- | --------------------------- |
| **Type**               | `array of object`           |
| **Required**           | No                          |
| **Same definition as** | [description](#description) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

#### <a name="inRoom_items_shortDescription"></a>8.1.7. Property `Lieu (Place) > inRoom > Salle (Room) > shortDescription`

**Title:** Texte long multilingue

|                        |                             |
| ---------------------- | --------------------------- |
| **Type**               | `array of object`           |
| **Required**           | No                          |
| **Same definition as** | [description](#description) |

**Description:** Description résumée de la salle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.

#### <a name="inRoom_items_media"></a>8.1.8. Property `Lieu (Place) > inRoom > Salle (Room) > media`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au lieux.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be    | Description                                                                                          |
| ---------------------------------- | ---------------------------------------------------------------------------------------------------- |
| [Média](#inRoom_items_media_items) | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

##### <a name="inRoom_items_media_items"></a>8.1.8.1. Lieu (Place) > inRoom > Salle (Room) > media > Média

**Title:** Média

|                           |                               |
| ------------------------- | ----------------------------- |
| **Type**                  | `object`                      |
| **Required**              | No                            |
| **Additional properties** | Any type allowed              |
| **Defined in**            | ./utilities/media.schema.json |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

| Property                                                        | Title/Description                                                                                                                                                                                                                              | Type            | Definition                                        |
| --------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | ------------------------------------------------- |
| + [type](#inRoom_items_media_items_type )                       | -                                                                                                                                                                                                                                              | const           | -                                                 |
| - [sequenceNumber](#inRoom_items_media_items_sequenceNumber )   | Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                       | integer         | -                                                 |
| - [usageNote](#inRoom_items_media_items_usageNote )             | Texte court                                                                                                                                                                                                                                    | string          | Same as [vocabulary](#additionalType_vocabulary ) |
| + [url](#inRoom_items_media_items_url )                         | URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible                                                                                     | string          | -                                                 |
| - [inLanguage](#inRoom_items_media_items_inLanguage )           | Code de langue                                                                                                                                                                                                                                 | string          | Same as [lang](#additionalType_label_items_lang ) |
| - [license](#inRoom_items_media_items_license )                 | Licence d'utilisation du média. Une valeur vide ou non définie correspond à un média libre de droits. Si des conditions s'appliquent, elles doivent être définies dans cette propriété, ou sur le web à une URL intégrée dans cette propriété. | array           | -                                                 |
| - [creditText](#inRoom_items_media_items_creditText )           | Crédits associés au média.                                                                                                                                                                                                                     | array           | -                                                 |
| - [copyrightHolder](#inRoom_items_media_items_copyrightHolder ) | Texte court multilingue                                                                                                                                                                                                                        | array of object | Same as [label](#additionalType_label )           |
| - [description](#inRoom_items_media_items_description )         | Description courte (pouvant par exemple servir de «alt description» sur le web).                                                                                                                                                               | array           | -                                                 |

###### <a name="inRoom_items_media_items_type"></a>8.1.8.1.1. Property `Lieu (Place) > inRoom > Salle (Room) > media > Média > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Media"`

###### <a name="inRoom_items_media_items_sequenceNumber"></a>8.1.8.1.2. Property `Lieu (Place) > inRoom > Salle (Room) > media > Média > sequenceNumber`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).

###### <a name="inRoom_items_media_items_usageNote"></a>8.1.8.1.3. Property `Lieu (Place) > inRoom > Salle (Room) > media > Média > usageNote`

**Title:** Texte court

|                        |                                          |
| ---------------------- | ---------------------------------------- |
| **Type**               | `string`                                 |
| **Required**           | No                                       |
| **Same definition as** | [vocabulary](#additionalType_vocabulary) |

**Description:** Texte libre permettant d'identifier les usages possibles du média (à l'intention des opérateurs des systèmes, pas du grand public, et donc pas pour publication).

###### <a name="inRoom_items_media_items_url"></a>8.1.8.1.4. Property `Lieu (Place) > inRoom > Salle (Room) > media > Média > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |
| **Format**   | `uri`    |

**Description:** URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible

###### <a name="inRoom_items_media_items_inLanguage"></a>8.1.8.1.5. Property `Lieu (Place) > inRoom > Salle (Room) > media > Média > inLanguage`

**Title:** Code de langue

|                        |                                          |
| ---------------------- | ---------------------------------------- |
| **Type**               | `string`                                 |
| **Required**           | No                                       |
| **Same definition as** | [lang](#additionalType_label_items_lang) |

**Description:** Langue au format ISO 639-1.

###### <a name="inRoom_items_media_items_license"></a>8.1.8.1.6. Property `Lieu (Place) > inRoom > Salle (Room) > media > Média > license`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Licence d'utilisation du média. Une valeur vide ou non définie correspond à un média libre de droits. Si des conditions s'appliquent, elles doivent être définies dans cette propriété, ou sur le web à une URL intégrée dans cette propriété.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                    | Description                                                                                 |
| ------------------------------------------------------------------ | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#inRoom_items_media_items_license_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

###### <a name="inRoom_items_media_items_license_items"></a>8.1.8.1.6.1. Lieu (Place) > inRoom > Salle (Room) > media > Média > license > Texte court multilingue

**Title:** Texte court multilingue

|                        |                                |
| ---------------------- | ------------------------------ |
| **Type**               | `array of object`              |
| **Required**           | No                             |
| **Same definition as** | [label](#additionalType_label) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

###### <a name="inRoom_items_media_items_creditText"></a>8.1.8.1.7. Property `Lieu (Place) > inRoom > Salle (Room) > media > Média > creditText`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Crédits associés au média.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                       | Description                                                                                 |
| --------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#inRoom_items_media_items_creditText_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

###### <a name="inRoom_items_media_items_creditText_items"></a>8.1.8.1.7.1. Lieu (Place) > inRoom > Salle (Room) > media > Média > creditText > Texte court multilingue

**Title:** Texte court multilingue

|                        |                                |
| ---------------------- | ------------------------------ |
| **Type**               | `array of object`              |
| **Required**           | No                             |
| **Same definition as** | [label](#additionalType_label) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

###### <a name="inRoom_items_media_items_copyrightHolder"></a>8.1.8.1.8. Property `Lieu (Place) > inRoom > Salle (Room) > media > Média > copyrightHolder`

**Title:** Texte court multilingue

|                        |                                |
| ---------------------- | ------------------------------ |
| **Type**               | `array of object`              |
| **Required**           | No                             |
| **Same definition as** | [label](#additionalType_label) |

**Description:** Personne ou organisation détenant les droits d'auteur du média.

###### <a name="inRoom_items_media_items_description"></a>8.1.8.1.9. Property `Lieu (Place) > inRoom > Salle (Room) > media > Média > description`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Description courte (pouvant par exemple servir de «alt description» sur le web).

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                       | Description                                                                     |
| --------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| [Texte long multilingue](#inRoom_items_media_items_description_items) | Énumération de textes longs associés à un code de langue au standard ISO 639-1. |

###### <a name="inRoom_items_media_items_description_items"></a>8.1.8.1.9.1. Lieu (Place) > inRoom > Salle (Room) > media > Média > description > Texte long multilingue

**Title:** Texte long multilingue

|                        |                             |
| ---------------------- | --------------------------- |
| **Type**               | `array of object`           |
| **Required**           | No                          |
| **Same definition as** | [description](#description) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

#### <a name="inRoom_items_inPlace"></a>8.1.9. Property `Lieu (Place) > inRoom > Salle (Room) > inPlace`

**Title:** Lieu (Place)

|                           |                       |
| ------------------------- | --------------------- |
| **Type**                  | `object`              |
| **Required**              | No                    |
| **Additional properties** | Any type allowed      |
| **Same definition as**    | [Lieu (Place)](#root) |

**Description:** Lieu associé à l'offre (physique ou virtuel).

#### <a name="inRoom_items_address"></a>8.1.10. Property `Lieu (Place) > inRoom > Salle (Room) > address`

**Title:** Postal Address

|                           |                                        |
| ------------------------- | -------------------------------------- |
| **Type**                  | `object`                               |
| **Required**              | No                                     |
| **Additional properties** | Any type allowed                       |
| **Defined in**            | ./utilities/postal_address.schema.json |

**Description:** Coordonnées complètes de la salle, lorsque les coordonnées de la salle sont différentes ou plus précises que celles du lieu.

| Property                                                    | Title/Description                                                                                  | Type   | Definition                                        |
| ----------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | ------ | ------------------------------------------------- |
| + [type](#inRoom_items_address_type )                       | -                                                                                                  | const  | -                                                 |
| + [streetAddress](#inRoom_items_address_streetAddress )     | Texte court                                                                                        | string | Same as [vocabulary](#additionalType_vocabulary ) |
| + [addressLocality](#inRoom_items_address_addressLocality ) | Texte court                                                                                        | string | Same as [vocabulary](#additionalType_vocabulary ) |
| + [addressRegion](#inRoom_items_address_addressRegion )     | Abréviation des noms de provinces recommandés par Postes Canada, ou une région dans un autre pays. | string | -                                                 |
| + [addressCountry](#inRoom_items_address_addressCountry )   | Code Pays                                                                                          | string | In ../datatypes/country_code.schema.json          |
| + [postalCode](#inRoom_items_address_postalCode )           | Code Postal Canadien                                                                               | string | In ../datatypes/canada_postal_code.schema.json    |

##### <a name="autogenerated_heading_6"></a>8.1.10.1. If (addressCountry = "CAN")

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                     | Title/Description | Type             | Definition |
| ------------------------------------------------------------ | ----------------- | ---------------- | ---------- |
| - [addressRegion](#inRoom_items_address_then_addressRegion ) | -                 | enum (of string) | -          |

###### <a name="inRoom_items_address_then_addressRegion"></a>8.1.10.1.1. Property `Lieu (Place) > inRoom > Salle (Room) > address > then > addressRegion`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

Must be one of:
* "AB"
* "BC"
* "MB"
* "NB"
* "NL"
* "NS"
* "NT"
* "NU"
* "ON"
* "PE"
* "QC"
* "SK"
* "YT"

##### <a name="autogenerated_heading_7"></a>8.1.10.2. Else (i.e.  addressCountry != "CAN")

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                     | Title/Description                                                                                          | Type   | Definition |
| ------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------- | ------ | ---------- |
| - [addressRegion](#inRoom_items_address_else_addressRegion ) | Nom de la région, province ou état. Peut être un code de pays à 2 caractères selon le standard ISO 3166-1. | string | -          |

###### <a name="inRoom_items_address_else_addressRegion"></a>8.1.10.2.1. Property `Lieu (Place) > inRoom > Salle (Room) > address > else > addressRegion`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Nom de la région, province ou état. Peut être un code de pays à 2 caractères selon le standard ISO 3166-1.

| Restrictions                      |                                                                             |
| --------------------------------- | --------------------------------------------------------------------------- |
| **Must match regular expression** | ```^[A-Z]{2}$``` [Test](https://regex101.com/?regex=%5E%5BA-Z%5D%7B2%7D%24) |

##### <a name="inRoom_items_address_type"></a>8.1.10.3. Property `Lieu (Place) > inRoom > Salle (Room) > address > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"PostalAddress"`

##### <a name="inRoom_items_address_streetAddress"></a>8.1.10.4. Property `Lieu (Place) > inRoom > Salle (Room) > address > streetAddress`

**Title:** Texte court

|                        |                                          |
| ---------------------- | ---------------------------------------- |
| **Type**               | `string`                                 |
| **Required**           | Yes                                      |
| **Same definition as** | [vocabulary](#additionalType_vocabulary) |

**Description:** Unité, numéro municipal, type de rue, nom de rue, direction de rue. Peut aussi contenir d'autres informations.

##### <a name="inRoom_items_address_addressLocality"></a>8.1.10.5. Property `Lieu (Place) > inRoom > Salle (Room) > address > addressLocality`

**Title:** Texte court

|                        |                                          |
| ---------------------- | ---------------------------------------- |
| **Type**               | `string`                                 |
| **Required**           | Yes                                      |
| **Same definition as** | [vocabulary](#additionalType_vocabulary) |

**Description:** Nom de la ville. Peut aussi contenir le nom de la municipalité ou de la localité.

##### <a name="inRoom_items_address_addressRegion"></a>8.1.10.6. Property `Lieu (Place) > inRoom > Salle (Room) > address > addressRegion`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** Abréviation des noms de provinces recommandés par Postes Canada, ou une région dans un autre pays.

##### <a name="inRoom_items_address_addressCountry"></a>8.1.10.7. Property `Lieu (Place) > inRoom > Salle (Room) > address > addressCountry`

**Title:** Code Pays

|                |                                       |
| -------------- | ------------------------------------- |
| **Type**       | `string`                              |
| **Required**   | Yes                                   |
| **Defined in** | ../datatypes/country_code.schema.json |

**Description:** Code de pays à 3 caractères selon le standard ISO 3166-1

| Restrictions                      |                                                                             |
| --------------------------------- | --------------------------------------------------------------------------- |
| **Min length**                    | 3                                                                           |
| **Max length**                    | 3                                                                           |
| **Must match regular expression** | ```^[A-Z]{3}$``` [Test](https://regex101.com/?regex=%5E%5BA-Z%5D%7B3%7D%24) |

##### <a name="inRoom_items_address_postalCode"></a>8.1.10.8. Property `Lieu (Place) > inRoom > Salle (Room) > address > postalCode`

**Title:** Code Postal Canadien

|                |                                             |
| -------------- | ------------------------------------------- |
| **Type**       | `string`                                    |
| **Required**   | Yes                                         |
| **Defined in** | ../datatypes/canada_postal_code.schema.json |

**Description:** Code postal, en majuscules. Séparer les trois premiers caractères du code postal des trois derniers. On ne doit pas utiliser le trait d’union

| Restrictions                      |                                                                                                                                     |
| --------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| **Must match regular expression** | ```^[A-Za-z]\d[A-Za-z] \d[A-Za-z]\d$``` [Test](https://regex101.com/?regex=%5E%5BA-Za-z%5D%5Cd%5BA-Za-z%5D+%5Cd%5BA-Za-z%5D%5Cd%24) |

#### <a name="inRoom_items_roomAccessibility"></a>8.1.11. Property `Lieu (Place) > inRoom > Salle (Room) > roomAccessibility`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Caractéristiques d'accessibilité universelle pour la salle. 

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be               | Description                                                                             |
| --------------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#inRoom_items_roomAccessibility_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

##### <a name="inRoom_items_roomAccessibility_items"></a>8.1.11.1. Lieu (Place) > inRoom > Salle (Room) > roomAccessibility > Term

**Title:** Term

|                           |                                   |
| ------------------------- | --------------------------------- |
| **Type**                  | `object`                          |
| **Required**              | No                                |
| **Additional properties** | Any type allowed                  |
| **Same definition as**    | [additionalType](#additionalType) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

#### <a name="inRoom_items_roomConfiguration"></a>8.1.12. Property `Lieu (Place) > inRoom > Salle (Room) > roomConfiguration`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Précisions sur les configurations possibles de la salle.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                 | Description                                           |
| --------------------------------------------------------------- | ----------------------------------------------------- |
| [Configuration de salle](#inRoom_items_roomConfiguration_items) | Précisions sur un configuration possible de la salle. |

##### <a name="inRoom_items_roomConfiguration_items"></a>8.1.12.1. Lieu (Place) > inRoom > Salle (Room) > roomConfiguration > Configuration de salle

**Title:** Configuration de salle

|                           |                                            |
| ------------------------- | ------------------------------------------ |
| **Type**                  | `object`                                   |
| **Required**              | No                                         |
| **Additional properties** | Any type allowed                           |
| **Defined in**            | ./utilities/room_specification.schema.json |

**Description:** Précisions sur un configuration possible de la salle.

| Property                                                      | Title/Description                    | Type    | Definition                                 |
| ------------------------------------------------------------- | ------------------------------------ | ------- | ------------------------------------------ |
| + [type](#inRoom_items_roomConfiguration_items_type )         | -                                    | const   | -                                          |
| + [layout](#inRoom_items_roomConfiguration_items_layout )     | Term                                 | object  | Same as [additionalType](#additionalType ) |
| - [capacity](#inRoom_items_roomConfiguration_items_capacity ) | Capacité, en nombre de spectacteurs. | integer | -                                          |

###### <a name="inRoom_items_roomConfiguration_items_type"></a>8.1.12.1.1. Property `Lieu (Place) > inRoom > Salle (Room) > roomConfiguration > Configuration de salle > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"RoomConfiguration"`

###### <a name="inRoom_items_roomConfiguration_items_layout"></a>8.1.12.1.2. Property `Lieu (Place) > inRoom > Salle (Room) > roomConfiguration > Configuration de salle > layout`

**Title:** Term

|                           |                                   |
| ------------------------- | --------------------------------- |
| **Type**                  | `object`                          |
| **Required**              | Yes                               |
| **Additional properties** | Any type allowed                  |
| **Same definition as**    | [additionalType](#additionalType) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

###### <a name="inRoom_items_roomConfiguration_items_capacity"></a>8.1.12.1.3. Property `Lieu (Place) > inRoom > Salle (Room) > roomConfiguration > Configuration de salle > capacity`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Capacité, en nombre de spectacteurs.

## <a name="address"></a>9. Property `Lieu (Place) > address`

**Title:** Postal Address

|                           |                                  |
| ------------------------- | -------------------------------- |
| **Type**                  | `object`                         |
| **Required**              | No                               |
| **Additional properties** | Any type allowed                 |
| **Same definition as**    | [address](#inRoom_items_address) |

**Description:** Coordonnées complètes du lieu.

## <a name="mainEntityOfPage"></a>10. Property `Lieu (Place) > mainEntityOfPage`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** URL vers des pages web donnant plus d'information sur le lieu.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be    | Description |
| ---------------------------------- | ----------- |
| [WebPage](#mainEntityOfPage_items) | -           |

### <a name="mainEntityOfPage_items"></a>10.1. Lieu (Place) > mainEntityOfPage > WebPage

**Title:** WebPage

|                           |                                  |
| ------------------------- | -------------------------------- |
| **Type**                  | `object`                         |
| **Required**              | No                               |
| **Additional properties** | Any type allowed                 |
| **Defined in**            | ./utilities/web_page.schema.json |

| Property                                            | Title/Description | Type   | Definition                                        |
| --------------------------------------------------- | ----------------- | ------ | ------------------------------------------------- |
| + [type](#mainEntityOfPage_items_type )             | -                 | const  | -                                                 |
| + [url](#mainEntityOfPage_items_url )               | -                 | string | -                                                 |
| - [inLanguage](#mainEntityOfPage_items_inLanguage ) | Code de langue    | string | Same as [lang](#additionalType_label_items_lang ) |

#### <a name="mainEntityOfPage_items_type"></a>10.1.1. Property `Lieu (Place) > mainEntityOfPage > WebPage > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"WebPage"`

#### <a name="mainEntityOfPage_items_url"></a>10.1.2. Property `Lieu (Place) > mainEntityOfPage > WebPage > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |
| **Format**   | `uri`    |

#### <a name="mainEntityOfPage_items_inLanguage"></a>10.1.3. Property `Lieu (Place) > mainEntityOfPage > WebPage > inLanguage`

**Title:** Code de langue

|                        |                                          |
| ---------------------- | ---------------------------------------- |
| **Type**               | `string`                                 |
| **Required**           | No                                       |
| **Same definition as** | [lang](#additionalType_label_items_lang) |

**Description:** Langue de la page Web, au format ISO 639-1.

## <a name="placeAccessibility"></a>11. Property `Lieu (Place) > placeAccessibility`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Caractéristiques d'accessibilité universelle pour le lieu. Des caractéristiques supplémentaires pourraient être documentées pour la ou les salles.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be   | Description                                                                             |
| --------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#placeAccessibility_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="placeAccessibility_items"></a>11.1. Lieu (Place) > placeAccessibility > Term

**Title:** Term

|                           |                                   |
| ------------------------- | --------------------------------- |
| **Type**                  | `object`                          |
| **Required**              | No                                |
| **Additional properties** | Any type allowed                  |
| **Same definition as**    | [additionalType](#additionalType) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

## <a name="geoCoordinates"></a>12. Property `Lieu (Place) > geoCoordinates`

**Title:** Coordonnées géographiques d'un point.

|                           |                                         |
| ------------------------- | --------------------------------------- |
| **Type**                  | `object`                                |
| **Required**              | No                                      |
| **Additional properties** | Any type allowed                        |
| **Defined in**            | ./datatypes/geo_coordinates.schema.json |

**Description:** Coordonnées géographiques

| Property                                  | Title/Description | Type   | Definition |
| ----------------------------------------- | ----------------- | ------ | ---------- |
| + [longitude](#geoCoordinates_longitude ) | -                 | number | -          |
| + [latitude](#geoCoordinates_latitude )   | -                 | number | -          |

### <a name="geoCoordinates_longitude"></a>12.1. Property `Lieu (Place) > geoCoordinates > longitude`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | Yes      |

### <a name="geoCoordinates_latitude"></a>12.2. Property `Lieu (Place) > geoCoordinates > latitude`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | Yes      |

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2025-09-08 at 14:26:54 -0400
