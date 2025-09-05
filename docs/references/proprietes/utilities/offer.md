# Offre (Offer)

**Title:** Offre (Offer)

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Permet de décrire les propriétés d’une offre associée à une représentation ou une série, par exemple le prix et la disponibilité.

| Property                                                         | Title/Description                                                                                                                                                                                                                                                                                       | Type             | Definition                                                                       |
| ---------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- | -------------------------------------------------------------------------------- |
| + [type](#type )                                                 | -                                                                                                                                                                                                                                                                                                       | const            | -                                                                                |
| + [inPlace](#inPlace )                                           | Lieu (Place)                                                                                                                                                                                                                                                                                            | object           | In ../place.schema.json                                                          |
| - [inRoom](#inRoom )                                             | Salle (Room)                                                                                                                                                                                                                                                                                            | object           | Same as [Salle (Room)](#inPlace_inRoom_items )                                   |
| - [roomConfiguration](#roomConfiguration )                       | Configuration de salle                                                                                                                                                                                                                                                                                  | object           | Same as [Configuration de salle](#inPlace_inRoom_items_roomConfiguration_items ) |
| + [isSoldout](#isSoldout )                                       | Permet d'indiquer si cette offre est complète (toutes les places disponibles sont comblées). Peut-être complété par la propriété Complet depuis pour préciser à quelle date l'offre est devenue complète.                                                                                               | boolean          | -                                                                                |
| - [soldoutSince](#soldoutSince )                                 | Date depuis laquelle l'offre est complète. La propriété Complet doit avoir la valeur vrai pour que Complet depuis puisse être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times                                                                           | string           | -                                                                                |
| + [offerStatus](#offerStatus )                                   | Statut de l'Offre                                                                                                                                                                                                                                                                                       | enum (of string) | In ../vocabularies/event_status.schema.json                                      |
| - [price](#price )                                               | Montant Monétaire                                                                                                                                                                                                                                                                                       | string           | In ../datatypes/currency.schema.json                                             |
| + [isAccessibleForFree](#isAccessibleForFree )                   | Indique que la présente offre est gratuite.                                                                                                                                                                                                                                                             | boolean          | -                                                                                |
| + [isAccessibleFromAnotherOffer](#isAccessibleFromAnotherOffer ) | Indique que la présente offre est accessible seulement lorsque le consommateur a souscrit à une autre offre.                                                                                                                                                                                            | boolean          | -                                                                                |
| - [preSaleStart](#preSaleStart )                                 | Date et heure du début de la prévente. Si la propriété n'est pas documentée, la date de début de disponibilité générale doit être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times                                                                       | string           | -                                                                                |
| - [generalSaleStart](#generalSaleStart )                         | Date et heure du début de la disponibilité générale. Si la propriété n'est pas documentée, il faut considérer que l'offre est disponible en tout temps, jusqu'à la date de début et l'heure de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times | string           | -                                                                                |
| + [ticketLinkNotAvailable](#ticketLinkNotAvailable )             | Indication à l'effet qu'il n'existe pas de lien permettant d'obtenir, par le web, un accès à la représentation.                                                                                                                                                                                         | boolean          | -                                                                                |
| - [ticketLink](#ticketLink )                                     | URL d'une page permettant de souscire à l'offre, par exemple un lien vers la page de la plateforme de billetterie.                                                                                                                                                                                      | string           | -                                                                                |

## <a name="autogenerated_heading_2"></a>1. If (isAccessibleForFree = false)

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

### <a name="autogenerated_heading_3"></a>1.1. The following properties are required
* ticketLink

## <a name="type"></a>2. Property `Offre (Offer) > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Offer"`

## <a name="inPlace"></a>3. Property `Offre (Offer) > inPlace`

**Title:** Lieu (Place)

|                           |                      |
| ------------------------- | -------------------- |
| **Type**                  | `object`             |
| **Required**              | Yes                  |
| **Additional properties** | Any type allowed     |
| **Defined in**            | ../place.schema.json |

**Description:** Lieu associé à l'offre (physique ou virtuel).

| Property                                             | Title/Description                                                                                                                                                                                                                                  | Type            | Definition                                        |
| ---------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | ------------------------------------------------- |
| + [type](#inPlace_type )                             | -                                                                                                                                                                                                                                                  | const           | -                                                 |
| - [additionalType](#inPlace_additionalType )         | Term                                                                                                                                                                                                                                               | object          | In ./utilities/term.schema.json                   |
| + [identifier](#inPlace_identifier )                 | identifier                                                                                                                                                                                                                                         | array           | In ./utilities/identifier.schema.json             |
| + [name](#inPlace_name )                             | Texte court multilingue                                                                                                                                                                                                                            | array of object | Same as [label](#inPlace_additionalType_label )   |
| - [description](#inPlace_description )               | Texte long multilingue                                                                                                                                                                                                                             | array of object | In ./datatypes/text_long_multilingual.schema.json |
| + [virtualPlace](#inPlace_virtualPlace )             | -                                                                                                                                                                                                                                                  | boolean         | -                                                 |
| - [inRoom](#inPlace_inRoom )                         | Énumération des salles présentes dans le lieu. Recommandé pour les lieux contenant plusieurs salles, ou pour documenter des informations associés à la classe Salle (par exemple, les configurations possibles) dans un lieu avec une seule salle. | array           | -                                                 |
| - [address](#inPlace_address )                       | Postal Address                                                                                                                                                                                                                                     | object          | Same as [address](#inPlace_inRoom_items_address ) |
| - [mainEntityOfPage](#inPlace_mainEntityOfPage )     | URL vers des pages web donnant plus d'information sur le lieu.                                                                                                                                                                                     | array           | -                                                 |
| - [placeAccessibility](#inPlace_placeAccessibility ) | Caractéristiques d'accessibilité universelle pour le lieu. Des caractéristiques supplémentaires pourraient être documentées pour la ou les salles.                                                                                                 | array           | -                                                 |
| - [geoCoordinates](#inPlace_geoCoordinates )         | Coordonnées géographiques d'un point.                                                                                                                                                                                                              | object          | In ./datatypes/geo_coordinates.schema.json        |

### <a name="autogenerated_heading_4"></a>3.1. If (virtualPlace = false)

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

#### <a name="autogenerated_heading_5"></a>3.1.1. The following properties are required
* type
* address

### <a name="inPlace_type"></a>3.2. Property `Offre (Offer) > inPlace > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Place"`

### <a name="inPlace_additionalType"></a>3.3. Property `Offre (Offer) > inPlace > additionalType`

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

| Property                                                    | Title/Description                                                                                        | Type            | Definition                                                |
| ----------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------- |
| + [type](#inPlace_additionalType_type )                     | -                                                                                                        | const           | -                                                         |
| + [vocabulary](#inPlace_additionalType_vocabulary )         | Texte court                                                                                              | string          | In ../datatypes/text_short.schema.json                    |
| - [version](#inPlace_additionalType_version )               | Texte court                                                                                              | string          | Same as [vocabulary](#inPlace_additionalType_vocabulary ) |
| + [code](#inPlace_additionalType_code )                     | Texte court                                                                                              | string          | Same as [vocabulary](#inPlace_additionalType_vocabulary ) |
| - [label](#inPlace_additionalType_label )                   | Texte court multilingue                                                                                  | array of object | In ../datatypes/text_short_multilingual.schema.json       |
| + [sequenceNumber](#inPlace_additionalType_sequenceNumber ) | Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé). | integer         | -                                                         |

#### <a name="inPlace_additionalType_type"></a>3.3.1. Property `Offre (Offer) > inPlace > additionalType > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Term"`

#### <a name="inPlace_additionalType_vocabulary"></a>3.3.2. Property `Offre (Offer) > inPlace > additionalType > vocabulary`

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

#### <a name="inPlace_additionalType_version"></a>3.3.3. Property `Offre (Offer) > inPlace > additionalType > version`

**Title:** Texte court

|                        |                                                  |
| ---------------------- | ------------------------------------------------ |
| **Type**               | `string`                                         |
| **Required**           | No                                               |
| **Same definition as** | [vocabulary](#inPlace_additionalType_vocabulary) |

**Description:** Version du vocabulaire utilisé, lorsque c'est applicable

#### <a name="inPlace_additionalType_code"></a>3.3.4. Property `Offre (Offer) > inPlace > additionalType > code`

**Title:** Texte court

|                        |                                                  |
| ---------------------- | ------------------------------------------------ |
| **Type**               | `string`                                         |
| **Required**           | Yes                                              |
| **Same definition as** | [vocabulary](#inPlace_additionalType_vocabulary) |

**Description:** Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.

#### <a name="inPlace_additionalType_label"></a>3.3.5. Property `Offre (Offer) > inPlace > additionalType > label`

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

| Each item of this array must be                    | Description |
| -------------------------------------------------- | ----------- |
| [label items](#inPlace_additionalType_label_items) | -           |

##### <a name="inPlace_additionalType_label_items"></a>3.3.5.1. Offre (Offer) > inPlace > additionalType > label > label items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                                              | Title/Description | Type   | Definition                         |
| ----------------------------------------------------- | ----------------- | ------ | ---------------------------------- |
| + [lang](#inPlace_additionalType_label_items_lang )   | Code de langue    | string | In ./partials/language.schema.json |
| + [value](#inPlace_additionalType_label_items_value ) | Texte court       | string | In ./partials/no_html.schema.json  |

###### <a name="inPlace_additionalType_label_items_lang"></a>3.3.5.1.1. Property `Offre (Offer) > inPlace > additionalType > label > label items > lang`

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

###### <a name="inPlace_additionalType_label_items_value"></a>3.3.5.1.2. Property `Offre (Offer) > inPlace > additionalType > label > label items > value`

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

#### <a name="inPlace_additionalType_sequenceNumber"></a>3.3.6. Property `Offre (Offer) > inPlace > additionalType > sequenceNumber`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | Yes       |

**Description:** Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).

### <a name="inPlace_identifier"></a>3.4. Property `Offre (Offer) > inPlace > identifier`

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

| Each item of this array must be               | Description |
| --------------------------------------------- | ----------- |
| [identifier items](#inPlace_identifier_items) | -           |

#### <a name="inPlace_identifier_items"></a>3.4.1. Offre (Offer) > inPlace > identifier > identifier items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Any of(Option)                               |
| -------------------------------------------- |
| [item 0](#inPlace_identifier_items_anyOf_i0) |
| [item 1](#inPlace_identifier_items_anyOf_i1) |

##### <a name="inPlace_identifier_items_anyOf_i0"></a>3.4.1.1. Property `Offre (Offer) > inPlace > identifier > identifier items > anyOf > item 0`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                       | Title/Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Type   | Definition |
| -------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------ | ---------- |
| + [type](#inPlace_identifier_items_anyOf_i0_type )             | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | const  | -          |
| + [propertyID](#inPlace_identifier_items_anyOf_i0_propertyID ) | Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles. | string | -          |
| + [value](#inPlace_identifier_items_anyOf_i0_value )           | L'identifiant lui-même                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | string | -          |

###### <a name="inPlace_identifier_items_anyOf_i0_type"></a>3.4.1.1.1. Property `Offre (Offer) > inPlace > identifier > identifier items > anyOf > item 0 > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"PropertyValue"`

###### <a name="inPlace_identifier_items_anyOf_i0_propertyID"></a>3.4.1.1.2. Property `Offre (Offer) > inPlace > identifier > identifier items > anyOf > item 0 > propertyID`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles.

| Restrictions   |   |
| -------------- | - |
| **Min length** | 1 |

###### <a name="inPlace_identifier_items_anyOf_i0_value"></a>3.4.1.1.3. Property `Offre (Offer) > inPlace > identifier > identifier items > anyOf > item 0 > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** L'identifiant lui-même

| Restrictions   |   |
| -------------- | - |
| **Min length** | 1 |

##### <a name="inPlace_identifier_items_anyOf_i1"></a>3.4.1.2. Property `Offre (Offer) > inPlace > identifier > identifier items > anyOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |
| **Format**   | `uri`    |

**Description:** Un identifiant URI sous forme de chaîne de caractères.

### <a name="inPlace_name"></a>3.5. Property `Offre (Offer) > inPlace > name`

**Title:** Texte court multilingue

|                        |                                        |
| ---------------------- | -------------------------------------- |
| **Type**               | `array of object`                      |
| **Required**           | Yes                                    |
| **Same definition as** | [label](#inPlace_additionalType_label) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

### <a name="inPlace_description"></a>3.6. Property `Offre (Offer) > inPlace > description`

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

| Each item of this array must be                 | Description |
| ----------------------------------------------- | ----------- |
| [description items](#inPlace_description_items) | -           |

#### <a name="inPlace_description_items"></a>3.6.1. Offre (Offer) > inPlace > description > description items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                                     | Title/Description | Type   | Definition                                                |
| -------------------------------------------- | ----------------- | ------ | --------------------------------------------------------- |
| + [lang](#inPlace_description_items_lang )   | Code de langue    | string | Same as [lang](#inPlace_additionalType_label_items_lang ) |
| + [value](#inPlace_description_items_value ) | Texte long        | string | In ./partials/authorized_html.schema.json                 |

##### <a name="inPlace_description_items_lang"></a>3.6.1.1. Property `Offre (Offer) > inPlace > description > description items > lang`

**Title:** Code de langue

|                        |                                                  |
| ---------------------- | ------------------------------------------------ |
| **Type**               | `string`                                         |
| **Required**           | Yes                                              |
| **Same definition as** | [lang](#inPlace_additionalType_label_items_lang) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

##### <a name="inPlace_description_items_value"></a>3.6.1.2. Property `Offre (Offer) > inPlace > description > description items > value`

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

### <a name="inPlace_virtualPlace"></a>3.7. Property `Offre (Offer) > inPlace > virtualPlace`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | Yes       |

### <a name="inPlace_inRoom"></a>3.8. Property `Offre (Offer) > inPlace > inRoom`

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

| Each item of this array must be       | Description                                                                                                                                             |
| ------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Salle (Room)](#inPlace_inRoom_items) | Certains lieux contiennent plusieurs salles. Cette classe permet de préciser et décrire la salle utilisée dans le contexte d’une représentation donnée. |

#### <a name="inPlace_inRoom_items"></a>3.8.1. Offre (Offer) > inPlace > inRoom > Salle (Room)

**Title:** Salle (Room)

|                           |                    |
| ------------------------- | ------------------ |
| **Type**                  | `object`           |
| **Required**              | No                 |
| **Additional properties** | Any type allowed   |
| **Defined in**            | ./room.schema.json |

**Description:** Certains lieux contiennent plusieurs salles. Cette classe permet de préciser et décrire la salle utilisée dans le contexte d’une représentation donnée.

| Property                                                        | Title/Description                                                                         | Type            | Definition                                      |
| --------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | --------------- | ----------------------------------------------- |
| + [type](#inPlace_inRoom_items_type )                           | -                                                                                         | const           | -                                               |
| + [identifier](#inPlace_inRoom_items_identifier )               | identifier                                                                                | array           | Same as [identifier](#inPlace_identifier )      |
| - [name](#inPlace_inRoom_items_name )                           | Texte court multilingue                                                                   | array of object | Same as [label](#inPlace_additionalType_label ) |
| + [nameSameAsPlace](#inPlace_inRoom_items_nameSameAsPlace )     | -                                                                                         | boolean         | -                                               |
| - [description](#inPlace_inRoom_items_description )             | Texte long multilingue                                                                    | array of object | Same as [description](#inPlace_description )    |
| - [shortDescription](#inPlace_inRoom_items_shortDescription )   | Texte long multilingue                                                                    | array of object | Same as [description](#inPlace_description )    |
| - [media](#inPlace_inRoom_items_media )                         | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au lieux. | array           | -                                               |
| - [inPlace](#inPlace_inRoom_items_inPlace )                     | Lieu (Place)                                                                              | object          | Same as [inPlace](#inPlace )                    |
| - [address](#inPlace_inRoom_items_address )                     | Postal Address                                                                            | object          | In ./utilities/postal_address.schema.json       |
| - [roomAccessibility](#inPlace_inRoom_items_roomAccessibility ) | Caractéristiques d'accessibilité universelle pour la salle.                               | array           | -                                               |
| - [roomConfiguration](#inPlace_inRoom_items_roomConfiguration ) | Précisions sur les configurations possibles de la salle.                                  | array           | -                                               |

##### <a name="autogenerated_heading_6"></a>3.8.1.1. If (nameSameAsPlace = false)

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

###### <a name="autogenerated_heading_7"></a>3.8.1.1.1. The following properties are required
* name

##### <a name="inPlace_inRoom_items_type"></a>3.8.1.2. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Room"`

##### <a name="inPlace_inRoom_items_identifier"></a>3.8.1.3. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > identifier`

**Title:** identifier

|                        |                                   |
| ---------------------- | --------------------------------- |
| **Type**               | `array`                           |
| **Required**           | Yes                               |
| **Same definition as** | [identifier](#inPlace_identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

##### <a name="inPlace_inRoom_items_name"></a>3.8.1.4. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > name`

**Title:** Texte court multilingue

|                        |                                        |
| ---------------------- | -------------------------------------- |
| **Type**               | `array of object`                      |
| **Required**           | No                                     |
| **Same definition as** | [label](#inPlace_additionalType_label) |

**Description:** Nom de la salle, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels.

##### <a name="inPlace_inRoom_items_nameSameAsPlace"></a>3.8.1.5. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > nameSameAsPlace`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | Yes       |

##### <a name="inPlace_inRoom_items_description"></a>3.8.1.6. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > description`

**Title:** Texte long multilingue

|                        |                                     |
| ---------------------- | ----------------------------------- |
| **Type**               | `array of object`                   |
| **Required**           | No                                  |
| **Same definition as** | [description](#inPlace_description) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

##### <a name="inPlace_inRoom_items_shortDescription"></a>3.8.1.7. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > shortDescription`

**Title:** Texte long multilingue

|                        |                                     |
| ---------------------- | ----------------------------------- |
| **Type**               | `array of object`                   |
| **Required**           | No                                  |
| **Same definition as** | [description](#inPlace_description) |

**Description:** Description résumée de la salle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.

##### <a name="inPlace_inRoom_items_media"></a>3.8.1.8. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > media`

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

| Each item of this array must be            | Description                                                                                          |
| ------------------------------------------ | ---------------------------------------------------------------------------------------------------- |
| [Média](#inPlace_inRoom_items_media_items) | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

###### <a name="inPlace_inRoom_items_media_items"></a>3.8.1.8.1. Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média

**Title:** Média

|                           |                               |
| ------------------------- | ----------------------------- |
| **Type**                  | `object`                      |
| **Required**              | No                            |
| **Additional properties** | Any type allowed              |
| **Defined in**            | ./utilities/media.schema.json |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

| Property                                                                | Title/Description                                                                                                                                                                                                                              | Type            | Definition                                                |
| ----------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------- |
| + [type](#inPlace_inRoom_items_media_items_type )                       | -                                                                                                                                                                                                                                              | const           | -                                                         |
| - [sequenceNumber](#inPlace_inRoom_items_media_items_sequenceNumber )   | Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                       | integer         | -                                                         |
| - [usageNote](#inPlace_inRoom_items_media_items_usageNote )             | Texte court                                                                                                                                                                                                                                    | string          | Same as [vocabulary](#inPlace_additionalType_vocabulary ) |
| + [url](#inPlace_inRoom_items_media_items_url )                         | URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible                                                                                     | string          | -                                                         |
| - [inLanguage](#inPlace_inRoom_items_media_items_inLanguage )           | Code de langue                                                                                                                                                                                                                                 | string          | Same as [lang](#inPlace_additionalType_label_items_lang ) |
| - [license](#inPlace_inRoom_items_media_items_license )                 | Licence d'utilisation du média. Une valeur vide ou non définie correspond à un média libre de droits. Si des conditions s'appliquent, elles doivent être définies dans cette propriété, ou sur le web à une URL intégrée dans cette propriété. | array           | -                                                         |
| - [creditText](#inPlace_inRoom_items_media_items_creditText )           | Crédits associés au média.                                                                                                                                                                                                                     | array           | -                                                         |
| - [copyrightHolder](#inPlace_inRoom_items_media_items_copyrightHolder ) | Texte court multilingue                                                                                                                                                                                                                        | array of object | Same as [label](#inPlace_additionalType_label )           |
| - [description](#inPlace_inRoom_items_media_items_description )         | Description courte (pouvant par exemple servir de «alt description» sur le web).                                                                                                                                                               | array           | -                                                         |

###### <a name="inPlace_inRoom_items_media_items_type"></a>3.8.1.8.1.1. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Media"`

###### <a name="inPlace_inRoom_items_media_items_sequenceNumber"></a>3.8.1.8.1.2. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > sequenceNumber`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).

###### <a name="inPlace_inRoom_items_media_items_usageNote"></a>3.8.1.8.1.3. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > usageNote`

**Title:** Texte court

|                        |                                                  |
| ---------------------- | ------------------------------------------------ |
| **Type**               | `string`                                         |
| **Required**           | No                                               |
| **Same definition as** | [vocabulary](#inPlace_additionalType_vocabulary) |

**Description:** Texte libre permettant d'identifier les usages possibles du média (à l'intention des opérateurs des systèmes, pas du grand public, et donc pas pour publication).

###### <a name="inPlace_inRoom_items_media_items_url"></a>3.8.1.8.1.4. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |
| **Format**   | `uri`    |

**Description:** URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible

###### <a name="inPlace_inRoom_items_media_items_inLanguage"></a>3.8.1.8.1.5. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > inLanguage`

**Title:** Code de langue

|                        |                                                  |
| ---------------------- | ------------------------------------------------ |
| **Type**               | `string`                                         |
| **Required**           | No                                               |
| **Same definition as** | [lang](#inPlace_additionalType_label_items_lang) |

**Description:** Langue au format ISO 639-1.

###### <a name="inPlace_inRoom_items_media_items_license"></a>3.8.1.8.1.6. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > license`

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

| Each item of this array must be                                            | Description                                                                                 |
| -------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#inPlace_inRoom_items_media_items_license_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

###### <a name="inPlace_inRoom_items_media_items_license_items"></a>3.8.1.8.1.6.1. Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > license > Texte court multilingue

**Title:** Texte court multilingue

|                        |                                        |
| ---------------------- | -------------------------------------- |
| **Type**               | `array of object`                      |
| **Required**           | No                                     |
| **Same definition as** | [label](#inPlace_additionalType_label) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

###### <a name="inPlace_inRoom_items_media_items_creditText"></a>3.8.1.8.1.7. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > creditText`

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

| Each item of this array must be                                               | Description                                                                                 |
| ----------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#inPlace_inRoom_items_media_items_creditText_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

###### <a name="inPlace_inRoom_items_media_items_creditText_items"></a>3.8.1.8.1.7.1. Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > creditText > Texte court multilingue

**Title:** Texte court multilingue

|                        |                                        |
| ---------------------- | -------------------------------------- |
| **Type**               | `array of object`                      |
| **Required**           | No                                     |
| **Same definition as** | [label](#inPlace_additionalType_label) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

###### <a name="inPlace_inRoom_items_media_items_copyrightHolder"></a>3.8.1.8.1.8. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > copyrightHolder`

**Title:** Texte court multilingue

|                        |                                        |
| ---------------------- | -------------------------------------- |
| **Type**               | `array of object`                      |
| **Required**           | No                                     |
| **Same definition as** | [label](#inPlace_additionalType_label) |

**Description:** Personne ou organisation détenant les droits d'auteur du média.

###### <a name="inPlace_inRoom_items_media_items_description"></a>3.8.1.8.1.9. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > description`

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

| Each item of this array must be                                               | Description                                                                     |
| ----------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| [Texte long multilingue](#inPlace_inRoom_items_media_items_description_items) | Énumération de textes longs associés à un code de langue au standard ISO 639-1. |

###### <a name="inPlace_inRoom_items_media_items_description_items"></a>3.8.1.8.1.9.1. Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > description > Texte long multilingue

**Title:** Texte long multilingue

|                        |                                     |
| ---------------------- | ----------------------------------- |
| **Type**               | `array of object`                   |
| **Required**           | No                                  |
| **Same definition as** | [description](#inPlace_description) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

##### <a name="inPlace_inRoom_items_inPlace"></a>3.8.1.9. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > inPlace`

**Title:** Lieu (Place)

|                           |                     |
| ------------------------- | ------------------- |
| **Type**                  | `object`            |
| **Required**              | No                  |
| **Additional properties** | Any type allowed    |
| **Same definition as**    | [inPlace](#inPlace) |

**Description:** Lieu associé à l'offre (physique ou virtuel).

##### <a name="inPlace_inRoom_items_address"></a>3.8.1.10. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > address`

**Title:** Postal Address

|                           |                                        |
| ------------------------- | -------------------------------------- |
| **Type**                  | `object`                               |
| **Required**              | No                                     |
| **Additional properties** | Any type allowed                       |
| **Defined in**            | ./utilities/postal_address.schema.json |

**Description:** Coordonnées complètes de la salle, lorsque les coordonnées de la salle sont différentes ou plus précises que celles du lieu.

| Property                                                            | Title/Description                                                                                  | Type   | Definition                                                |
| ------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | ------ | --------------------------------------------------------- |
| + [type](#inPlace_inRoom_items_address_type )                       | -                                                                                                  | const  | -                                                         |
| + [streetAddress](#inPlace_inRoom_items_address_streetAddress )     | Texte court                                                                                        | string | Same as [vocabulary](#inPlace_additionalType_vocabulary ) |
| + [addressLocality](#inPlace_inRoom_items_address_addressLocality ) | Texte court                                                                                        | string | Same as [vocabulary](#inPlace_additionalType_vocabulary ) |
| + [addressRegion](#inPlace_inRoom_items_address_addressRegion )     | Abréviation des noms de provinces recommandés par Postes Canada, ou une région dans un autre pays. | string | -                                                         |
| + [addressCountry](#inPlace_inRoom_items_address_addressCountry )   | Code Pays                                                                                          | string | In ../datatypes/country_code.schema.json                  |
| + [postalCode](#inPlace_inRoom_items_address_postalCode )           | Code Postal Canadien                                                                               | string | In ../datatypes/canada_postal_code.schema.json            |

###### <a name="autogenerated_heading_8"></a>3.8.1.10.1. If (addressCountry = "CAN")

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                             | Title/Description | Type             | Definition |
| -------------------------------------------------------------------- | ----------------- | ---------------- | ---------- |
| - [addressRegion](#inPlace_inRoom_items_address_then_addressRegion ) | -                 | enum (of string) | -          |

###### <a name="inPlace_inRoom_items_address_then_addressRegion"></a>3.8.1.10.1.1. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > address > then > addressRegion`

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

###### <a name="autogenerated_heading_9"></a>3.8.1.10.2. Else (i.e.  addressCountry != "CAN")

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                             | Title/Description                                                                                          | Type   | Definition |
| -------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- | ------ | ---------- |
| - [addressRegion](#inPlace_inRoom_items_address_else_addressRegion ) | Nom de la région, province ou état. Peut être un code de pays à 2 caractères selon le standard ISO 3166-1. | string | -          |

###### <a name="inPlace_inRoom_items_address_else_addressRegion"></a>3.8.1.10.2.1. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > address > else > addressRegion`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Nom de la région, province ou état. Peut être un code de pays à 2 caractères selon le standard ISO 3166-1.

| Restrictions                      |                                                                             |
| --------------------------------- | --------------------------------------------------------------------------- |
| **Must match regular expression** | ```^[A-Z]{2}$``` [Test](https://regex101.com/?regex=%5E%5BA-Z%5D%7B2%7D%24) |

###### <a name="inPlace_inRoom_items_address_type"></a>3.8.1.10.3. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > address > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"PostalAddress"`

###### <a name="inPlace_inRoom_items_address_streetAddress"></a>3.8.1.10.4. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > address > streetAddress`

**Title:** Texte court

|                        |                                                  |
| ---------------------- | ------------------------------------------------ |
| **Type**               | `string`                                         |
| **Required**           | Yes                                              |
| **Same definition as** | [vocabulary](#inPlace_additionalType_vocabulary) |

**Description:** Unité, numéro municipal, type de rue, nom de rue, direction de rue. Peut aussi contenir d'autres informations.

###### <a name="inPlace_inRoom_items_address_addressLocality"></a>3.8.1.10.5. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > address > addressLocality`

**Title:** Texte court

|                        |                                                  |
| ---------------------- | ------------------------------------------------ |
| **Type**               | `string`                                         |
| **Required**           | Yes                                              |
| **Same definition as** | [vocabulary](#inPlace_additionalType_vocabulary) |

**Description:** Nom de la ville. Peut aussi contenir le nom de la municipalité ou de la localité.

###### <a name="inPlace_inRoom_items_address_addressRegion"></a>3.8.1.10.6. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > address > addressRegion`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** Abréviation des noms de provinces recommandés par Postes Canada, ou une région dans un autre pays.

###### <a name="inPlace_inRoom_items_address_addressCountry"></a>3.8.1.10.7. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > address > addressCountry`

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

###### <a name="inPlace_inRoom_items_address_postalCode"></a>3.8.1.10.8. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > address > postalCode`

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

##### <a name="inPlace_inRoom_items_roomAccessibility"></a>3.8.1.11. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > roomAccessibility`

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

| Each item of this array must be                       | Description                                                                             |
| ----------------------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#inPlace_inRoom_items_roomAccessibility_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

###### <a name="inPlace_inRoom_items_roomAccessibility_items"></a>3.8.1.11.1. Offre (Offer) > inPlace > inRoom > Salle (Room) > roomAccessibility > Term

**Title:** Term

|                           |                                           |
| ------------------------- | ----------------------------------------- |
| **Type**                  | `object`                                  |
| **Required**              | No                                        |
| **Additional properties** | Any type allowed                          |
| **Same definition as**    | [additionalType](#inPlace_additionalType) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

##### <a name="inPlace_inRoom_items_roomConfiguration"></a>3.8.1.12. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration`

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

| Each item of this array must be                                         | Description                                           |
| ----------------------------------------------------------------------- | ----------------------------------------------------- |
| [Configuration de salle](#inPlace_inRoom_items_roomConfiguration_items) | Précisions sur un configuration possible de la salle. |

###### <a name="inPlace_inRoom_items_roomConfiguration_items"></a>3.8.1.12.1. Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration > Configuration de salle

**Title:** Configuration de salle

|                           |                                            |
| ------------------------- | ------------------------------------------ |
| **Type**                  | `object`                                   |
| **Required**              | No                                         |
| **Additional properties** | Any type allowed                           |
| **Defined in**            | ./utilities/room_specification.schema.json |

**Description:** Précisions sur un configuration possible de la salle.

| Property                                                              | Title/Description                    | Type    | Definition                                         |
| --------------------------------------------------------------------- | ------------------------------------ | ------- | -------------------------------------------------- |
| + [type](#inPlace_inRoom_items_roomConfiguration_items_type )         | -                                    | const   | -                                                  |
| + [layout](#inPlace_inRoom_items_roomConfiguration_items_layout )     | Term                                 | object  | Same as [additionalType](#inPlace_additionalType ) |
| - [capacity](#inPlace_inRoom_items_roomConfiguration_items_capacity ) | Capacité, en nombre de spectacteurs. | integer | -                                                  |

###### <a name="inPlace_inRoom_items_roomConfiguration_items_type"></a>3.8.1.12.1.1. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration > Configuration de salle > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"RoomConfiguration"`

###### <a name="inPlace_inRoom_items_roomConfiguration_items_layout"></a>3.8.1.12.1.2. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration > Configuration de salle > layout`

**Title:** Term

|                           |                                           |
| ------------------------- | ----------------------------------------- |
| **Type**                  | `object`                                  |
| **Required**              | Yes                                       |
| **Additional properties** | Any type allowed                          |
| **Same definition as**    | [additionalType](#inPlace_additionalType) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

###### <a name="inPlace_inRoom_items_roomConfiguration_items_capacity"></a>3.8.1.12.1.3. Property `Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration > Configuration de salle > capacity`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Capacité, en nombre de spectacteurs.

### <a name="inPlace_address"></a>3.9. Property `Offre (Offer) > inPlace > address`

**Title:** Postal Address

|                           |                                          |
| ------------------------- | ---------------------------------------- |
| **Type**                  | `object`                                 |
| **Required**              | No                                       |
| **Additional properties** | Any type allowed                         |
| **Same definition as**    | [address](#inPlace_inRoom_items_address) |

**Description:** Coordonnées complètes du lieu.

### <a name="inPlace_mainEntityOfPage"></a>3.10. Property `Offre (Offer) > inPlace > mainEntityOfPage`

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

| Each item of this array must be            | Description |
| ------------------------------------------ | ----------- |
| [WebPage](#inPlace_mainEntityOfPage_items) | -           |

#### <a name="inPlace_mainEntityOfPage_items"></a>3.10.1. Offre (Offer) > inPlace > mainEntityOfPage > WebPage

**Title:** WebPage

|                           |                                  |
| ------------------------- | -------------------------------- |
| **Type**                  | `object`                         |
| **Required**              | No                               |
| **Additional properties** | Any type allowed                 |
| **Defined in**            | ./utilities/web_page.schema.json |

| Property                                                    | Title/Description | Type   | Definition                                                |
| ----------------------------------------------------------- | ----------------- | ------ | --------------------------------------------------------- |
| + [type](#inPlace_mainEntityOfPage_items_type )             | -                 | const  | -                                                         |
| + [url](#inPlace_mainEntityOfPage_items_url )               | -                 | string | -                                                         |
| - [inLanguage](#inPlace_mainEntityOfPage_items_inLanguage ) | Code de langue    | string | Same as [lang](#inPlace_additionalType_label_items_lang ) |

##### <a name="inPlace_mainEntityOfPage_items_type"></a>3.10.1.1. Property `Offre (Offer) > inPlace > mainEntityOfPage > WebPage > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"WebPage"`

##### <a name="inPlace_mainEntityOfPage_items_url"></a>3.10.1.2. Property `Offre (Offer) > inPlace > mainEntityOfPage > WebPage > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |
| **Format**   | `uri`    |

##### <a name="inPlace_mainEntityOfPage_items_inLanguage"></a>3.10.1.3. Property `Offre (Offer) > inPlace > mainEntityOfPage > WebPage > inLanguage`

**Title:** Code de langue

|                        |                                                  |
| ---------------------- | ------------------------------------------------ |
| **Type**               | `string`                                         |
| **Required**           | No                                               |
| **Same definition as** | [lang](#inPlace_additionalType_label_items_lang) |

**Description:** Langue de la page Web, au format ISO 639-1.

### <a name="inPlace_placeAccessibility"></a>3.11. Property `Offre (Offer) > inPlace > placeAccessibility`

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

| Each item of this array must be           | Description                                                                             |
| ----------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#inPlace_placeAccessibility_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

#### <a name="inPlace_placeAccessibility_items"></a>3.11.1. Offre (Offer) > inPlace > placeAccessibility > Term

**Title:** Term

|                           |                                           |
| ------------------------- | ----------------------------------------- |
| **Type**                  | `object`                                  |
| **Required**              | No                                        |
| **Additional properties** | Any type allowed                          |
| **Same definition as**    | [additionalType](#inPlace_additionalType) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

### <a name="inPlace_geoCoordinates"></a>3.12. Property `Offre (Offer) > inPlace > geoCoordinates`

**Title:** Coordonnées géographiques d'un point.

|                           |                                         |
| ------------------------- | --------------------------------------- |
| **Type**                  | `object`                                |
| **Required**              | No                                      |
| **Additional properties** | Any type allowed                        |
| **Defined in**            | ./datatypes/geo_coordinates.schema.json |

**Description:** Coordonnées géographiques

| Property                                          | Title/Description | Type   | Definition |
| ------------------------------------------------- | ----------------- | ------ | ---------- |
| + [longitude](#inPlace_geoCoordinates_longitude ) | -                 | number | -          |
| + [latitude](#inPlace_geoCoordinates_latitude )   | -                 | number | -          |

#### <a name="inPlace_geoCoordinates_longitude"></a>3.12.1. Property `Offre (Offer) > inPlace > geoCoordinates > longitude`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | Yes      |

#### <a name="inPlace_geoCoordinates_latitude"></a>3.12.2. Property `Offre (Offer) > inPlace > geoCoordinates > latitude`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | Yes      |

## <a name="inRoom"></a>4. Property `Offre (Offer) > inRoom`

**Title:** Salle (Room)

|                           |                                       |
| ------------------------- | ------------------------------------- |
| **Type**                  | `object`                              |
| **Required**              | No                                    |
| **Additional properties** | Any type allowed                      |
| **Same definition as**    | [Salle (Room)](#inPlace_inRoom_items) |

**Description:** Salle associée à l'offre. La salle fait partie du lieu indiqué à la propriété Lieu.

## <a name="roomConfiguration"></a>5. Property `Offre (Offer) > roomConfiguration`

**Title:** Configuration de salle

|                           |                                                                         |
| ------------------------- | ----------------------------------------------------------------------- |
| **Type**                  | `object`                                                                |
| **Required**              | No                                                                      |
| **Additional properties** | Any type allowed                                                        |
| **Same definition as**    | [Configuration de salle](#inPlace_inRoom_items_roomConfiguration_items) |

**Description:** Configuration de la salle dans le contexte de cette offre.

## <a name="isSoldout"></a>6. Property `Offre (Offer) > isSoldout`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | Yes       |

**Description:** Permet d'indiquer si cette offre est complète (toutes les places disponibles sont comblées). Peut-être complété par la propriété Complet depuis pour préciser à quelle date l'offre est devenue complète.

## <a name="soldoutSince"></a>7. Property `Offre (Offer) > soldoutSince`

|              |             |
| ------------ | ----------- |
| **Type**     | `string`    |
| **Required** | No          |
| **Format**   | `date-time` |

**Description:** Date depuis laquelle l'offre est complète. La propriété Complet doit avoir la valeur vrai pour que Complet depuis puisse être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times

## <a name="offerStatus"></a>8. Property `Offre (Offer) > offerStatus`

**Title:** Statut de l'Offre

|                |                                          |
| -------------- | ---------------------------------------- |
| **Type**       | `enum (of string)`                       |
| **Required**   | Yes                                      |
| **Defined in** | ../vocabularies/event_status.schema.json |

**Description:** Statut de l'offre. La valeur doit être choisie parmi les valeurs du vocabulaire contrôlé Statut de l'offre.

Must be one of:
* "EventScheduled"
* "EventCancelled"
* "EventRescheduled"
* "EventPostponed"
* "EventMovedOnline"

## <a name="price"></a>9. Property `Offre (Offer) > price`

**Title:** Montant Monétaire

|                |                                   |
| -------------- | --------------------------------- |
| **Type**       | `string`                          |
| **Required**   | No                                |
| **Defined in** | ../datatypes/currency.schema.json |

**Description:** Prix de départ en dollars canadiens.

| Restrictions                      |                                                                                                                                                   |
| --------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Must match regular expression** | ```^\d{1,3}(,\d{3})*(\.\d{1,2})?$``` [Test](https://regex101.com/?regex=%5E%5Cd%7B1%2C3%7D%28%2C%5Cd%7B3%7D%29%2A%28%5C.%5Cd%7B1%2C2%7D%29%3F%24) |

## <a name="isAccessibleForFree"></a>10. Property `Offre (Offer) > isAccessibleForFree`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | Yes       |

**Description:** Indique que la présente offre est gratuite.

## <a name="isAccessibleFromAnotherOffer"></a>11. Property `Offre (Offer) > isAccessibleFromAnotherOffer`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | Yes       |

**Description:** Indique que la présente offre est accessible seulement lorsque le consommateur a souscrit à une autre offre.

## <a name="preSaleStart"></a>12. Property `Offre (Offer) > preSaleStart`

|              |             |
| ------------ | ----------- |
| **Type**     | `string`    |
| **Required** | No          |
| **Format**   | `date-time` |

**Description:** Date et heure du début de la prévente. Si la propriété n'est pas documentée, la date de début de disponibilité générale doit être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times

## <a name="generalSaleStart"></a>13. Property `Offre (Offer) > generalSaleStart`

|              |             |
| ------------ | ----------- |
| **Type**     | `string`    |
| **Required** | No          |
| **Format**   | `date-time` |

**Description:** Date et heure du début de la disponibilité générale. Si la propriété n'est pas documentée, il faut considérer que l'offre est disponible en tout temps, jusqu'à la date de début et l'heure de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times

## <a name="ticketLinkNotAvailable"></a>14. Property `Offre (Offer) > ticketLinkNotAvailable`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | Yes       |

**Description:** Indication à l'effet qu'il n'existe pas de lien permettant d'obtenir, par le web, un accès à la représentation.

## <a name="ticketLink"></a>15. Property `Offre (Offer) > ticketLink`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |
| **Format**   | `uri`    |

**Description:** URL d'une page permettant de souscire à l'offre, par exemple un lien vers la page de la plateforme de billetterie.

----------------------------------------------------------------------------------------------------------------------------
Generated using [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) on 2025-09-05 at 15:39:36 -0400
