# Série de représentations (Series)

**Title:** Série de représentations (Series)

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** cette classe permet de regrouper des représentations n’étant pas nécessairement toutes associées à un même spectacle, mais liées entre elles par des éléments de commercialisation ou de modalités d’accès. Un festival est un exemple de série.

| Property                                 | Title/Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | Type            | Definition                                         |
| ---------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------- | -------------------------------------------------- |
| + [type](#type )                         | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | const           | -                                                  |
| + [identifier](#identifier )             | identifier                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | array           | In ./utilities/identifier.schema.json              |
| + [name](#name )                         | Texte court multilingue                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | array of object | In ./datatypes/text_short_multilingual.schema.json |
| - [alternateName](#alternateName )       | Texte court multilingue                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | array of object | Same as [name](#name )                             |
| + [description](#description )           | Texte long multilingue                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | array of object | In ./datatypes/text_long_multilingual.schema.json  |
| - [shortDescription](#shortDescription ) | Texte long multilingue                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | array of object | Same as [description](#description )               |
| - [media](#media )                       | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé à la série.                                                                                                                                                                                                                                                                                                                                                                                                                  | array           | -                                                  |
| - [hasContribution](#hasContribution )   | Énumération des contributions spécifiques à la série, et non pas aux représentations. Il s'agit typiquement de contributions de production, d'organisation ou de commandite. Les contributions artistiques seront typiquement associées aux spectacles et aux représentations.<br /><br />Exemple: un commanditaire d'un festival a une contribution à la série.<br /><br />Contre-exemple: un artiste sur scène lors d'un spectacle dans le cadre de la série n'a pas de contribution à la série elle-même. | array           | -                                                  |
| - [mainEntityOfPage](#mainEntityOfPage ) | Pages web donnant plus d'information sur la série.<br /><br />Pour des besoins plus précis, par exemple des URL de critiques du spectacle, la propriété Médias, qui permet d'inclure des notes d'usage, peut être utilisée.                                                                                                                                                                                                                                                                                  | array           | -                                                  |
| + [startDateTime](#startDateTime )       | Date de début de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                                                                                                                                                                                                                                                                                                                            | string          | -                                                  |
| - [endDateTime](#endDateTime )           | Date de fin de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                                                                                                                                                                                                                                                                                                                              | string          | -                                                  |
| - [hasOffer](#hasOffer )                 | Description des différentes modalités pour assister à la série. Il peut y avoir des modalités pour le présentiel et/ou le virtuel. Les modalités pour le présentiel et le virtuel doivent être documentées pour une série hybride. Une série contient donc au maximum deux offres.                                                                                                                                                                                                                           | array           | -                                                  |

## <a name="type"></a>1. Property `Série de représentations (Series) > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Series"`

## <a name="identifier"></a>2. Property `Série de représentations (Series) > identifier`

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

### <a name="identifier_items"></a>2.1. Série de représentations (Series) > identifier > identifier items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Any of(Option)                       |
| ------------------------------------ |
| [item 0](#identifier_items_anyOf_i0) |
| [item 1](#identifier_items_anyOf_i1) |

#### <a name="identifier_items_anyOf_i0"></a>2.1.1. Property `Série de représentations (Series) > identifier > identifier items > anyOf > item 0`

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

##### <a name="identifier_items_anyOf_i0_type"></a>2.1.1.1. Property `Série de représentations (Series) > identifier > identifier items > anyOf > item 0 > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"PropertyValue"`

##### <a name="identifier_items_anyOf_i0_propertyID"></a>2.1.1.2. Property `Série de représentations (Series) > identifier > identifier items > anyOf > item 0 > propertyID`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles.

| Restrictions   |   |
| -------------- | - |
| **Min length** | 1 |

##### <a name="identifier_items_anyOf_i0_value"></a>2.1.1.3. Property `Série de représentations (Series) > identifier > identifier items > anyOf > item 0 > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** L'identifiant lui-même

| Restrictions   |   |
| -------------- | - |
| **Min length** | 1 |

#### <a name="identifier_items_anyOf_i1"></a>2.1.2. Property `Série de représentations (Series) > identifier > identifier items > anyOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |
| **Format**   | `uri`    |

**Description:** Un identifiant URI sous forme de chaîne de caractères.

## <a name="name"></a>3. Property `Série de représentations (Series) > name`

**Title:** Texte court multilingue

|                |                                                 |
| -------------- | ----------------------------------------------- |
| **Type**       | `array of object`                               |
| **Required**   | Yes                                             |
| **Defined in** | ./datatypes/text_short_multilingual.schema.json |

**Description:** Nom de la série, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels.

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

### <a name="name_items"></a>3.1. Série de représentations (Series) > name > name items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                      | Title/Description | Type   | Definition                         |
| ----------------------------- | ----------------- | ------ | ---------------------------------- |
| + [lang](#name_items_lang )   | Code de langue    | string | In ./partials/language.schema.json |
| + [value](#name_items_value ) | Texte court       | string | In ./partials/no_html.schema.json  |

#### <a name="name_items_lang"></a>3.1.1. Property `Série de représentations (Series) > name > name items > lang`

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

#### <a name="name_items_value"></a>3.1.2. Property `Série de représentations (Series) > name > name items > value`

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

## <a name="alternateName"></a>4. Property `Série de représentations (Series) > alternateName`

**Title:** Texte court multilingue

|                        |                   |
| ---------------------- | ----------------- |
| **Type**               | `array of object` |
| **Required**           | No                |
| **Same definition as** | [name](#name)     |

**Description:** Élément qui ne fait pas partie du nom, mais qui le complète, sans toutefois relever de la description elle-même.

Par exemple, le Festival de musique émergente en Abitibi-Témiscamingue est aussi connu sous son acronyme FME.

## <a name="description"></a>5. Property `Série de représentations (Series) > description`

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

### <a name="description_items"></a>5.1. Série de représentations (Series) > description > description items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                             | Title/Description | Type   | Definition                                |
| ------------------------------------ | ----------------- | ------ | ----------------------------------------- |
| + [lang](#description_items_lang )   | Code de langue    | string | Same as [lang](#name_items_lang )         |
| + [value](#description_items_value ) | Texte long        | string | In ./partials/authorized_html.schema.json |

#### <a name="description_items_lang"></a>5.1.1. Property `Série de représentations (Series) > description > description items > lang`

**Title:** Code de langue

|                        |                          |
| ---------------------- | ------------------------ |
| **Type**               | `string`                 |
| **Required**           | Yes                      |
| **Same definition as** | [lang](#name_items_lang) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

#### <a name="description_items_value"></a>5.1.2. Property `Série de représentations (Series) > description > description items > value`

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

## <a name="shortDescription"></a>6. Property `Série de représentations (Series) > shortDescription`

**Title:** Texte long multilingue

|                        |                             |
| ---------------------- | --------------------------- |
| **Type**               | `array of object`           |
| **Required**           | No                          |
| **Same definition as** | [description](#description) |

**Description:** Description résumée de la série. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.

## <a name="media"></a>7. Property `Série de représentations (Series) > media`

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

| Each item of this array must be | Description                                                                                          |
| ------------------------------- | ---------------------------------------------------------------------------------------------------- |
| [Média](#media_items)           | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

### <a name="media_items"></a>7.1. Série de représentations (Series) > media > Média

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

#### <a name="media_items_type"></a>7.1.1. Property `Série de représentations (Series) > media > Média > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Media"`

#### <a name="media_items_sequenceNumber"></a>7.1.2. Property `Série de représentations (Series) > media > Média > sequenceNumber`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).

#### <a name="media_items_usageNote"></a>7.1.3. Property `Série de représentations (Series) > media > Média > usageNote`

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

#### <a name="media_items_url"></a>7.1.4. Property `Série de représentations (Series) > media > Média > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |
| **Format**   | `uri`    |

**Description:** URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible

#### <a name="media_items_inLanguage"></a>7.1.5. Property `Série de représentations (Series) > media > Média > inLanguage`

**Title:** Code de langue

|                        |                          |
| ---------------------- | ------------------------ |
| **Type**               | `string`                 |
| **Required**           | No                       |
| **Same definition as** | [lang](#name_items_lang) |

**Description:** Langue au format ISO 639-1.

#### <a name="media_items_license"></a>7.1.6. Property `Série de représentations (Series) > media > Média > license`

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

##### <a name="media_items_license_items"></a>7.1.6.1. Série de représentations (Series) > media > Média > license > Texte court multilingue

**Title:** Texte court multilingue

|                        |                   |
| ---------------------- | ----------------- |
| **Type**               | `array of object` |
| **Required**           | No                |
| **Same definition as** | [name](#name)     |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

#### <a name="media_items_creditText"></a>7.1.7. Property `Série de représentations (Series) > media > Média > creditText`

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

##### <a name="media_items_creditText_items"></a>7.1.7.1. Série de représentations (Series) > media > Média > creditText > Texte court multilingue

**Title:** Texte court multilingue

|                        |                   |
| ---------------------- | ----------------- |
| **Type**               | `array of object` |
| **Required**           | No                |
| **Same definition as** | [name](#name)     |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

#### <a name="media_items_copyrightHolder"></a>7.1.8. Property `Série de représentations (Series) > media > Média > copyrightHolder`

**Title:** Texte court multilingue

|                        |                   |
| ---------------------- | ----------------- |
| **Type**               | `array of object` |
| **Required**           | No                |
| **Same definition as** | [name](#name)     |

**Description:** Personne ou organisation détenant les droits d'auteur du média.

#### <a name="media_items_description"></a>7.1.9. Property `Série de représentations (Series) > media > Média > description`

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

##### <a name="media_items_description_items"></a>7.1.9.1. Série de représentations (Series) > media > Média > description > Texte long multilingue

**Title:** Texte long multilingue

|                        |                             |
| ---------------------- | --------------------------- |
| **Type**               | `array of object`           |
| **Required**           | No                          |
| **Same definition as** | [description](#description) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

## <a name="hasContribution"></a>8. Property `Série de représentations (Series) > hasContribution`

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

| Each item of this array must be        | Description                                                                                                                                                                 |
| -------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contribution](#hasContribution_items) | Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné. |

### <a name="hasContribution_items"></a>8.1. Série de représentations (Series) > hasContribution > Contribution

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

#### <a name="hasContribution_items_type"></a>8.1.1. Property `Série de représentations (Series) > hasContribution > Contribution > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Contribution"`

#### <a name="hasContribution_items_contributionType"></a>8.1.2. Property `Série de représentations (Series) > hasContribution > Contribution > contributionType`

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

##### <a name="hasContribution_items_contributionType_items"></a>8.1.2.1. Série de représentations (Series) > hasContribution > Contribution > contributionType > Term

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

###### <a name="hasContribution_items_contributionType_items_type"></a>8.1.2.1.1. Property `Série de représentations (Series) > hasContribution > Contribution > contributionType > Term > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Term"`

###### <a name="hasContribution_items_contributionType_items_vocabulary"></a>8.1.2.1.2. Property `Série de représentations (Series) > hasContribution > Contribution > contributionType > Term > vocabulary`

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

###### <a name="hasContribution_items_contributionType_items_version"></a>8.1.2.1.3. Property `Série de représentations (Series) > hasContribution > Contribution > contributionType > Term > version`

**Title:** Texte court

|                        |                                     |
| ---------------------- | ----------------------------------- |
| **Type**               | `string`                            |
| **Required**           | No                                  |
| **Same definition as** | [usageNote](#media_items_usageNote) |

**Description:** Version du vocabulaire utilisé, lorsque c'est applicable

###### <a name="hasContribution_items_contributionType_items_code"></a>8.1.2.1.4. Property `Série de représentations (Series) > hasContribution > Contribution > contributionType > Term > code`

**Title:** Texte court

|                        |                                     |
| ---------------------- | ----------------------------------- |
| **Type**               | `string`                            |
| **Required**           | Yes                                 |
| **Same definition as** | [usageNote](#media_items_usageNote) |

**Description:** Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.

###### <a name="hasContribution_items_contributionType_items_label"></a>8.1.2.1.5. Property `Série de représentations (Series) > hasContribution > Contribution > contributionType > Term > label`

**Title:** Texte court multilingue

|                        |                   |
| ---------------------- | ----------------- |
| **Type**               | `array of object` |
| **Required**           | No                |
| **Same definition as** | [name](#name)     |

**Description:** Version textuelle du terme tiré du vocabulaire choisi

###### <a name="hasContribution_items_contributionType_items_sequenceNumber"></a>8.1.2.1.6. Property `Série de représentations (Series) > hasContribution > Contribution > contributionType > Term > sequenceNumber`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | Yes       |

**Description:** Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).

#### <a name="hasContribution_items_contributeur"></a>8.1.3. Property `Série de représentations (Series) > hasContribution > Contribution > contributeur`

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

##### <a name="hasContribution_items_contributeur_type"></a>8.1.3.1. Property `Série de représentations (Series) > hasContribution > Contribution > contributeur > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Contributor"`

##### <a name="hasContribution_items_contributeur_contributorType"></a>8.1.3.2. Property `Série de représentations (Series) > hasContribution > Contribution > contributeur > contributorType`

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

##### <a name="hasContribution_items_contributeur_identifier"></a>8.1.3.3. Property `Série de représentations (Series) > hasContribution > Contribution > contributeur > identifier`

**Title:** identifier

|                        |                           |
| ---------------------- | ------------------------- |
| **Type**               | `array`                   |
| **Required**           | Yes                       |
| **Same definition as** | [identifier](#identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

##### <a name="hasContribution_items_contributeur_name"></a>8.1.3.4. Property `Série de représentations (Series) > hasContribution > Contribution > contributeur > name`

**Title:** Texte court multilingue

|                        |                   |
| ---------------------- | ----------------- |
| **Type**               | `array of object` |
| **Required**           | Yes               |
| **Same definition as** | [name](#name)     |

**Description:** Nom complet du contributeur, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. Le prénom et le nom de sont pas traités dans des propriétés distinctes à cause de la diversité des appellations de contributions, qui sont parfois des personnes morales.

Exemples: Michel Rivard, Les Trois Accords, Koriass, Desjardins, Spectra.

##### <a name="hasContribution_items_contributeur_alternateName"></a>8.1.3.5. Property `Série de représentations (Series) > hasContribution > Contribution > contributeur > alternateName`

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

###### <a name="hasContribution_items_contributeur_alternateName_items"></a>8.1.3.5.1. Série de représentations (Series) > hasContribution > Contribution > contributeur > alternateName > Texte court multilingue

**Title:** Texte court multilingue

|                        |                   |
| ---------------------- | ----------------- |
| **Type**               | `array of object` |
| **Required**           | No                |
| **Same definition as** | [name](#name)     |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

##### <a name="hasContribution_items_contributeur_description"></a>8.1.3.6. Property `Série de représentations (Series) > hasContribution > Contribution > contributeur > description`

**Title:** Texte long multilingue

|                        |                             |
| ---------------------- | --------------------------- |
| **Type**               | `array of object`           |
| **Required**           | No                          |
| **Same definition as** | [description](#description) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

##### <a name="hasContribution_items_contributeur_shortDescription"></a>8.1.3.7. Property `Série de représentations (Series) > hasContribution > Contribution > contributeur > shortDescription`

**Title:** Texte long multilingue

|                        |                             |
| ---------------------- | --------------------------- |
| **Type**               | `array of object`           |
| **Required**           | No                          |
| **Same definition as** | [description](#description) |

**Description:** Description résumée du contributeur. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage.

##### <a name="hasContribution_items_contributeur_media"></a>8.1.3.8. Property `Série de représentations (Series) > hasContribution > Contribution > contributeur > media`

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

###### <a name="hasContribution_items_contributeur_media_items"></a>8.1.3.8.1. Série de représentations (Series) > hasContribution > Contribution > contributeur > media > Média

**Title:** Média

|                           |                       |
| ------------------------- | --------------------- |
| **Type**                  | `object`              |
| **Required**              | No                    |
| **Additional properties** | Any type allowed      |
| **Same definition as**    | [Média](#media_items) |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

##### <a name="hasContribution_items_contributeur_typicalContributionType"></a>8.1.3.9. Property `Série de représentations (Series) > hasContribution > Contribution > contributeur > typicalContributionType`

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

###### <a name="hasContribution_items_contributeur_typicalContributionType_items"></a>8.1.3.9.1. Série de représentations (Series) > hasContribution > Contribution > contributeur > typicalContributionType > Term

**Title:** Term

|                           |                                                       |
| ------------------------- | ----------------------------------------------------- |
| **Type**                  | `object`                                              |
| **Required**              | No                                                    |
| **Additional properties** | Any type allowed                                      |
| **Same definition as**    | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

##### <a name="hasContribution_items_contributeur_hasGeographicRelation"></a>8.1.3.10. Property `Série de représentations (Series) > hasContribution > Contribution > contributeur > hasGeographicRelation`

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

###### <a name="hasContribution_items_contributeur_hasGeographicRelation_items"></a>8.1.3.10.1. Série de représentations (Series) > hasContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation)

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

###### <a name="hasContribution_items_contributeur_hasGeographicRelation_items_type"></a>8.1.3.10.1.1. Property `Série de représentations (Series) > hasContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"GeographicRelation"`

###### <a name="hasContribution_items_contributeur_hasGeographicRelation_items_relationType"></a>8.1.3.10.1.2. Property `Série de représentations (Series) > hasContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > relationType`

**Title:** Term

|                           |                                                       |
| ------------------------- | ----------------------------------------------------- |
| **Type**                  | `object`                                              |
| **Required**              | No                                                    |
| **Additional properties** | Any type allowed                                      |
| **Same definition as**    | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

###### <a name="hasContribution_items_contributeur_hasGeographicRelation_items_addressCountry"></a>8.1.3.10.1.3. Property `Série de représentations (Series) > hasContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > addressCountry`

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

###### <a name="hasContribution_items_contributeur_hasGeographicRelation_items_addressRegion"></a>8.1.3.10.1.4. Property `Série de représentations (Series) > hasContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > addressRegion`

**Title:** Texte court

|                        |                                     |
| ---------------------- | ----------------------------------- |
| **Type**               | `string`                            |
| **Required**           | No                                  |
| **Same definition as** | [usageNote](#media_items_usageNote) |

**Description:** Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne)

###### <a name="hasContribution_items_contributeur_hasGeographicRelation_items_addressLocality"></a>8.1.3.10.1.5. Property `Série de représentations (Series) > hasContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > addressLocality`

**Title:** Texte court

|                        |                                     |
| ---------------------- | ----------------------------------- |
| **Type**               | `string`                            |
| **Required**           | No                                  |
| **Same definition as** | [usageNote](#media_items_usageNote) |

**Description:** Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne)

##### <a name="hasContribution_items_contributeur_hasMembers"></a>8.1.3.11. Property `Série de représentations (Series) > hasContribution > Contribution > contributeur > hasMembers`

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

###### <a name="hasContribution_items_contributeur_hasMembers_items"></a>8.1.3.11.1. Série de représentations (Series) > hasContribution > Contribution > contributeur > hasMembers > Contributor

**Title:** Contributor

|                           |                                                     |
| ------------------------- | --------------------------------------------------- |
| **Type**                  | `object`                                            |
| **Required**              | No                                                  |
| **Additional properties** | Any type allowed                                    |
| **Same definition as**    | [contributeur](#hasContribution_items_contributeur) |

**Description:** les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre).

#### <a name="hasContribution_items_sequenceNumber"></a>8.1.4. Property `Série de représentations (Series) > hasContribution > Contribution > sequenceNumber`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Précision sur l'ordre de présentation des contributions (les nombres plus petits correspondent à des contributions qui doivent être présentées en premier).

#### <a name="hasContribution_items_usageNote"></a>8.1.5. Property `Série de représentations (Series) > hasContribution > Contribution > usageNote`

**Title:** Texte court

|                        |                                     |
| ---------------------- | ----------------------------------- |
| **Type**               | `string`                            |
| **Required**           | No                                  |
| **Same definition as** | [usageNote](#media_items_usageNote) |

**Description:** Note concernant la contribution, à l'intention des exploitants des systèmes d'information (et donc pas du grand public). Il peut s'agir d'une précision sur le type de contribution, qui ne pourrait pas être exprimée à travers la propriété Types. Les informations compilées dans les notes pourraient être utilisées pour améliorer les vocabulaires contrôllés.

## <a name="mainEntityOfPage"></a>9. Property `Série de représentations (Series) > mainEntityOfPage`

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

| Each item of this array must be    | Description |
| ---------------------------------- | ----------- |
| [WebPage](#mainEntityOfPage_items) | -           |

### <a name="mainEntityOfPage_items"></a>9.1. Série de représentations (Series) > mainEntityOfPage > WebPage

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

#### <a name="mainEntityOfPage_items_type"></a>9.1.1. Property `Série de représentations (Series) > mainEntityOfPage > WebPage > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"WebPage"`

#### <a name="mainEntityOfPage_items_url"></a>9.1.2. Property `Série de représentations (Series) > mainEntityOfPage > WebPage > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |
| **Format**   | `uri`    |

#### <a name="mainEntityOfPage_items_inLanguage"></a>9.1.3. Property `Série de représentations (Series) > mainEntityOfPage > WebPage > inLanguage`

**Title:** Code de langue

|                        |                          |
| ---------------------- | ------------------------ |
| **Type**               | `string`                 |
| **Required**           | No                       |
| **Same definition as** | [lang](#name_items_lang) |

**Description:** Langue de la page Web, au format ISO 639-1.

## <a name="startDateTime"></a>10. Property `Série de représentations (Series) > startDateTime`

|              |             |
| ------------ | ----------- |
| **Type**     | `string`    |
| **Required** | Yes         |
| **Format**   | `date-time` |

**Description:** Date de début de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

## <a name="endDateTime"></a>11. Property `Série de représentations (Series) > endDateTime`

|              |             |
| ------------ | ----------- |
| **Type**     | `string`    |
| **Required** | No          |
| **Format**   | `date-time` |

**Description:** Date de fin de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

## <a name="hasOffer"></a>12. Property `Série de représentations (Series) > hasOffer`

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

| Each item of this array must be      | Description                                                                                                   |
| ------------------------------------ | ------------------------------------------------------------------------------------------------------------- |
| [offer.schema.json](#hasOffer_items) | 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️ |

### <a name="hasOffer_items"></a>12.1. Série de représentations (Series) > hasOffer > offer.schema.json

|                           |                     |
| ------------------------- | ------------------- |
| **Type**                  | `object`            |
| **Required**              | No                  |
| **Additional properties** | Any type allowed    |
| **Defined in**            | ./offer.schema.json |

**Description:** 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️

----------------------------------------------------------------------------------------------------------------------------
Generated using [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) on 2025-08-18 at 15:47:41 -0400
