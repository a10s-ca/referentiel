# Média

**Title:** Média

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

| Property                               | Title/Description                                                                                                                                                                                                                              | Type            | Definition                                         |
| -------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | -------------------------------------------------- |
| + [type](#type )                       | -                                                                                                                                                                                                                                              | const           | -                                                  |
| - [sequenceNumber](#sequenceNumber )   | Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                       | integer         | -                                                  |
| - [usageNote](#usageNote )             | Texte court                                                                                                                                                                                                                                    | string          | In ../datatypes/text_short.schema.json             |
| + [url](#url )                         | URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible                                                                                     | string          | -                                                  |
| - [inLanguage](#inLanguage )           | Code de langue                                                                                                                                                                                                                                 | string          | In ../datatypes/partials/language.schema.json      |
| - [license](#license )                 | Licence d'utilisation du média. Une valeur vide ou non définie correspond à un média libre de droits. Si des conditions s'appliquent, elles doivent être définies dans cette propriété, ou sur le web à une URL intégrée dans cette propriété. | array           | -                                                  |
| - [creditText](#creditText )           | Crédits associés au média.                                                                                                                                                                                                                     | array           | -                                                  |
| - [copyrightHolder](#copyrightHolder ) | Texte court multilingue                                                                                                                                                                                                                        | array of object | Same as [Texte court multilingue](#license_items ) |
| - [description](#description )         | Description courte (pouvant par exemple servir de «alt description» sur le web).                                                                                                                                                               | array           | -                                                  |

## <a name="type"></a>1. Property `Média > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Media"`

## <a name="sequenceNumber"></a>2. Property `Média > sequenceNumber`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).

## <a name="usageNote"></a>3. Property `Média > usageNote`

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

## <a name="url"></a>4. Property `Média > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |
| **Format**   | `uri`    |

**Description:** URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible

## <a name="inLanguage"></a>5. Property `Média > inLanguage`

**Title:** Code de langue

|                |                                            |
| -------------- | ------------------------------------------ |
| **Type**       | `string`                                   |
| **Required**   | No                                         |
| **Defined in** | ../datatypes/partials/language.schema.json |

**Description:** Langue au format ISO 639-1.

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

## <a name="license"></a>6. Property `Média > license`

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

| Each item of this array must be           | Description                                                                                 |
| ----------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#license_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

### <a name="license_items"></a>6.1. Média > license > Texte court multilingue

**Title:** Texte court multilingue

|                |                                                  |
| -------------- | ------------------------------------------------ |
| **Type**       | `array of object`                                |
| **Required**   | No                                               |
| **Defined in** | ../datatypes/text_short_multilingual.schema.json |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | True               |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be             | Description |
| ------------------------------------------- | ----------- |
| [license items items](#license_items_items) | -           |

#### <a name="license_items_items"></a>6.1.1. Média > license > Texte court multilingue > license items items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                               | Title/Description | Type   | Definition                         |
| -------------------------------------- | ----------------- | ------ | ---------------------------------- |
| + [lang](#license_items_items_lang )   | Code de langue    | string | Same as [inLanguage](#inLanguage ) |
| + [value](#license_items_items_value ) | Texte court       | string | In ./partials/no_html.schema.json  |

##### <a name="license_items_items_lang"></a>6.1.1.1. Property `Média > license > Texte court multilingue > license items items > lang`

**Title:** Code de langue

|                        |                           |
| ---------------------- | ------------------------- |
| **Type**               | `string`                  |
| **Required**           | Yes                       |
| **Same definition as** | [inLanguage](#inLanguage) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

##### <a name="license_items_items_value"></a>6.1.1.2. Property `Média > license > Texte court multilingue > license items items > value`

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

## <a name="creditText"></a>7. Property `Média > creditText`

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

| Each item of this array must be              | Description                                                                                 |
| -------------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#creditText_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

### <a name="creditText_items"></a>7.1. Média > creditText > Texte court multilingue

**Title:** Texte court multilingue

|                        |                                           |
| ---------------------- | ----------------------------------------- |
| **Type**               | `array of object`                         |
| **Required**           | No                                        |
| **Same definition as** | [Texte court multilingue](#license_items) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

## <a name="copyrightHolder"></a>8. Property `Média > copyrightHolder`

**Title:** Texte court multilingue

|                        |                                           |
| ---------------------- | ----------------------------------------- |
| **Type**               | `array of object`                         |
| **Required**           | No                                        |
| **Same definition as** | [Texte court multilingue](#license_items) |

**Description:** Personne ou organisation détenant les droits d'auteur du média.

## <a name="description"></a>9. Property `Média > description`

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

| Each item of this array must be              | Description                                                                     |
| -------------------------------------------- | ------------------------------------------------------------------------------- |
| [Texte long multilingue](#description_items) | Énumération de textes longs associés à un code de langue au standard ISO 639-1. |

### <a name="description_items"></a>9.1. Média > description > Texte long multilingue

**Title:** Texte long multilingue

|                |                                                 |
| -------------- | ----------------------------------------------- |
| **Type**       | `array of object`                               |
| **Required**   | No                                              |
| **Defined in** | ../datatypes/text_long_multilingual.schema.json |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | True               |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                     | Description |
| --------------------------------------------------- | ----------- |
| [description items items](#description_items_items) | -           |

#### <a name="description_items_items"></a>9.1.1. Média > description > Texte long multilingue > description items items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                                   | Title/Description | Type   | Definition                                |
| ------------------------------------------ | ----------------- | ------ | ----------------------------------------- |
| + [lang](#description_items_items_lang )   | Code de langue    | string | Same as [inLanguage](#inLanguage )        |
| + [value](#description_items_items_value ) | Texte long        | string | In ./partials/authorized_html.schema.json |

##### <a name="description_items_items_lang"></a>9.1.1.1. Property `Média > description > Texte long multilingue > description items items > lang`

**Title:** Code de langue

|                        |                           |
| ---------------------- | ------------------------- |
| **Type**               | `string`                  |
| **Required**           | Yes                       |
| **Same definition as** | [inLanguage](#inLanguage) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

##### <a name="description_items_items_value"></a>9.1.1.2. Property `Média > description > Texte long multilingue > description items items > value`

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

----------------------------------------------------------------------------------------------------------------------------
Generated using [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) on 2025-09-05 at 15:39:36 -0400
