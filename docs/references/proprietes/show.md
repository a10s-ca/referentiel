# Spectacle (Show)

**Title:** Spectacle (Show)

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

**Description:** la classe centrale du référentiel. Elle permet de documenter ce qui relève du spectacle au sens d'œuvre mise en scène. Par contraste, cela exclut donc les éléments descriptifs des représentations.

| Property                                               | Title/Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | Type            | Definition                                         |
| ------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | -------------------------------------------------- |
| + [@context](#@context )                               | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | const           | -                                                  |
| + [type](#type )                                       | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | const           | -                                                  |
| + [identifier](#identifier )                           | identifier                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | array           | In ./utilities/identifier.schema.json              |
| + [name](#name )                                       | Texte court multilingue                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | array of object | In ./datatypes/text_short_multilingual.schema.json |
| - [alternateName](#alternateName )                     | Texte court multilingue                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | array of object | In ./datatypes/text_short_multilingual.schema.json |
| + [description](#description )                         | Texte long multilingue                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | array of object | In ./datatypes/text_long_multilingual.schema.json  |
| - [shortDescription](#shortDescription )               | Texte long multilingue                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | array of object | Same as [description](#description )               |
| - [media](#media )                                     | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au spectacle.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | array           | -                                                  |
| - [hasContribution](#hasContribution )                 | Énumération des contributions. Il peut s'agir de contribution à la création (ex: auteur.trice, metteur.se en scène), de contributions à l'exécution (ex: comédien.en, musicien.ne).<br /><br />Le contributeur peut être une personne ou une organisation.<br /><br />Il s'agit de contributeurs qui sont associés à toutes les représentations du spectacle. Pour les contributions spécifiques à une représentation, utiliser le champ correspondant dans la classe Représentation.<br /><br />Si un même contributeur a plusieurs contributions pour un même spectacle, il est suggéré de répéter plusieurs objets de la classe Contribution.                                                                                                                                                      | array           | -                                                  |
| - [mainEntityOfPage](#mainEntityOfPage )               | Vers des pages web donnant plus d'information sur le spectacle.<br /><br />Pour des besoins plus précis, par exemple des URL de critiques du spectacle, la propriété Médias, qui permet d'inclure des notes d'usage, peut être utilisée.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | array           | -                                                  |
| - [hasRelatedWork](#hasRelatedWork )                   | Énumérations d'oeuvres, de la même discipline ou pas, qui sont associées au spectacle. Il peut s'agir du texte d'une pièce de théâtre, d'un album musical associé à un spectacle, etc. Il doit s'agir d'associations avec des oeuvres qui ne peuvent pas être identifiées aisément à travers d'autres propriétés.<br /><br />Exemple 1: les données d'une pièce de théâtre peuvent pointer vers le texte de la pièce, disponible en librairie.<br /><br />Exemple 2: les données d'un spectacle musical peuvent énumérer des enregistrements des pièces jouées lors du spectacle.<br /><br />Contre exemple: il n'est pas utile que les données d'un spectacle d'humour énumère les autres spectacles du même humoriste, car il est possible d'obtenir cette information à travers les contributeurs. | array           | -                                                  |
| + [discipline](#discipline )                           | Identification des disciplines artistiques du spectacle.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | array           | -                                                  |
| + [audience](#audience )                               | Identification des publics cibles du spectacle.<br /><br />Lorsque le vocabulaire utilisé contient un terme équivalent à « tout public », il est préférable de l'utiliser, que d'énumérer tous les types de publics.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | array           | -                                                  |
| - [inLanguage](#inLanguage )                           | Langues utilisées dans le spectacle, en ordre décroissant d'importance. La langue principale doit donc être mentionnée en premier.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | array           | -                                                  |
| - [supportMaterialLanguage](#supportMaterialLanguage ) | Langues pour lesquelles des artéfacts d'aide à la compréhension du spectacle sont disponibles (surtitrage, programmes, traduction simultannée...)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | array           | -                                                  |
| + [showWithoutWords](#showWithoutWords )               | Indication à l'effet que le spectacle ne contient pas de paroles.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | boolean         | -                                                  |
| - [contentType](#contentType )                         | Permet d'identifier certains type de contenus qui sont présents dans le spectacle.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | array           | -                                                  |
| - [contentWarning](#contentWarning )                   | Permet d'identifier des avertissements associés au spectacle.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | array           | -                                                  |
| - [hasPerformance](#hasPerformance )                   | Énumération des représentations du spectacle, qu'elles soient passées ou futures.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | array           | -                                                  |

## <a name="autogenerated_heading_2"></a>1. If (showWithoutWords = false)

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

### <a name="autogenerated_heading_3"></a>1.1. The following properties are required
* inLanguage

## <a name="@context"></a>2. Property `Spectacle (Show) > @context`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"https://datascence.ca/context.jsonld"`

## <a name="type"></a>3. Property `Spectacle (Show) > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Show"`

## <a name="identifier"></a>4. Property `Spectacle (Show) > identifier`

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

### <a name="identifier_items"></a>4.1. Spectacle (Show) > identifier > identifier items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Any of(Option)                       |
| ------------------------------------ |
| [item 0](#identifier_items_anyOf_i0) |
| [item 1](#identifier_items_anyOf_i1) |

#### <a name="identifier_items_anyOf_i0"></a>4.1.1. Property `Spectacle (Show) > identifier > identifier items > anyOf > item 0`

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

##### <a name="identifier_items_anyOf_i0_type"></a>4.1.1.1. Property `Spectacle (Show) > identifier > identifier items > anyOf > item 0 > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"PropertyValue"`

##### <a name="identifier_items_anyOf_i0_propertyID"></a>4.1.1.2. Property `Spectacle (Show) > identifier > identifier items > anyOf > item 0 > propertyID`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles.

| Restrictions   |   |
| -------------- | - |
| **Min length** | 1 |

##### <a name="identifier_items_anyOf_i0_value"></a>4.1.1.3. Property `Spectacle (Show) > identifier > identifier items > anyOf > item 0 > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** L'identifiant lui-même

| Restrictions   |   |
| -------------- | - |
| **Min length** | 1 |

#### <a name="identifier_items_anyOf_i1"></a>4.1.2. Property `Spectacle (Show) > identifier > identifier items > anyOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |
| **Format**   | `uri`    |

**Description:** Un identifiant URI sous forme de chaîne de caractères.

## <a name="name"></a>5. Property `Spectacle (Show) > name`

**Title:** Texte court multilingue

|                |                                                 |
| -------------- | ----------------------------------------------- |
| **Type**       | `array of object`                               |
| **Required**   | Yes                                             |
| **Defined in** | ./datatypes/text_short_multilingual.schema.json |

**Description:** Nom du spectacle, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | True               |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be | Description |
| ------------------------------- | ----------- |
| [name items](#name_items)       | -           |

### <a name="name_items"></a>5.1. Spectacle (Show) > name > name items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                      | Title/Description | Type   | Definition                         |
| ----------------------------- | ----------------- | ------ | ---------------------------------- |
| + [lang](#name_items_lang )   | Code de langue    | string | In ./partials/language.schema.json |
| + [value](#name_items_value ) | Texte court       | string | In ./partials/no_html.schema.json  |

#### <a name="name_items_lang"></a>5.1.1. Property `Spectacle (Show) > name > name items > lang`

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

#### <a name="name_items_value"></a>5.1.2. Property `Spectacle (Show) > name > name items > value`

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

## <a name="alternateName"></a>6. Property `Spectacle (Show) > alternateName`

**Title:** Texte court multilingue

|                |                                                 |
| -------------- | ----------------------------------------------- |
| **Type**       | `array of object`                               |
| **Required**   | No                                              |
| **Defined in** | ./datatypes/text_short_multilingual.schema.json |

**Description:** Élément qui ne fait pas partie du nom, mais qui le complète, sans toutefois relever de la description elle-même.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | True               |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be | Description |
| ------------------------------- | ----------- |
| [name items](#name_items)       | -           |

### <a name="name_items"></a>6.1. Spectacle (Show) > name > name items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                      | Title/Description | Type   | Definition                         |
| ----------------------------- | ----------------- | ------ | ---------------------------------- |
| + [lang](#name_items_lang )   | Code de langue    | string | In ./partials/language.schema.json |
| + [value](#name_items_value ) | Texte court       | string | In ./partials/no_html.schema.json  |

#### <a name="name_items_lang"></a>6.1.1. Property `Spectacle (Show) > name > name items > lang`

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

#### <a name="name_items_value"></a>6.1.2. Property `Spectacle (Show) > name > name items > value`

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

## <a name="description"></a>7. Property `Spectacle (Show) > description`

**Title:** Texte long multilingue

|                |                                                |
| -------------- | ---------------------------------------------- |
| **Type**       | `array of object`                              |
| **Required**   | Yes                                            |
| **Defined in** | ./datatypes/text_long_multilingual.schema.json |

**Description:** Description du spectacle

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | True               |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be         | Description |
| --------------------------------------- | ----------- |
| [description items](#description_items) | -           |

### <a name="description_items"></a>7.1. Spectacle (Show) > description > description items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                             | Title/Description | Type   | Definition                                |
| ------------------------------------ | ----------------- | ------ | ----------------------------------------- |
| + [lang](#description_items_lang )   | Code de langue    | string | Same as [lang](#name_items_lang )         |
| + [value](#description_items_value ) | Texte long        | string | In ./partials/authorized_html.schema.json |

#### <a name="description_items_lang"></a>7.1.1. Property `Spectacle (Show) > description > description items > lang`

**Title:** Code de langue

|                        |                          |
| ---------------------- | ------------------------ |
| **Type**               | `string`                 |
| **Required**           | Yes                      |
| **Same definition as** | [lang](#name_items_lang) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

#### <a name="description_items_value"></a>7.1.2. Property `Spectacle (Show) > description > description items > value`

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

## <a name="shortDescription"></a>8. Property `Spectacle (Show) > shortDescription`

**Title:** Texte long multilingue

|                        |                             |
| ---------------------- | --------------------------- |
| **Type**               | `array of object`           |
| **Required**           | No                          |
| **Same definition as** | [description](#description) |

**Description:** Description résumée du spectacle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage.

## <a name="media"></a>9. Property `Spectacle (Show) > media`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au spectacle.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be | Description                                                                                          |
| ------------------------------- | ---------------------------------------------------------------------------------------------------- |
| [Média](#media_items)           | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

### <a name="media_items"></a>9.1. Spectacle (Show) > media > Média

**Title:** Média

|                           |                               |
| ------------------------- | ----------------------------- |
| **Type**                  | `object`                      |
| **Required**              | No                            |
| **Additional properties** | Any type allowed              |
| **Defined in**            | ./utilities/media.schema.json |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

| Property                                           | Title/Description                                                                                                                                                                                                                              | Type            | Definition                             |
| -------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | -------------------------------------- |
| + [type](#media_items_type )                       | -                                                                                                                                                                                                                                              | const           | -                                      |
| - [sequenceNumber](#media_items_sequenceNumber )   | Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                       | integer         | -                                      |
| - [usageNote](#media_items_usageNote )             | Texte court                                                                                                                                                                                                                                    | string          | In ../datatypes/text_short.schema.json |
| + [url](#media_items_url )                         | URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible                                                                                     | string          | -                                      |
| - [inLanguage](#media_items_inLanguage )           | Code de langue                                                                                                                                                                                                                                 | string          | Same as [lang](#name_items_lang )      |
| - [license](#media_items_license )                 | Licence d'utilisation du média. Une valeur vide ou non définie correspond à un média libre de droits. Si des conditions s'appliquent, elles doivent être définies dans cette propriété, ou sur le web à une URL intégrée dans cette propriété. | array           | -                                      |
| - [creditText](#media_items_creditText )           | Crédits associés au média.                                                                                                                                                                                                                     | array           | -                                      |
| - [copyrightHolder](#media_items_copyrightHolder ) | Texte court multilingue                                                                                                                                                                                                                        | array of object | Same as [name](#name )                 |
| - [description](#media_items_description )         | Description courte (pouvant par exemple servir de «alt description» sur le web).                                                                                                                                                               | array           | -                                      |

#### <a name="media_items_type"></a>9.1.1. Property `Spectacle (Show) > media > Média > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Media"`

#### <a name="media_items_sequenceNumber"></a>9.1.2. Property `Spectacle (Show) > media > Média > sequenceNumber`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).

#### <a name="media_items_usageNote"></a>9.1.3. Property `Spectacle (Show) > media > Média > usageNote`

**Title:** Texte court

|                |                                     |
| -------------- | ----------------------------------- |
| **Type**       | `string`                            |
| **Required**   | No                                  |
| **Defined in** | ../datatypes/text_short.schema.json |

**Description:** Texte libre permettant d'identifier les usages possibles du média (à l'intention des opérateurs des systèmes, pas du grand public, et donc pas pour publication).

| Restrictions                      |                                                                                                             |
| --------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Min length**                    | 1                                                                                                           |
| **Max length**                    | 500                                                                                                         |
| **Must match regular expression** | ```^(?!.*<[^>]+>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5E%3E%5D%2B%3E%29.%2A%24) |

#### <a name="media_items_url"></a>9.1.4. Property `Spectacle (Show) > media > Média > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |
| **Format**   | `uri`    |

**Description:** URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible

#### <a name="media_items_inLanguage"></a>9.1.5. Property `Spectacle (Show) > media > Média > inLanguage`

**Title:** Code de langue

|                        |                          |
| ---------------------- | ------------------------ |
| **Type**               | `string`                 |
| **Required**           | No                       |
| **Same definition as** | [lang](#name_items_lang) |

**Description:** Langue au format ISO 639-1.

#### <a name="media_items_license"></a>9.1.6. Property `Spectacle (Show) > media > Média > license`

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

| Each item of this array must be                       | Description                                                                                 |
| ----------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#media_items_license_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

##### <a name="media_items_license_items"></a>9.1.6.1. Spectacle (Show) > media > Média > license > Texte court multilingue

**Title:** Texte court multilingue

|                        |                   |
| ---------------------- | ----------------- |
| **Type**               | `array of object` |
| **Required**           | No                |
| **Same definition as** | [name](#name)     |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

#### <a name="media_items_creditText"></a>9.1.7. Property `Spectacle (Show) > media > Média > creditText`

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

| Each item of this array must be                          | Description                                                                                 |
| -------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#media_items_creditText_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

##### <a name="media_items_creditText_items"></a>9.1.7.1. Spectacle (Show) > media > Média > creditText > Texte court multilingue

**Title:** Texte court multilingue

|                        |                   |
| ---------------------- | ----------------- |
| **Type**               | `array of object` |
| **Required**           | No                |
| **Same definition as** | [name](#name)     |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

#### <a name="media_items_copyrightHolder"></a>9.1.8. Property `Spectacle (Show) > media > Média > copyrightHolder`

**Title:** Texte court multilingue

|                        |                   |
| ---------------------- | ----------------- |
| **Type**               | `array of object` |
| **Required**           | No                |
| **Same definition as** | [name](#name)     |

**Description:** Personne ou organisation détenant les droits d'auteur du média.

#### <a name="media_items_description"></a>9.1.9. Property `Spectacle (Show) > media > Média > description`

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

| Each item of this array must be                          | Description                                                                     |
| -------------------------------------------------------- | ------------------------------------------------------------------------------- |
| [Texte long multilingue](#media_items_description_items) | Énumération de textes longs associés à un code de langue au standard ISO 639-1. |

##### <a name="media_items_description_items"></a>9.1.9.1. Spectacle (Show) > media > Média > description > Texte long multilingue

**Title:** Texte long multilingue

|                        |                             |
| ---------------------- | --------------------------- |
| **Type**               | `array of object`           |
| **Required**           | No                          |
| **Same definition as** | [description](#description) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

## <a name="hasContribution"></a>10. Property `Spectacle (Show) > hasContribution`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Énumération des contributions. Il peut s'agir de contribution à la création (ex: auteur.trice, metteur.se en scène), de contributions à l'exécution (ex: comédien.en, musicien.ne).

Le contributeur peut être une personne ou une organisation.

Il s'agit de contributeurs qui sont associés à toutes les représentations du spectacle. Pour les contributions spécifiques à une représentation, utiliser le champ correspondant dans la classe Représentation.

Si un même contributeur a plusieurs contributions pour un même spectacle, il est suggéré de répéter plusieurs objets de la classe Contribution.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be        | Description                                                                                                                                                                 |
| -------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contribution](#hasContribution_items) | Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné. |

### <a name="hasContribution_items"></a>10.1. Spectacle (Show) > hasContribution > Contribution

**Title:** Contribution

|                           |                                      |
| ------------------------- | ------------------------------------ |
| **Type**                  | `object`                             |
| **Required**              | No                                   |
| **Additional properties** | Any type allowed                     |
| **Defined in**            | ./utilities/contribution.schema.json |

**Description:** Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

| Property                                                       | Title/Description                                                                                                                                           | Type    | Definition                                   |
| -------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- | -------------------------------------------- |
| + [type](#hasContribution_items_type )                         | -                                                                                                                                                           | const   | -                                            |
| + [contributionType](#hasContribution_items_contributionType ) | Identification des types de contribution.                                                                                                                   | array   | -                                            |
| + [contributeur](#hasContribution_items_contributeur )         | Contributor                                                                                                                                                 | object  | In ../contributor.schema.json                |
| - [sequenceNumber](#hasContribution_items_sequenceNumber )     | Précision sur l'ordre de présentation des contributions (les nombres plus petits correspondent à des contributions qui doivent être présentées en premier). | integer | -                                            |
| - [usageNote](#hasContribution_items_usageNote )               | Texte court                                                                                                                                                 | string  | Same as [usageNote](#media_items_usageNote ) |

#### <a name="hasContribution_items_type"></a>10.1.1. Property `Spectacle (Show) > hasContribution > Contribution > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Contribution"`

#### <a name="hasContribution_items_contributionType"></a>10.1.2. Property `Spectacle (Show) > hasContribution > Contribution > contributionType`

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

| Each item of this array must be                       | Description                                                                             |
| ----------------------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#hasContribution_items_contributionType_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

##### <a name="hasContribution_items_contributionType_items"></a>10.1.2.1. Spectacle (Show) > hasContribution > Contribution > contributionType > Term

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

| Property                                                                          | Title/Description                                                                                        | Type            | Definition                                   |
| --------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | --------------- | -------------------------------------------- |
| + [type](#hasContribution_items_contributionType_items_type )                     | -                                                                                                        | const           | -                                            |
| + [vocabulary](#hasContribution_items_contributionType_items_vocabulary )         | Texte court                                                                                              | string          | In ../datatypes/text_short.schema.json       |
| - [version](#hasContribution_items_contributionType_items_version )               | Texte court                                                                                              | string          | Same as [usageNote](#media_items_usageNote ) |
| + [code](#hasContribution_items_contributionType_items_code )                     | Texte court                                                                                              | string          | Same as [usageNote](#media_items_usageNote ) |
| - [label](#hasContribution_items_contributionType_items_label )                   | Texte court multilingue                                                                                  | array of object | Same as [name](#name )                       |
| + [sequenceNumber](#hasContribution_items_contributionType_items_sequenceNumber ) | Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé). | integer         | -                                            |

###### <a name="hasContribution_items_contributionType_items_type"></a>10.1.2.1.1. Property `Spectacle (Show) > hasContribution > Contribution > contributionType > Term > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Term"`

###### <a name="hasContribution_items_contributionType_items_vocabulary"></a>10.1.2.1.2. Property `Spectacle (Show) > hasContribution > Contribution > contributionType > Term > vocabulary`

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

###### <a name="hasContribution_items_contributionType_items_version"></a>10.1.2.1.3. Property `Spectacle (Show) > hasContribution > Contribution > contributionType > Term > version`

**Title:** Texte court

|                        |                                     |
| ---------------------- | ----------------------------------- |
| **Type**               | `string`                            |
| **Required**           | No                                  |
| **Same definition as** | [usageNote](#media_items_usageNote) |

**Description:** Version du vocabulaire utilisé, lorsque c'est applicable

###### <a name="hasContribution_items_contributionType_items_code"></a>10.1.2.1.4. Property `Spectacle (Show) > hasContribution > Contribution > contributionType > Term > code`

**Title:** Texte court

|                        |                                     |
| ---------------------- | ----------------------------------- |
| **Type**               | `string`                            |
| **Required**           | Yes                                 |
| **Same definition as** | [usageNote](#media_items_usageNote) |

**Description:** Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.

###### <a name="hasContribution_items_contributionType_items_label"></a>10.1.2.1.5. Property `Spectacle (Show) > hasContribution > Contribution > contributionType > Term > label`

**Title:** Texte court multilingue

|                        |                   |
| ---------------------- | ----------------- |
| **Type**               | `array of object` |
| **Required**           | No                |
| **Same definition as** | [name](#name)     |

**Description:** Version textuelle du terme tiré du vocabulaire choisi

###### <a name="hasContribution_items_contributionType_items_sequenceNumber"></a>10.1.2.1.6. Property `Spectacle (Show) > hasContribution > Contribution > contributionType > Term > sequenceNumber`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | Yes       |

**Description:** Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).

#### <a name="hasContribution_items_contributeur"></a>10.1.3. Property `Spectacle (Show) > hasContribution > Contribution > contributeur`

**Title:** Contributor

|                           |                            |
| ------------------------- | -------------------------- |
| **Type**                  | `object`                   |
| **Required**              | Yes                        |
| **Additional properties** | Any type allowed           |
| **Defined in**            | ../contributor.schema.json |

**Description:** Identification du contributeur

| Property                                                                                  | Title/Description                                                                                                                                                                                                     | Type             | Definition                                     |
| ----------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- | ---------------------------------------------- |
| + [type](#hasContribution_items_contributeur_type )                                       | -                                                                                                                                                                                                                     | const            | -                                              |
| + [contributorType](#hasContribution_items_contributeur_contributorType )                 | Type de contributeur                                                                                                                                                                                                  | enum (of string) | In ./vocabularies/contributor_type.schema.json |
| + [identifier](#hasContribution_items_contributeur_identifier )                           | identifier                                                                                                                                                                                                            | array            | Same as [identifier](#identifier )             |
| + [name](#hasContribution_items_contributeur_name )                                       | Texte court multilingue                                                                                                                                                                                               | array of object  | Same as [name](#name )                         |
| - [alternateName](#hasContribution_items_contributeur_alternateName )                     | Autres appellations parfois utilisées pour le contributeur.<br /><br />Exemple: «Béatrice Martin» comme nom alternatif de «Cœur de pirate».<br />Exemple: «Compagnie Jean-Duceppe» comme nom alternatif de «Duceppe». | array            | -                                              |
| - [description](#hasContribution_items_contributeur_description )                         | Texte long multilingue                                                                                                                                                                                                | array of object  | Same as [description](#description )           |
| - [shortDescription](#hasContribution_items_contributeur_shortDescription )               | Texte long multilingue                                                                                                                                                                                                | array of object  | Same as [description](#description )           |
| - [media](#hasContribution_items_contributeur_media )                                     | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au contributeur.                                                                                                                      | array            | -                                              |
| - [typicalContributionType](#hasContribution_items_contributeur_typicalContributionType ) | Énumération des types de contributions habituellement faites par le contributeur.                                                                                                                                     | array            | -                                              |
| - [hasGeographicRelation](#hasContribution_items_contributeur_hasGeographicRelation )     | Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.                                                                                  | array            | -                                              |
| - [hasMembers](#hasContribution_items_contributeur_hasMembers )                           | Énumération des membres des groupes, troupes et collectifs, etc.                                                                                                                                                      | array            | -                                              |

##### <a name="hasContribution_items_contributeur_type"></a>10.1.3.1. Property `Spectacle (Show) > hasContribution > Contribution > contributeur > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Contributor"`

##### <a name="hasContribution_items_contributeur_contributorType"></a>10.1.3.2. Property `Spectacle (Show) > hasContribution > Contribution > contributeur > contributorType`

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

##### <a name="hasContribution_items_contributeur_identifier"></a>10.1.3.3. Property `Spectacle (Show) > hasContribution > Contribution > contributeur > identifier`

**Title:** identifier

|                        |                           |
| ---------------------- | ------------------------- |
| **Type**               | `array`                   |
| **Required**           | Yes                       |
| **Same definition as** | [identifier](#identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

##### <a name="hasContribution_items_contributeur_name"></a>10.1.3.4. Property `Spectacle (Show) > hasContribution > Contribution > contributeur > name`

**Title:** Texte court multilingue

|                        |                   |
| ---------------------- | ----------------- |
| **Type**               | `array of object` |
| **Required**           | Yes               |
| **Same definition as** | [name](#name)     |

**Description:** Nom complet du contributeur, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. Le prénom et le nom de sont pas traités dans des propriétés distinctes à cause de la diversité des appellations de contributions, qui sont parfois des personnes morales.

Exemples: Michel Rivard, Les Trois Accords, Koriass, Desjardins, Spectra.

##### <a name="hasContribution_items_contributeur_alternateName"></a>10.1.3.5. Property `Spectacle (Show) > hasContribution > Contribution > contributeur > alternateName`

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

| Each item of this array must be                                                    | Description                                                                                 |
| ---------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#hasContribution_items_contributeur_alternateName_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

###### <a name="hasContribution_items_contributeur_alternateName_items"></a>10.1.3.5.1. Spectacle (Show) > hasContribution > Contribution > contributeur > alternateName > Texte court multilingue

**Title:** Texte court multilingue

|                        |                   |
| ---------------------- | ----------------- |
| **Type**               | `array of object` |
| **Required**           | No                |
| **Same definition as** | [name](#name)     |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

##### <a name="hasContribution_items_contributeur_description"></a>10.1.3.6. Property `Spectacle (Show) > hasContribution > Contribution > contributeur > description`

**Title:** Texte long multilingue

|                        |                             |
| ---------------------- | --------------------------- |
| **Type**               | `array of object`           |
| **Required**           | No                          |
| **Same definition as** | [description](#description) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

##### <a name="hasContribution_items_contributeur_shortDescription"></a>10.1.3.7. Property `Spectacle (Show) > hasContribution > Contribution > contributeur > shortDescription`

**Title:** Texte long multilingue

|                        |                             |
| ---------------------- | --------------------------- |
| **Type**               | `array of object`           |
| **Required**           | No                          |
| **Same definition as** | [description](#description) |

**Description:** Description résumée du contributeur. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage.

##### <a name="hasContribution_items_contributeur_media"></a>10.1.3.8. Property `Spectacle (Show) > hasContribution > Contribution > contributeur > media`

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

| Each item of this array must be                          | Description                                                                                          |
| -------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| [Média](#hasContribution_items_contributeur_media_items) | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

###### <a name="hasContribution_items_contributeur_media_items"></a>10.1.3.8.1. Spectacle (Show) > hasContribution > Contribution > contributeur > media > Média

**Title:** Média

|                           |                       |
| ------------------------- | --------------------- |
| **Type**                  | `object`              |
| **Required**              | No                    |
| **Additional properties** | Any type allowed      |
| **Same definition as**    | [Média](#media_items) |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

##### <a name="hasContribution_items_contributeur_typicalContributionType"></a>10.1.3.9. Property `Spectacle (Show) > hasContribution > Contribution > contributeur > typicalContributionType`

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

| Each item of this array must be                                           | Description                                                                             |
| ------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#hasContribution_items_contributeur_typicalContributionType_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

###### <a name="hasContribution_items_contributeur_typicalContributionType_items"></a>10.1.3.9.1. Spectacle (Show) > hasContribution > Contribution > contributeur > typicalContributionType > Term

**Title:** Term

|                           |                                                       |
| ------------------------- | ----------------------------------------------------- |
| **Type**                  | `object`                                              |
| **Required**              | No                                                    |
| **Additional properties** | Any type allowed                                      |
| **Same definition as**    | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

##### <a name="hasContribution_items_contributeur_hasGeographicRelation"></a>10.1.3.10. Property `Spectacle (Show) > hasContribution > Contribution > contributeur > hasGeographicRelation`

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

| Each item of this array must be                                                                                  | Description                                                                                                                          |
| ---------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| [Association Géographique (GeographicRelation)](#hasContribution_items_contributeur_hasGeographicRelation_items) | Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc. |

###### <a name="hasContribution_items_contributeur_hasGeographicRelation_items"></a>10.1.3.10.1. Spectacle (Show) > hasContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation)

**Title:** Association Géographique (GeographicRelation)

|                           |                                             |
| ------------------------- | ------------------------------------------- |
| **Type**                  | `object`                                    |
| **Required**              | No                                          |
| **Additional properties** | Not allowed                                 |
| **Defined in**            | ./utilities/geographic_relation.schema.json |

**Description:** Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.

| Property                                                                                              | Title/Description | Type   | Definition                                                     |
| ----------------------------------------------------------------------------------------------------- | ----------------- | ------ | -------------------------------------------------------------- |
| + [type](#hasContribution_items_contributeur_hasGeographicRelation_items_type )                       | -                 | const  | -                                                              |
| - [relationType](#hasContribution_items_contributeur_hasGeographicRelation_items_relationType )       | Term              | object | Same as [Term](#hasContribution_items_contributionType_items ) |
| - [addressCountry](#hasContribution_items_contributeur_hasGeographicRelation_items_addressCountry )   | Code Pays         | string | In ../datatypes/country_code.schema.json                       |
| - [addressRegion](#hasContribution_items_contributeur_hasGeographicRelation_items_addressRegion )     | Texte court       | string | Same as [usageNote](#media_items_usageNote )                   |
| - [addressLocality](#hasContribution_items_contributeur_hasGeographicRelation_items_addressLocality ) | Texte court       | string | Same as [usageNote](#media_items_usageNote )                   |

###### <a name="hasContribution_items_contributeur_hasGeographicRelation_items_type"></a>10.1.3.10.1.1. Property `Spectacle (Show) > hasContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"GeographicRelation"`

###### <a name="hasContribution_items_contributeur_hasGeographicRelation_items_relationType"></a>10.1.3.10.1.2. Property `Spectacle (Show) > hasContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > relationType`

**Title:** Term

|                           |                                                       |
| ------------------------- | ----------------------------------------------------- |
| **Type**                  | `object`                                              |
| **Required**              | No                                                    |
| **Additional properties** | Any type allowed                                      |
| **Same definition as**    | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

###### <a name="hasContribution_items_contributeur_hasGeographicRelation_items_addressCountry"></a>10.1.3.10.1.3. Property `Spectacle (Show) > hasContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > addressCountry`

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

###### <a name="hasContribution_items_contributeur_hasGeographicRelation_items_addressRegion"></a>10.1.3.10.1.4. Property `Spectacle (Show) > hasContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > addressRegion`

**Title:** Texte court

|                        |                                     |
| ---------------------- | ----------------------------------- |
| **Type**               | `string`                            |
| **Required**           | No                                  |
| **Same definition as** | [usageNote](#media_items_usageNote) |

**Description:** Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne)

###### <a name="hasContribution_items_contributeur_hasGeographicRelation_items_addressLocality"></a>10.1.3.10.1.5. Property `Spectacle (Show) > hasContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > addressLocality`

**Title:** Texte court

|                        |                                     |
| ---------------------- | ----------------------------------- |
| **Type**               | `string`                            |
| **Required**           | No                                  |
| **Same definition as** | [usageNote](#media_items_usageNote) |

**Description:** Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne)

##### <a name="hasContribution_items_contributeur_hasMembers"></a>10.1.3.11. Property `Spectacle (Show) > hasContribution > Contribution > contributeur > hasMembers`

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

| Each item of this array must be                                     | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contributor](#hasContribution_items_contributeur_hasMembers_items) | les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre). |

###### <a name="hasContribution_items_contributeur_hasMembers_items"></a>10.1.3.11.1. Spectacle (Show) > hasContribution > Contribution > contributeur > hasMembers > Contributor

**Title:** Contributor

|                           |                                                     |
| ------------------------- | --------------------------------------------------- |
| **Type**                  | `object`                                            |
| **Required**              | No                                                  |
| **Additional properties** | Any type allowed                                    |
| **Same definition as**    | [contributeur](#hasContribution_items_contributeur) |

**Description:** les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre).

#### <a name="hasContribution_items_sequenceNumber"></a>10.1.4. Property `Spectacle (Show) > hasContribution > Contribution > sequenceNumber`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Précision sur l'ordre de présentation des contributions (les nombres plus petits correspondent à des contributions qui doivent être présentées en premier).

#### <a name="hasContribution_items_usageNote"></a>10.1.5. Property `Spectacle (Show) > hasContribution > Contribution > usageNote`

**Title:** Texte court

|                        |                                     |
| ---------------------- | ----------------------------------- |
| **Type**               | `string`                            |
| **Required**           | No                                  |
| **Same definition as** | [usageNote](#media_items_usageNote) |

**Description:** Note concernant la contribution, à l'intention des exploitants des systèmes d'information (et donc pas du grand public). Il peut s'agir d'une précision sur le type de contribution, qui ne pourrait pas être exprimée à travers la propriété Types. Les informations compilées dans les notes pourraient être utilisées pour améliorer les vocabulaires contrôllés.

## <a name="mainEntityOfPage"></a>11. Property `Spectacle (Show) > mainEntityOfPage`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Vers des pages web donnant plus d'information sur le spectacle.

Pour des besoins plus précis, par exemple des URL de critiques du spectacle, la propriété Médias, qui permet d'inclure des notes d'usage, peut être utilisée.

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

### <a name="mainEntityOfPage_items"></a>11.1. Spectacle (Show) > mainEntityOfPage > WebPage

**Title:** WebPage

|                           |                                  |
| ------------------------- | -------------------------------- |
| **Type**                  | `object`                         |
| **Required**              | No                               |
| **Additional properties** | Any type allowed                 |
| **Defined in**            | ./utilities/web_page.schema.json |

| Property                                            | Title/Description | Type   | Definition                        |
| --------------------------------------------------- | ----------------- | ------ | --------------------------------- |
| + [type](#mainEntityOfPage_items_type )             | -                 | const  | -                                 |
| + [url](#mainEntityOfPage_items_url )               | -                 | string | -                                 |
| - [inLanguage](#mainEntityOfPage_items_inLanguage ) | Code de langue    | string | Same as [lang](#name_items_lang ) |

#### <a name="mainEntityOfPage_items_type"></a>11.1.1. Property `Spectacle (Show) > mainEntityOfPage > WebPage > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"WebPage"`

#### <a name="mainEntityOfPage_items_url"></a>11.1.2. Property `Spectacle (Show) > mainEntityOfPage > WebPage > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |
| **Format**   | `uri`    |

#### <a name="mainEntityOfPage_items_inLanguage"></a>11.1.3. Property `Spectacle (Show) > mainEntityOfPage > WebPage > inLanguage`

**Title:** Code de langue

|                        |                          |
| ---------------------- | ------------------------ |
| **Type**               | `string`                 |
| **Required**           | No                       |
| **Same definition as** | [lang](#name_items_lang) |

**Description:** Langue de la page Web, au format ISO 639-1.

## <a name="hasRelatedWork"></a>12. Property `Spectacle (Show) > hasRelatedWork`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Énumérations d'oeuvres, de la même discipline ou pas, qui sont associées au spectacle. Il peut s'agir du texte d'une pièce de théâtre, d'un album musical associé à un spectacle, etc. Il doit s'agir d'associations avec des oeuvres qui ne peuvent pas être identifiées aisément à travers d'autres propriétés.

Exemple 1: les données d'une pièce de théâtre peuvent pointer vers le texte de la pièce, disponible en librairie.

Exemple 2: les données d'un spectacle musical peuvent énumérer des enregistrements des pièces jouées lors du spectacle.

Contre exemple: il n'est pas utile que les données d'un spectacle d'humour énumère les autres spectacles du même humoriste, car il est possible d'obtenir cette information à travers les contributeurs.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be          | Description                        |
| ---------------------------------------- | ---------------------------------- |
| [Oeuvre Associée](#hasRelatedWork_items) | Objets d'association à une oeuvre. |

### <a name="hasRelatedWork_items"></a>12.1. Spectacle (Show) > hasRelatedWork > Oeuvre Associée

**Title:** Oeuvre Associée

|                           |                            |
| ------------------------- | -------------------------- |
| **Type**                  | `object`                   |
| **Required**              | No                         |
| **Additional properties** | Any type allowed           |
| **Defined in**            | #/definitions/WorkRelation |

**Description:** Objets d'association à une oeuvre.

| Property                                        | Title/Description       | Type            | Definition             |
| ----------------------------------------------- | ----------------------- | --------------- | ---------------------- |
| + [type](#hasRelatedWork_items_type )           | -                       | const           | -                      |
| + [work](#hasRelatedWork_items_work )           | Oeuvre (Work)           | object          | In ./work.schema.json  |
| - [usageNote](#hasRelatedWork_items_usageNote ) | Texte court multilingue | array of object | Same as [name](#name ) |

#### <a name="hasRelatedWork_items_type"></a>12.1.1. Property `Spectacle (Show) > hasRelatedWork > Oeuvre Associée > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"WorkRelation"`

#### <a name="hasRelatedWork_items_work"></a>12.1.2. Property `Spectacle (Show) > hasRelatedWork > Oeuvre Associée > work`

**Title:** Oeuvre (Work)

|                           |                    |
| ------------------------- | ------------------ |
| **Type**                  | `object`           |
| **Required**              | Yes                |
| **Additional properties** | Any type allowed   |
| **Defined in**            | ./work.schema.json |

**Description:** Identification de l'oeuvre.

| Property                                               | Title/Description       | Type            | Definition                         |
| ------------------------------------------------------ | ----------------------- | --------------- | ---------------------------------- |
| + [type](#hasRelatedWork_items_work_type )             | -                       | const           | -                                  |
| + [identifier](#hasRelatedWork_items_work_identifier ) | identifier              | array           | Same as [identifier](#identifier ) |
| + [name](#hasRelatedWork_items_work_name )             | Texte court multilingue | array of object | Same as [name](#name )             |

##### <a name="hasRelatedWork_items_work_type"></a>12.1.2.1. Property `Spectacle (Show) > hasRelatedWork > Oeuvre Associée > work > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Work"`

##### <a name="hasRelatedWork_items_work_identifier"></a>12.1.2.2. Property `Spectacle (Show) > hasRelatedWork > Oeuvre Associée > work > identifier`

**Title:** identifier

|                        |                           |
| ---------------------- | ------------------------- |
| **Type**               | `array`                   |
| **Required**           | Yes                       |
| **Same definition as** | [identifier](#identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

##### <a name="hasRelatedWork_items_work_name"></a>12.1.2.3. Property `Spectacle (Show) > hasRelatedWork > Oeuvre Associée > work > name`

**Title:** Texte court multilingue

|                        |                   |
| ---------------------- | ----------------- |
| **Type**               | `array of object` |
| **Required**           | Yes               |
| **Same definition as** | [name](#name)     |

**Description:** Nom de l'oeuvre.

#### <a name="hasRelatedWork_items_usageNote"></a>12.1.3. Property `Spectacle (Show) > hasRelatedWork > Oeuvre Associée > usageNote`

**Title:** Texte court multilingue

|                        |                   |
| ---------------------- | ----------------- |
| **Type**               | `array of object` |
| **Required**           | No                |
| **Same definition as** | [name](#name)     |

**Description:** Notes sur le lien entre l'oeuvre et le spectacle

## <a name="discipline"></a>13. Property `Spectacle (Show) > discipline`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | Yes     |

**Description:** Identification des disciplines artistiques du spectacle.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be | Description                                                                             |
| ------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#discipline_items)       | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="discipline_items"></a>13.1. Spectacle (Show) > discipline > Term

**Title:** Term

|                           |                                                       |
| ------------------------- | ----------------------------------------------------- |
| **Type**                  | `object`                                              |
| **Required**              | No                                                    |
| **Additional properties** | Any type allowed                                      |
| **Same definition as**    | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

## <a name="audience"></a>14. Property `Spectacle (Show) > audience`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | Yes     |

**Description:** Identification des publics cibles du spectacle.

Lorsque le vocabulaire utilisé contient un terme équivalent à « tout public », il est préférable de l'utiliser, que d'énumérer tous les types de publics.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be | Description                                                                             |
| ------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#audience_items)         | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="audience_items"></a>14.1. Spectacle (Show) > audience > Term

**Title:** Term

|                           |                                                       |
| ------------------------- | ----------------------------------------------------- |
| **Type**                  | `object`                                              |
| **Required**              | No                                                    |
| **Additional properties** | Any type allowed                                      |
| **Same definition as**    | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

## <a name="inLanguage"></a>15. Property `Spectacle (Show) > inLanguage`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Langues utilisées dans le spectacle, en ordre décroissant d'importance. La langue principale doit donc être mentionnée en premier.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be     | Description                                                                                                                                                |
| ----------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Code de langue](#inLanguage_items) | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). |

### <a name="inLanguage_items"></a>15.1. Spectacle (Show) > inLanguage > Code de langue

**Title:** Code de langue

|                        |                          |
| ---------------------- | ------------------------ |
| **Type**               | `string`                 |
| **Required**           | No                       |
| **Same definition as** | [lang](#name_items_lang) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

## <a name="supportMaterialLanguage"></a>16. Property `Spectacle (Show) > supportMaterialLanguage`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Langues pour lesquelles des artéfacts d'aide à la compréhension du spectacle sont disponibles (surtitrage, programmes, traduction simultannée...)

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                  | Description                                                                                                                                                |
| ------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Code de langue](#supportMaterialLanguage_items) | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). |

### <a name="supportMaterialLanguage_items"></a>16.1. Spectacle (Show) > supportMaterialLanguage > Code de langue

**Title:** Code de langue

|                        |                          |
| ---------------------- | ------------------------ |
| **Type**               | `string`                 |
| **Required**           | No                       |
| **Same definition as** | [lang](#name_items_lang) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

## <a name="showWithoutWords"></a>17. Property `Spectacle (Show) > showWithoutWords`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | Yes       |

**Description:** Indication à l'effet que le spectacle ne contient pas de paroles.

## <a name="contentType"></a>18. Property `Spectacle (Show) > contentType`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Permet d'identifier certains type de contenus qui sont présents dans le spectacle.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be | Description                                                                             |
| ------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#contentType_items)      | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="contentType_items"></a>18.1. Spectacle (Show) > contentType > Term

**Title:** Term

|                           |                                                       |
| ------------------------- | ----------------------------------------------------- |
| **Type**                  | `object`                                              |
| **Required**              | No                                                    |
| **Additional properties** | Any type allowed                                      |
| **Same definition as**    | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

## <a name="contentWarning"></a>19. Property `Spectacle (Show) > contentWarning`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Permet d'identifier des avertissements associés au spectacle.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be | Description                                                                             |
| ------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#contentWarning_items)   | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="contentWarning_items"></a>19.1. Spectacle (Show) > contentWarning > Term

**Title:** Term

|                           |                                                       |
| ------------------------- | ----------------------------------------------------- |
| **Type**                  | `object`                                              |
| **Required**              | No                                                    |
| **Additional properties** | Any type allowed                                      |
| **Same definition as**    | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

## <a name="hasPerformance"></a>20. Property `Spectacle (Show) > hasPerformance`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Énumération des représentations du spectacle, qu'elles soient passées ou futures.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                       | Description                                                                                                                                                                                                    |
| ----------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Représentation (Performance)](#hasPerformance_items) | Décrit une représentation, qui est un événement unique associé à un lieu, une date et une heure, et qui peut inclure des informations sur les artistes, les œuvres présentées, et d'autres détails pertinents. |

### <a name="hasPerformance_items"></a>20.1. Spectacle (Show) > hasPerformance > Représentation (Performance)

**Title:** Représentation (Performance)

|                           |                           |
| ------------------------- | ------------------------- |
| **Type**                  | `object`                  |
| **Required**              | No                        |
| **Additional properties** | Any type allowed          |
| **Defined in**            | ./performance.schema.json |

**Description:** Décrit une représentation, qui est un événement unique associé à un lieu, une date et une heure, et qui peut inclure des informations sur les artistes, les œuvres présentées, et d'autres détails pertinents.

| Property                                                                        | Title/Description                                                                                                                                                                                                                                                                                       | Type            | Definition                           |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | ------------------------------------ |
| + [type](#hasPerformance_items_type )                                           | -                                                                                                                                                                                                                                                                                                       | const           | -                                    |
| + [identifier](#hasPerformance_items_identifier )                               | identifier                                                                                                                                                                                                                                                                                              | array           | Same as [identifier](#identifier )   |
| + [startDateTime](#hasPerformance_items_startDateTime )                         | Date et heure de début de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                                                                                                     | string          | -                                    |
| - [endDateTime](#hasPerformance_items_endDateTime )                             | Date et heure de fin de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                                                                                                       | string          | -                                    |
| - [duration](#hasPerformance_items_duration )                                   | Durée de la représentation en format ISO-8601                                                                                                                                                                                                                                                           | string          | -                                    |
| - [previousStartDateTime](#hasPerformance_items_previousStartDateTime )         | Date et heure de début initialement prévus pour la représentation, dans le cas où il s'agit d'une représentation reportée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                       | string          | -                                    |
| - [hasIntermission](#hasPerformance_items_hasIntermission )                     | Indique la présence d'une ou plusieurs entractes                                                                                                                                                                                                                                                        | boolean         | -                                    |
| - [isExtra](#hasPerformance_items_isExtra )                                     | Indique si la représentation est une représentation supplémentaire                                                                                                                                                                                                                                      | boolean         | -                                    |
| - [description](#hasPerformance_items_description )                             | Texte long multilingue                                                                                                                                                                                                                                                                                  | array of object | Same as [description](#description ) |
| - [shortDescription](#hasPerformance_items_shortDescription )                   | Texte long multilingue                                                                                                                                                                                                                                                                                  | array of object | Same as [description](#description ) |
| - [media](#hasPerformance_items_media )                                         | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) supplémentaires associés à la représentation, lorsqu'ils sont disponibles et qu'il n'est pas possible de les associer au spectacle. Les consignes d'utilisation de la classe Spectacle s'appliquent.                            | array           | -                                    |
| - [alternateName](#hasPerformance_items_alternateName )                         | Texte court multilingue                                                                                                                                                                                                                                                                                 | array of object | Same as [name](#name )               |
| - [mainEntityOfPage](#hasPerformance_items_mainEntityOfPage )                   | Propriété utilisée seulement si l'URL du PageWeb associée à la représentation est différente de celle du spectacle. Ne pas confondre à l'URL de billetterie de la section concernant les offres. Les consignes d'utilisation de la classe Spectacle s'appliquent.                                       | array           | -                                    |
| - [hasAdditionalContribution](#hasPerformance_items_hasAdditionalContribution ) | Contributions à la représentation qui ne sont pas documentées dans le spectacle. Les contributions de la représentation sont donc l'ajout des contributions du spectacle et des contributions supplémentaires, desquelles ont retire les contributions retirées.                                        | array           | -                                    |
| - [hasRemovedContribution](#hasPerformance_items_hasRemovedContribution )       | Contributions documentées dans le spectacle qui ne s'appliquent pas à la représentation. Les contributions de la représentation sont donc l'ajout des contributions du spectacle et des contributions supplémentaires, desquelles ont retire les contributions retirées                                 | array           | -                                    |
| - [inSeries](#hasPerformance_items_inSeries )                                   | Identification des séries dont la représentation fait partie.                                                                                                                                                                                                                                           | array           | -                                    |
| + [hasOffer](#hasPerformance_items_hasOffer )                                   | Description des différentes modalités pour assister à la représentation. Il peut y avoir des modalités pour le présentiel et/ou le virtuel. Les modalités pour le présentiel et le virtuel doivent être documentées pour un spectacle hybride. Une représentation contient donc au maximum deux offres. | array           | -                                    |

#### <a name="hasPerformance_items_type"></a>20.1.1. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Performance"`

#### <a name="hasPerformance_items_identifier"></a>20.1.2. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > identifier`

**Title:** identifier

|                        |                           |
| ---------------------- | ------------------------- |
| **Type**               | `array`                   |
| **Required**           | Yes                       |
| **Same definition as** | [identifier](#identifier) |

**Description:** Énumération des identifiants connus.

#### <a name="hasPerformance_items_startDateTime"></a>20.1.3. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > startDateTime`

|              |             |
| ------------ | ----------- |
| **Type**     | `string`    |
| **Required** | Yes         |
| **Format**   | `date-time` |

**Description:** Date et heure de début de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

#### <a name="hasPerformance_items_endDateTime"></a>20.1.4. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > endDateTime`

|              |             |
| ------------ | ----------- |
| **Type**     | `string`    |
| **Required** | No          |
| **Format**   | `date-time` |

**Description:** Date et heure de fin de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

#### <a name="hasPerformance_items_duration"></a>20.1.5. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > duration`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Durée de la représentation en format ISO-8601

| Restrictions                      |                                                                                                                                                                                                                                                                                                                                  |
| --------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Must match regular expression** | ```^P(?=\d\|T\d)(\d+Y)?(\d+M)?(\d+W)?(\d+D)?(T(?=\d)(\d+H)?(\d+M)?(\d+(\.\d+)?S)?)?$``` [Test](https://regex101.com/?regex=%5EP%28%3F%3D%5Cd%7CT%5Cd%29%28%5Cd%2BY%29%3F%28%5Cd%2BM%29%3F%28%5Cd%2BW%29%3F%28%5Cd%2BD%29%3F%28T%28%3F%3D%5Cd%29%28%5Cd%2BH%29%3F%28%5Cd%2BM%29%3F%28%5Cd%2B%28%5C.%5Cd%2B%29%3FS%29%3F%29%3F%24) |
| **Minimum**                       | &ge; 1                                                                                                                                                                                                                                                                                                                           |

#### <a name="hasPerformance_items_previousStartDateTime"></a>20.1.6. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > previousStartDateTime`

|              |             |
| ------------ | ----------- |
| **Type**     | `string`    |
| **Required** | No          |
| **Format**   | `date-time` |

**Description:** Date et heure de début initialement prévus pour la représentation, dans le cas où il s'agit d'une représentation reportée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

#### <a name="hasPerformance_items_hasIntermission"></a>20.1.7. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > hasIntermission`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Indique la présence d'une ou plusieurs entractes

#### <a name="hasPerformance_items_isExtra"></a>20.1.8. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > isExtra`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Indique si la représentation est une représentation supplémentaire

#### <a name="hasPerformance_items_description"></a>20.1.9. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > description`

**Title:** Texte long multilingue

|                        |                             |
| ---------------------- | --------------------------- |
| **Type**               | `array of object`           |
| **Required**           | No                          |
| **Same definition as** | [description](#description) |

**Description:** Propriété utilisée seulement si la description de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle s'appliquent.

#### <a name="hasPerformance_items_shortDescription"></a>20.1.10. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > shortDescription`

**Title:** Texte long multilingue

|                        |                             |
| ---------------------- | --------------------------- |
| **Type**               | `array of object`           |
| **Required**           | No                          |
| **Same definition as** | [description](#description) |

**Description:** Propriété utilisée seulement si la description courte de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle s'appliquent.

#### <a name="hasPerformance_items_media"></a>20.1.11. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > media`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) supplémentaires associés à la représentation, lorsqu'ils sont disponibles et qu'il n'est pas possible de les associer au spectacle. Les consignes d'utilisation de la classe Spectacle s'appliquent.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be            | Description                                                                                          |
| ------------------------------------------ | ---------------------------------------------------------------------------------------------------- |
| [Média](#hasPerformance_items_media_items) | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

##### <a name="hasPerformance_items_media_items"></a>20.1.11.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > media > Média

**Title:** Média

|                           |                       |
| ------------------------- | --------------------- |
| **Type**                  | `object`              |
| **Required**              | No                    |
| **Additional properties** | Any type allowed      |
| **Same definition as**    | [Média](#media_items) |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

#### <a name="hasPerformance_items_alternateName"></a>20.1.12. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > alternateName`

**Title:** Texte court multilingue

|                        |                   |
| ---------------------- | ----------------- |
| **Type**               | `array of object` |
| **Required**           | No                |
| **Same definition as** | [name](#name)     |

**Description:** Propriété utilisée seulement si l'autre nom de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle] s'appliquent

#### <a name="hasPerformance_items_mainEntityOfPage"></a>20.1.13. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > mainEntityOfPage`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Propriété utilisée seulement si l'URL du PageWeb associée à la représentation est différente de celle du spectacle. Ne pas confondre à l'URL de billetterie de la section concernant les offres. Les consignes d'utilisation de la classe Spectacle s'appliquent.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                         | Description |
| ------------------------------------------------------- | ----------- |
| [WebPage](#hasPerformance_items_mainEntityOfPage_items) | -           |

##### <a name="hasPerformance_items_mainEntityOfPage_items"></a>20.1.13.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > mainEntityOfPage > WebPage

**Title:** WebPage

|                           |                                    |
| ------------------------- | ---------------------------------- |
| **Type**                  | `object`                           |
| **Required**              | No                                 |
| **Additional properties** | Any type allowed                   |
| **Same definition as**    | [WebPage](#mainEntityOfPage_items) |

#### <a name="hasPerformance_items_hasAdditionalContribution"></a>20.1.14. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > hasAdditionalContribution`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Contributions à la représentation qui ne sont pas documentées dans le spectacle. Les contributions de la représentation sont donc l'ajout des contributions du spectacle et des contributions supplémentaires, desquelles ont retire les contributions retirées.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                       | Description                                                                                                                                                                 |
| --------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contribution](#hasPerformance_items_hasAdditionalContribution_items) | Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné. |

##### <a name="hasPerformance_items_hasAdditionalContribution_items"></a>20.1.14.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > hasAdditionalContribution > Contribution

**Title:** Contribution

|                           |                                        |
| ------------------------- | -------------------------------------- |
| **Type**                  | `object`                               |
| **Required**              | No                                     |
| **Additional properties** | Any type allowed                       |
| **Same definition as**    | [Contribution](#hasContribution_items) |

**Description:** Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

#### <a name="hasPerformance_items_hasRemovedContribution"></a>20.1.15. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > hasRemovedContribution`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Contributions documentées dans le spectacle qui ne s'appliquent pas à la représentation. Les contributions de la représentation sont donc l'ajout des contributions du spectacle et des contributions supplémentaires, desquelles ont retire les contributions retirées

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                    | Description                                                                                                                                                                 |
| ------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contribution](#hasPerformance_items_hasRemovedContribution_items) | Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné. |

##### <a name="hasPerformance_items_hasRemovedContribution_items"></a>20.1.15.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > hasRemovedContribution > Contribution

**Title:** Contribution

|                           |                                        |
| ------------------------- | -------------------------------------- |
| **Type**                  | `object`                               |
| **Required**              | No                                     |
| **Additional properties** | Any type allowed                       |
| **Same definition as**    | [Contribution](#hasContribution_items) |

**Description:** Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

#### <a name="hasPerformance_items_inSeries"></a>20.1.16. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Identification des séries dont la représentation fait partie.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                           | Description                                                                                                                                                                                                                                      |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [Série de représentations (Series)](#hasPerformance_items_inSeries_items) | cette classe permet de regrouper des représentations n’étant pas nécessairement toutes associées à un même spectacle, mais liées entre elles par des éléments de commercialisation ou de modalités d’accès. Un festival est un exemple de série. |

##### <a name="hasPerformance_items_inSeries_items"></a>20.1.16.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series)

**Title:** Série de représentations (Series)

|                           |                      |
| ------------------------- | -------------------- |
| **Type**                  | `object`             |
| **Required**              | No                   |
| **Additional properties** | Any type allowed     |
| **Defined in**            | ./series.schema.json |

**Description:** cette classe permet de regrouper des représentations n’étant pas nécessairement toutes associées à un même spectacle, mais liées entre elles par des éléments de commercialisation ou de modalités d’accès. Un festival est un exemple de série.

| Property                                                                     | Title/Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | Type            | Definition                                        |
| ---------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------- | ------------------------------------------------- |
| + [type](#hasPerformance_items_inSeries_items_type )                         | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | const           | -                                                 |
| + [identifier](#hasPerformance_items_inSeries_items_identifier )             | identifier                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | array           | Same as [identifier](#identifier )                |
| + [name](#hasPerformance_items_inSeries_items_name )                         | Texte court multilingue                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | array of object | Same as [name](#name )                            |
| - [alternateName](#hasPerformance_items_inSeries_items_alternateName )       | Texte court multilingue                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | array of object | Same as [name](#name )                            |
| + [description](#hasPerformance_items_inSeries_items_description )           | Texte long multilingue                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | array of object | In ./datatypes/text_long_multilingual.schema.json |
| - [shortDescription](#hasPerformance_items_inSeries_items_shortDescription ) | Texte long multilingue                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | array of object | Same as [description](#description )              |
| - [media](#hasPerformance_items_inSeries_items_media )                       | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé à la série.                                                                                                                                                                                                                                                                                                                                                                                                                  | array           | -                                                 |
| - [hasContribution](#hasPerformance_items_inSeries_items_hasContribution )   | Énumération des contributions spécifiques à la série, et non pas aux représentations. Il s'agit typiquement de contributions de production, d'organisation ou de commandite. Les contributions artistiques seront typiquement associées aux spectacles et aux représentations.<br /><br />Exemple: un commanditaire d'un festival a une contribution à la série.<br /><br />Contre-exemple: un artiste sur scène lors d'un spectacle dans le cadre de la série n'a pas de contribution à la série elle-même. | array           | -                                                 |
| - [mainEntityOfPage](#hasPerformance_items_inSeries_items_mainEntityOfPage ) | Pages web donnant plus d'information sur la série.<br /><br />Pour des besoins plus précis, par exemple des URL de critiques du spectacle, la propriété Médias, qui permet d'inclure des notes d'usage, peut être utilisée.                                                                                                                                                                                                                                                                                  | array           | -                                                 |
| + [startDateTime](#hasPerformance_items_inSeries_items_startDateTime )       | Date de début de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                                                                                                                                                                                                                                                                                                                            | string          | -                                                 |
| - [endDateTime](#hasPerformance_items_inSeries_items_endDateTime )           | Date de fin de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                                                                                                                                                                                                                                                                                                                              | string          | -                                                 |
| - [hasOffer](#hasPerformance_items_inSeries_items_hasOffer )                 | Description des différentes modalités pour assister à la série. Il peut y avoir des modalités pour le présentiel et/ou le virtuel. Les modalités pour le présentiel et le virtuel doivent être documentées pour une série hybride. Une série contient donc au maximum deux offres.                                                                                                                                                                                                                           | array           | -                                                 |

###### <a name="hasPerformance_items_inSeries_items_type"></a>20.1.16.1.1. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Series"`

###### <a name="hasPerformance_items_inSeries_items_identifier"></a>20.1.16.1.2. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > identifier`

**Title:** identifier

|                        |                           |
| ---------------------- | ------------------------- |
| **Type**               | `array`                   |
| **Required**           | Yes                       |
| **Same definition as** | [identifier](#identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

###### <a name="hasPerformance_items_inSeries_items_name"></a>20.1.16.1.3. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > name`

**Title:** Texte court multilingue

|                        |                   |
| ---------------------- | ----------------- |
| **Type**               | `array of object` |
| **Required**           | Yes               |
| **Same definition as** | [name](#name)     |

**Description:** Nom de la série, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels.

###### <a name="hasPerformance_items_inSeries_items_alternateName"></a>20.1.16.1.4. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > alternateName`

**Title:** Texte court multilingue

|                        |                   |
| ---------------------- | ----------------- |
| **Type**               | `array of object` |
| **Required**           | No                |
| **Same definition as** | [name](#name)     |

**Description:** Élément qui ne fait pas partie du nom, mais qui le complète, sans toutefois relever de la description elle-même.

Par exemple, le Festival de musique émergente en Abitibi-Témiscamingue est aussi connu sous son acronyme FME.

###### <a name="hasPerformance_items_inSeries_items_description"></a>20.1.16.1.5. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > description`

**Title:** Texte long multilingue

|                |                                                |
| -------------- | ---------------------------------------------- |
| **Type**       | `array of object`                              |
| **Required**   | Yes                                            |
| **Defined in** | ./datatypes/text_long_multilingual.schema.json |

**Description:** Description de la série.

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

###### <a name="description_items"></a>20.1.16.1.5.1. Spectacle (Show) > description > description items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                             | Title/Description | Type   | Definition                                |
| ------------------------------------ | ----------------- | ------ | ----------------------------------------- |
| + [lang](#description_items_lang )   | Code de langue    | string | Same as [lang](#name_items_lang )         |
| + [value](#description_items_value ) | Texte long        | string | In ./partials/authorized_html.schema.json |

###### <a name="description_items_lang"></a>20.1.16.1.5.1.1. Property `Spectacle (Show) > description > description items > lang`

**Title:** Code de langue

|                        |                          |
| ---------------------- | ------------------------ |
| **Type**               | `string`                 |
| **Required**           | Yes                      |
| **Same definition as** | [lang](#name_items_lang) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

###### <a name="description_items_value"></a>20.1.16.1.5.1.2. Property `Spectacle (Show) > description > description items > value`

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

###### <a name="hasPerformance_items_inSeries_items_shortDescription"></a>20.1.16.1.6. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > shortDescription`

**Title:** Texte long multilingue

|                        |                             |
| ---------------------- | --------------------------- |
| **Type**               | `array of object`           |
| **Required**           | No                          |
| **Same definition as** | [description](#description) |

**Description:** Description résumée de la série. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.

###### <a name="hasPerformance_items_inSeries_items_media"></a>20.1.16.1.7. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > media`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé à la série.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                           | Description                                                                                          |
| --------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| [Média](#hasPerformance_items_inSeries_items_media_items) | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

###### <a name="hasPerformance_items_inSeries_items_media_items"></a>20.1.16.1.7.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > media > Média

**Title:** Média

|                           |                       |
| ------------------------- | --------------------- |
| **Type**                  | `object`              |
| **Required**              | No                    |
| **Additional properties** | Any type allowed      |
| **Same definition as**    | [Média](#media_items) |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

###### <a name="hasPerformance_items_inSeries_items_hasContribution"></a>20.1.16.1.8. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasContribution`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Énumération des contributions spécifiques à la série, et non pas aux représentations. Il s'agit typiquement de contributions de production, d'organisation ou de commandite. Les contributions artistiques seront typiquement associées aux spectacles et aux représentations.

Exemple: un commanditaire d'un festival a une contribution à la série.

Contre-exemple: un artiste sur scène lors d'un spectacle dans le cadre de la série n'a pas de contribution à la série elle-même.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                            | Description                                                                                                                                                                 |
| -------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contribution](#hasPerformance_items_inSeries_items_hasContribution_items) | Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné. |

###### <a name="hasPerformance_items_inSeries_items_hasContribution_items"></a>20.1.16.1.8.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasContribution > Contribution

**Title:** Contribution

|                           |                                        |
| ------------------------- | -------------------------------------- |
| **Type**                  | `object`                               |
| **Required**              | No                                     |
| **Additional properties** | Any type allowed                       |
| **Same definition as**    | [Contribution](#hasContribution_items) |

**Description:** Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

###### <a name="hasPerformance_items_inSeries_items_mainEntityOfPage"></a>20.1.16.1.9. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > mainEntityOfPage`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Pages web donnant plus d'information sur la série.

Pour des besoins plus précis, par exemple des URL de critiques du spectacle, la propriété Médias, qui permet d'inclure des notes d'usage, peut être utilisée.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                        | Description |
| ---------------------------------------------------------------------- | ----------- |
| [WebPage](#hasPerformance_items_inSeries_items_mainEntityOfPage_items) | -           |

###### <a name="hasPerformance_items_inSeries_items_mainEntityOfPage_items"></a>20.1.16.1.9.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > mainEntityOfPage > WebPage

**Title:** WebPage

|                           |                                    |
| ------------------------- | ---------------------------------- |
| **Type**                  | `object`                           |
| **Required**              | No                                 |
| **Additional properties** | Any type allowed                   |
| **Same definition as**    | [WebPage](#mainEntityOfPage_items) |

###### <a name="hasPerformance_items_inSeries_items_startDateTime"></a>20.1.16.1.10. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > startDateTime`

|              |             |
| ------------ | ----------- |
| **Type**     | `string`    |
| **Required** | Yes         |
| **Format**   | `date-time` |

**Description:** Date de début de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

###### <a name="hasPerformance_items_inSeries_items_endDateTime"></a>20.1.16.1.11. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > endDateTime`

|              |             |
| ------------ | ----------- |
| **Type**     | `string`    |
| **Required** | No          |
| **Format**   | `date-time` |

**Description:** Date de fin de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

###### <a name="hasPerformance_items_inSeries_items_hasOffer"></a>20.1.16.1.12. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Description des différentes modalités pour assister à la série. Il peut y avoir des modalités pour le présentiel et/ou le virtuel. Les modalités pour le présentiel et le virtuel doivent être documentées pour une série hybride. Une série contient donc au maximum deux offres.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | 1                  |
| **Max items**        | 2                  |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                          | Description                                                                                                   |
| ------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------- |
| [offer.schema.json](#hasPerformance_items_inSeries_items_hasOffer_items) | 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️ |

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items"></a>20.1.16.1.12.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > offer.schema.json

|                           |                     |
| ------------------------- | ------------------- |
| **Type**                  | `object`            |
| **Required**              | No                  |
| **Additional properties** | Any type allowed    |
| **Defined in**            | ./offer.schema.json |

**Description:** 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️

#### <a name="hasPerformance_items_hasOffer"></a>20.1.17. Property `Spectacle (Show) > hasPerformance > Représentation (Performance) > hasOffer`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | Yes     |

**Description:** Description des différentes modalités pour assister à la représentation. Il peut y avoir des modalités pour le présentiel et/ou le virtuel. Les modalités pour le présentiel et le virtuel doivent être documentées pour un spectacle hybride. Une représentation contient donc au maximum deux offres.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | 1                  |
| **Max items**        | 2                  |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                           | Description                                                                                                   |
| --------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| [offer.schema.json](#hasPerformance_items_hasOffer_items) | 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️ |

##### <a name="hasPerformance_items_hasOffer_items"></a>20.1.17.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > hasOffer > offer.schema.json

|                           |                     |
| ------------------------- | ------------------- |
| **Type**                  | `object`            |
| **Required**              | No                  |
| **Additional properties** | Any type allowed    |
| **Defined in**            | ./offer.schema.json |

**Description:** 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️

----------------------------------------------------------------------------------------------------------------------------
Generated using [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) on 2025-08-18 at 15:47:40 -0400
