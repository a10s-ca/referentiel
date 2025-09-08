# Contribution

**Title:** Contribution

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

| Property                                 | Title/Description                                                                                                                                           | Type    | Definition                                                |
| ---------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- | --------------------------------------------------------- |
| + [type](#type )                         | -                                                                                                                                                           | const   | -                                                         |
| + [contributionType](#contributionType ) | Identification des types de contribution.                                                                                                                   | array   | -                                                         |
| + [contributeur](#contributeur )         | Contributor                                                                                                                                                 | object  | In ../contributor.schema.json                             |
| - [sequenceNumber](#sequenceNumber )     | Précision sur l'ordre de présentation des contributions (les nombres plus petits correspondent à des contributions qui doivent être présentées en premier). | integer | -                                                         |
| - [usageNote](#usageNote )               | Texte court                                                                                                                                                 | string  | Same as [vocabulary](#contributionType_items_vocabulary ) |

## <a name="type"></a>1. Property `Contribution > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Contribution"`

## <a name="contributionType"></a>2. Property `Contribution > contributionType`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | Yes     |

**Description:** Identification des types de contribution.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be | Description                                                                             |
| ------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#contributionType_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="contributionType_items"></a>2.1. Contribution > contributionType > Term

**Title:** Term

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |
| **Defined in**            | term.schema.json |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

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
| + [type](#contributionType_items_type )                     | -                                                                                                        | const           | -                                                         |
| + [vocabulary](#contributionType_items_vocabulary )         | Texte court                                                                                              | string          | In ../datatypes/text_short.schema.json                    |
| - [version](#contributionType_items_version )               | Texte court                                                                                              | string          | Same as [vocabulary](#contributionType_items_vocabulary ) |
| + [code](#contributionType_items_code )                     | Texte court                                                                                              | string          | Same as [vocabulary](#contributionType_items_vocabulary ) |
| - [label](#contributionType_items_label )                   | Texte court multilingue                                                                                  | array of object | In ../datatypes/text_short_multilingual.schema.json       |
| + [sequenceNumber](#contributionType_items_sequenceNumber ) | Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé). | integer         | -                                                         |

#### <a name="contributionType_items_type"></a>2.1.1. Property `Contribution > contributionType > Term > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Term"`

#### <a name="contributionType_items_vocabulary"></a>2.1.2. Property `Contribution > contributionType > Term > vocabulary`

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

#### <a name="contributionType_items_version"></a>2.1.3. Property `Contribution > contributionType > Term > version`

**Title:** Texte court

|                        |                                                  |
| ---------------------- | ------------------------------------------------ |
| **Type**               | `string`                                         |
| **Required**           | No                                               |
| **Same definition as** | [vocabulary](#contributionType_items_vocabulary) |

**Description:** Version du vocabulaire utilisé, lorsque c'est applicable

#### <a name="contributionType_items_code"></a>2.1.4. Property `Contribution > contributionType > Term > code`

**Title:** Texte court

|                        |                                                  |
| ---------------------- | ------------------------------------------------ |
| **Type**               | `string`                                         |
| **Required**           | Yes                                              |
| **Same definition as** | [vocabulary](#contributionType_items_vocabulary) |

**Description:** Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.

#### <a name="contributionType_items_label"></a>2.1.5. Property `Contribution > contributionType > Term > label`

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
| [label items](#contributionType_items_label_items) | -           |

##### <a name="contributionType_items_label_items"></a>2.1.5.1. Contribution > contributionType > Term > label > label items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                                              | Title/Description | Type   | Definition                         |
| ----------------------------------------------------- | ----------------- | ------ | ---------------------------------- |
| + [lang](#contributionType_items_label_items_lang )   | Code de langue    | string | In ./partials/language.schema.json |
| + [value](#contributionType_items_label_items_value ) | Texte court       | string | In ./partials/no_html.schema.json  |

###### <a name="contributionType_items_label_items_lang"></a>2.1.5.1.1. Property `Contribution > contributionType > Term > label > label items > lang`

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

###### <a name="contributionType_items_label_items_value"></a>2.1.5.1.2. Property `Contribution > contributionType > Term > label > label items > value`

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

#### <a name="contributionType_items_sequenceNumber"></a>2.1.6. Property `Contribution > contributionType > Term > sequenceNumber`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | Yes       |

**Description:** Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).

## <a name="contributeur"></a>3. Property `Contribution > contributeur`

**Title:** Contributor

|                           |                            |
| ------------------------- | -------------------------- |
| **Type**                  | `object`                   |
| **Required**              | Yes                        |
| **Additional properties** | Any type allowed           |
| **Defined in**            | ../contributor.schema.json |

**Description:** Identification du contributeur

| Property                                                            | Title/Description                                                                                                                                                                                                     | Type             | Definition                                        |
| ------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- | ------------------------------------------------- |
| + [type](#contributeur_type )                                       | -                                                                                                                                                                                                                     | const            | -                                                 |
| + [contributorType](#contributeur_contributorType )                 | Type de contributeur                                                                                                                                                                                                  | enum (of string) | In ./vocabularies/contributor_type.schema.json    |
| + [identifier](#contributeur_identifier )                           | identifier                                                                                                                                                                                                            | array            | In ./utilities/identifier.schema.json             |
| + [name](#contributeur_name )                                       | Texte court multilingue                                                                                                                                                                                               | array of object  | Same as [label](#contributionType_items_label )   |
| - [alternateName](#contributeur_alternateName )                     | Autres appellations parfois utilisées pour le contributeur.<br /><br />Exemple: «Béatrice Martin» comme nom alternatif de «Cœur de pirate».<br />Exemple: «Compagnie Jean-Duceppe» comme nom alternatif de «Duceppe». | array            | -                                                 |
| - [description](#contributeur_description )                         | Texte long multilingue                                                                                                                                                                                                | array of object  | In ./datatypes/text_long_multilingual.schema.json |
| - [shortDescription](#contributeur_shortDescription )               | Texte long multilingue                                                                                                                                                                                                | array of object  | Same as [description](#contributeur_description ) |
| - [media](#contributeur_media )                                     | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au contributeur.                                                                                                                      | array            | -                                                 |
| - [typicalContributionType](#contributeur_typicalContributionType ) | Énumération des types de contributions habituellement faites par le contributeur.                                                                                                                                     | array            | -                                                 |
| - [hasGeographicRelation](#contributeur_hasGeographicRelation )     | Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.                                                                                  | array            | -                                                 |
| - [hasMembers](#contributeur_hasMembers )                           | Énumération des membres des groupes, troupes et collectifs, etc.                                                                                                                                                      | array            | -                                                 |

### <a name="contributeur_type"></a>3.1. Property `Contribution > contributeur > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Contributor"`

### <a name="contributeur_contributorType"></a>3.2. Property `Contribution > contributeur > contributorType`

**Title:** Type de contributeur

|                |                                             |
| -------------- | ------------------------------------------- |
| **Type**       | `enum (of string)`                          |
| **Required**   | Yes                                         |
| **Defined in** | ./vocabularies/contributor_type.schema.json |

**Description:** Indication à l'effet qu'il s'agit d'une personne physique ou d'une personne morale.

Must be one of:
* "Person"
* "Group"
* "Organization"

### <a name="contributeur_identifier"></a>3.3. Property `Contribution > contributeur > identifier`

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

| Each item of this array must be                    | Description |
| -------------------------------------------------- | ----------- |
| [identifier items](#contributeur_identifier_items) | -           |

#### <a name="contributeur_identifier_items"></a>3.3.1. Contribution > contributeur > identifier > identifier items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Any of(Option)                                    |
| ------------------------------------------------- |
| [item 0](#contributeur_identifier_items_anyOf_i0) |
| [item 1](#contributeur_identifier_items_anyOf_i1) |

##### <a name="contributeur_identifier_items_anyOf_i0"></a>3.3.1.1. Property `Contribution > contributeur > identifier > identifier items > anyOf > item 0`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                            | Title/Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Type   | Definition |
| ------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------ | ---------- |
| + [type](#contributeur_identifier_items_anyOf_i0_type )             | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | const  | -          |
| + [propertyID](#contributeur_identifier_items_anyOf_i0_propertyID ) | Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles. | string | -          |
| + [value](#contributeur_identifier_items_anyOf_i0_value )           | L'identifiant lui-même                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | string | -          |

###### <a name="contributeur_identifier_items_anyOf_i0_type"></a>3.3.1.1.1. Property `Contribution > contributeur > identifier > identifier items > anyOf > item 0 > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"PropertyValue"`

###### <a name="contributeur_identifier_items_anyOf_i0_propertyID"></a>3.3.1.1.2. Property `Contribution > contributeur > identifier > identifier items > anyOf > item 0 > propertyID`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles.

| Restrictions   |   |
| -------------- | - |
| **Min length** | 1 |

###### <a name="contributeur_identifier_items_anyOf_i0_value"></a>3.3.1.1.3. Property `Contribution > contributeur > identifier > identifier items > anyOf > item 0 > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** L'identifiant lui-même

| Restrictions   |   |
| -------------- | - |
| **Min length** | 1 |

##### <a name="contributeur_identifier_items_anyOf_i1"></a>3.3.1.2. Property `Contribution > contributeur > identifier > identifier items > anyOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |
| **Format**   | `uri`    |

**Description:** Un identifiant URI sous forme de chaîne de caractères.

### <a name="contributeur_name"></a>3.4. Property `Contribution > contributeur > name`

**Title:** Texte court multilingue

|                        |                                        |
| ---------------------- | -------------------------------------- |
| **Type**               | `array of object`                      |
| **Required**           | Yes                                    |
| **Same definition as** | [label](#contributionType_items_label) |

**Description:** Nom complet du contributeur, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. Le prénom et le nom de sont pas traités dans des propriétés distinctes à cause de la diversité des appellations de contributions, qui sont parfois des personnes morales.

Exemples: Michel Rivard, Les Trois Accords, Koriass, Desjardins, Spectra.

### <a name="contributeur_alternateName"></a>3.5. Property `Contribution > contributeur > alternateName`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Autres appellations parfois utilisées pour le contributeur.

Exemple: «Béatrice Martin» comme nom alternatif de «Cœur de pirate».
Exemple: «Compagnie Jean-Duceppe» comme nom alternatif de «Duceppe».

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                              | Description                                                                                 |
| ------------------------------------------------------------ | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#contributeur_alternateName_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

#### <a name="contributeur_alternateName_items"></a>3.5.1. Contribution > contributeur > alternateName > Texte court multilingue

**Title:** Texte court multilingue

|                        |                                        |
| ---------------------- | -------------------------------------- |
| **Type**               | `array of object`                      |
| **Required**           | No                                     |
| **Same definition as** | [label](#contributionType_items_label) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

### <a name="contributeur_description"></a>3.6. Property `Contribution > contributeur > description`

**Title:** Texte long multilingue

|                |                                                |
| -------------- | ---------------------------------------------- |
| **Type**       | `array of object`                              |
| **Required**   | No                                             |
| **Defined in** | ./datatypes/text_long_multilingual.schema.json |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | True               |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                      | Description |
| ---------------------------------------------------- | ----------- |
| [description items](#contributeur_description_items) | -           |

#### <a name="contributeur_description_items"></a>3.6.1. Contribution > contributeur > description > description items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                                          | Title/Description | Type   | Definition                                                |
| ------------------------------------------------- | ----------------- | ------ | --------------------------------------------------------- |
| + [lang](#contributeur_description_items_lang )   | Code de langue    | string | Same as [lang](#contributionType_items_label_items_lang ) |
| + [value](#contributeur_description_items_value ) | Texte long        | string | In ./partials/authorized_html.schema.json                 |

##### <a name="contributeur_description_items_lang"></a>3.6.1.1. Property `Contribution > contributeur > description > description items > lang`

**Title:** Code de langue

|                        |                                                  |
| ---------------------- | ------------------------------------------------ |
| **Type**               | `string`                                         |
| **Required**           | Yes                                              |
| **Same definition as** | [lang](#contributionType_items_label_items_lang) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

##### <a name="contributeur_description_items_value"></a>3.6.1.2. Property `Contribution > contributeur > description > description items > value`

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

### <a name="contributeur_shortDescription"></a>3.7. Property `Contribution > contributeur > shortDescription`

**Title:** Texte long multilingue

|                        |                                          |
| ---------------------- | ---------------------------------------- |
| **Type**               | `array of object`                        |
| **Required**           | No                                       |
| **Same definition as** | [description](#contributeur_description) |

**Description:** Description résumée du contributeur. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage.

### <a name="contributeur_media"></a>3.8. Property `Contribution > contributeur > media`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au contributeur.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be    | Description                                                                                          |
| ---------------------------------- | ---------------------------------------------------------------------------------------------------- |
| [Média](#contributeur_media_items) | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

#### <a name="contributeur_media_items"></a>3.8.1. Contribution > contributeur > media > Média

**Title:** Média

|                           |                               |
| ------------------------- | ----------------------------- |
| **Type**                  | `object`                      |
| **Required**              | No                            |
| **Additional properties** | Any type allowed              |
| **Defined in**            | ./utilities/media.schema.json |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

| Property                                                        | Title/Description                                                                                                                                                                                                                              | Type            | Definition                                                |
| --------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------- |
| + [type](#contributeur_media_items_type )                       | -                                                                                                                                                                                                                                              | const           | -                                                         |
| - [sequenceNumber](#contributeur_media_items_sequenceNumber )   | Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                       | integer         | -                                                         |
| - [usageNote](#contributeur_media_items_usageNote )             | Texte court                                                                                                                                                                                                                                    | string          | Same as [vocabulary](#contributionType_items_vocabulary ) |
| + [url](#contributeur_media_items_url )                         | URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible                                                                                     | string          | -                                                         |
| - [inLanguage](#contributeur_media_items_inLanguage )           | Code de langue                                                                                                                                                                                                                                 | string          | Same as [lang](#contributionType_items_label_items_lang ) |
| - [license](#contributeur_media_items_license )                 | Licence d'utilisation du média. Une valeur vide ou non définie correspond à un média libre de droits. Si des conditions s'appliquent, elles doivent être définies dans cette propriété, ou sur le web à une URL intégrée dans cette propriété. | array           | -                                                         |
| - [creditText](#contributeur_media_items_creditText )           | Crédits associés au média.                                                                                                                                                                                                                     | array           | -                                                         |
| - [copyrightHolder](#contributeur_media_items_copyrightHolder ) | Texte court multilingue                                                                                                                                                                                                                        | array of object | Same as [label](#contributionType_items_label )           |
| - [description](#contributeur_media_items_description )         | Description courte (pouvant par exemple servir de «alt description» sur le web).                                                                                                                                                               | array           | -                                                         |

##### <a name="contributeur_media_items_type"></a>3.8.1.1. Property `Contribution > contributeur > media > Média > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Media"`

##### <a name="contributeur_media_items_sequenceNumber"></a>3.8.1.2. Property `Contribution > contributeur > media > Média > sequenceNumber`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).

##### <a name="contributeur_media_items_usageNote"></a>3.8.1.3. Property `Contribution > contributeur > media > Média > usageNote`

**Title:** Texte court

|                        |                                                  |
| ---------------------- | ------------------------------------------------ |
| **Type**               | `string`                                         |
| **Required**           | No                                               |
| **Same definition as** | [vocabulary](#contributionType_items_vocabulary) |

**Description:** Texte libre permettant d'identifier les usages possibles du média (à l'intention des opérateurs des systèmes, pas du grand public, et donc pas pour publication).

##### <a name="contributeur_media_items_url"></a>3.8.1.4. Property `Contribution > contributeur > media > Média > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |
| **Format**   | `uri`    |

**Description:** URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible

##### <a name="contributeur_media_items_inLanguage"></a>3.8.1.5. Property `Contribution > contributeur > media > Média > inLanguage`

**Title:** Code de langue

|                        |                                                  |
| ---------------------- | ------------------------------------------------ |
| **Type**               | `string`                                         |
| **Required**           | No                                               |
| **Same definition as** | [lang](#contributionType_items_label_items_lang) |

**Description:** Langue au format ISO 639-1.

##### <a name="contributeur_media_items_license"></a>3.8.1.6. Property `Contribution > contributeur > media > Média > license`

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
| [Texte court multilingue](#contributeur_media_items_license_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

###### <a name="contributeur_media_items_license_items"></a>3.8.1.6.1. Contribution > contributeur > media > Média > license > Texte court multilingue

**Title:** Texte court multilingue

|                        |                                        |
| ---------------------- | -------------------------------------- |
| **Type**               | `array of object`                      |
| **Required**           | No                                     |
| **Same definition as** | [label](#contributionType_items_label) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

##### <a name="contributeur_media_items_creditText"></a>3.8.1.7. Property `Contribution > contributeur > media > Média > creditText`

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
| [Texte court multilingue](#contributeur_media_items_creditText_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

###### <a name="contributeur_media_items_creditText_items"></a>3.8.1.7.1. Contribution > contributeur > media > Média > creditText > Texte court multilingue

**Title:** Texte court multilingue

|                        |                                        |
| ---------------------- | -------------------------------------- |
| **Type**               | `array of object`                      |
| **Required**           | No                                     |
| **Same definition as** | [label](#contributionType_items_label) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

##### <a name="contributeur_media_items_copyrightHolder"></a>3.8.1.8. Property `Contribution > contributeur > media > Média > copyrightHolder`

**Title:** Texte court multilingue

|                        |                                        |
| ---------------------- | -------------------------------------- |
| **Type**               | `array of object`                      |
| **Required**           | No                                     |
| **Same definition as** | [label](#contributionType_items_label) |

**Description:** Personne ou organisation détenant les droits d'auteur du média.

##### <a name="contributeur_media_items_description"></a>3.8.1.9. Property `Contribution > contributeur > media > Média > description`

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
| [Texte long multilingue](#contributeur_media_items_description_items) | Énumération de textes longs associés à un code de langue au standard ISO 639-1. |

###### <a name="contributeur_media_items_description_items"></a>3.8.1.9.1. Contribution > contributeur > media > Média > description > Texte long multilingue

**Title:** Texte long multilingue

|                        |                                          |
| ---------------------- | ---------------------------------------- |
| **Type**               | `array of object`                        |
| **Required**           | No                                       |
| **Same definition as** | [description](#contributeur_description) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

### <a name="contributeur_typicalContributionType"></a>3.9. Property `Contribution > contributeur > typicalContributionType`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Énumération des types de contributions habituellement faites par le contributeur.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                     | Description                                                                             |
| --------------------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#contributeur_typicalContributionType_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

#### <a name="contributeur_typicalContributionType_items"></a>3.9.1. Contribution > contributeur > typicalContributionType > Term

**Title:** Term

|                           |                                 |
| ------------------------- | ------------------------------- |
| **Type**                  | `object`                        |
| **Required**              | No                              |
| **Additional properties** | Any type allowed                |
| **Same definition as**    | [Term](#contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

### <a name="contributeur_hasGeographicRelation"></a>3.10. Property `Contribution > contributeur > hasGeographicRelation`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                                            | Description                                                                                                                          |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ |
| [Association Géographique (GeographicRelation)](#contributeur_hasGeographicRelation_items) | Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc. |

#### <a name="contributeur_hasGeographicRelation_items"></a>3.10.1. Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation)

**Title:** Association Géographique (GeographicRelation)

|                           |                                             |
| ------------------------- | ------------------------------------------- |
| **Type**                  | `object`                                    |
| **Required**              | No                                          |
| **Additional properties** | Not allowed                                 |
| **Defined in**            | ./utilities/geographic_relation.schema.json |

**Description:** Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.

| Property                                                                        | Title/Description | Type   | Definition                                                |
| ------------------------------------------------------------------------------- | ----------------- | ------ | --------------------------------------------------------- |
| + [type](#contributeur_hasGeographicRelation_items_type )                       | -                 | const  | -                                                         |
| - [relationType](#contributeur_hasGeographicRelation_items_relationType )       | Term              | object | Same as [Term](#contributionType_items )                  |
| - [addressCountry](#contributeur_hasGeographicRelation_items_addressCountry )   | Code Pays         | string | In ../datatypes/country_code.schema.json                  |
| - [addressRegion](#contributeur_hasGeographicRelation_items_addressRegion )     | Texte court       | string | Same as [vocabulary](#contributionType_items_vocabulary ) |
| - [addressLocality](#contributeur_hasGeographicRelation_items_addressLocality ) | Texte court       | string | Same as [vocabulary](#contributionType_items_vocabulary ) |

##### <a name="contributeur_hasGeographicRelation_items_type"></a>3.10.1.1. Property `Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"GeographicRelation"`

##### <a name="contributeur_hasGeographicRelation_items_relationType"></a>3.10.1.2. Property `Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > relationType`

**Title:** Term

|                           |                                 |
| ------------------------- | ------------------------------- |
| **Type**                  | `object`                        |
| **Required**              | No                              |
| **Additional properties** | Any type allowed                |
| **Same definition as**    | [Term](#contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

##### <a name="contributeur_hasGeographicRelation_items_addressCountry"></a>3.10.1.3. Property `Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > addressCountry`

**Title:** Code Pays

|                |                                       |
| -------------- | ------------------------------------- |
| **Type**       | `string`                              |
| **Required**   | No                                    |
| **Defined in** | ../datatypes/country_code.schema.json |

**Description:** Code ISO 3166-1 alpha-3 à 3 caractères représentant un pays.

| Restrictions                      |                                                                             |
| --------------------------------- | --------------------------------------------------------------------------- |
| **Min length**                    | 3                                                                           |
| **Max length**                    | 3                                                                           |
| **Must match regular expression** | ```^[A-Z]{3}$``` [Test](https://regex101.com/?regex=%5E%5BA-Z%5D%7B3%7D%24) |

##### <a name="contributeur_hasGeographicRelation_items_addressRegion"></a>3.10.1.4. Property `Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > addressRegion`

**Title:** Texte court

|                        |                                                  |
| ---------------------- | ------------------------------------------------ |
| **Type**               | `string`                                         |
| **Required**           | No                                               |
| **Same definition as** | [vocabulary](#contributionType_items_vocabulary) |

**Description:** Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne)

##### <a name="contributeur_hasGeographicRelation_items_addressLocality"></a>3.10.1.5. Property `Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > addressLocality`

**Title:** Texte court

|                        |                                                  |
| ---------------------- | ------------------------------------------------ |
| **Type**               | `string`                                         |
| **Required**           | No                                               |
| **Same definition as** | [vocabulary](#contributionType_items_vocabulary) |

**Description:** Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne)

### <a name="contributeur_hasMembers"></a>3.11. Property `Contribution > contributeur > hasMembers`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Énumération des membres des groupes, troupes et collectifs, etc.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be               | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| --------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contributor](#contributeur_hasMembers_items) | les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre). |

#### <a name="contributeur_hasMembers_items"></a>3.11.1. Contribution > contributeur > hasMembers > Contributor

**Title:** Contributor

|                           |                               |
| ------------------------- | ----------------------------- |
| **Type**                  | `object`                      |
| **Required**              | No                            |
| **Additional properties** | Any type allowed              |
| **Same definition as**    | [contributeur](#contributeur) |

**Description:** les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre).

## <a name="sequenceNumber"></a>4. Property `Contribution > sequenceNumber`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Précision sur l'ordre de présentation des contributions (les nombres plus petits correspondent à des contributions qui doivent être présentées en premier).

## <a name="usageNote"></a>5. Property `Contribution > usageNote`

**Title:** Texte court

|                        |                                                  |
| ---------------------- | ------------------------------------------------ |
| **Type**               | `string`                                         |
| **Required**           | No                                               |
| **Same definition as** | [vocabulary](#contributionType_items_vocabulary) |

**Description:** Note concernant la contribution, à l'intention des exploitants des systèmes d'information (et donc pas du grand public). Il peut s'agir d'une précision sur le type de contribution, qui ne pourrait pas être exprimée à travers la propriété Types. Les informations compilées dans les notes pourraient être utilisées pour améliorer les vocabulaires contrôllés.

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2025-09-08 at 14:26:54 -0400
