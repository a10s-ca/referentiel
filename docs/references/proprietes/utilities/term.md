# Term

**Title:** Term

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

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

| Property                             | Title/Description                                                                                        | Type            | Definition                                          |
| ------------------------------------ | -------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------- |
| + [type](#type )                     | -                                                                                                        | const           | -                                                   |
| + [vocabulary](#vocabulary )         | Texte court                                                                                              | string          | In ../datatypes/text_short.schema.json              |
| - [version](#version )               | Texte court                                                                                              | string          | Same as [vocabulary](#vocabulary )                  |
| + [code](#code )                     | Texte court                                                                                              | string          | Same as [vocabulary](#vocabulary )                  |
| - [label](#label )                   | Texte court multilingue                                                                                  | array of object | In ../datatypes/text_short_multilingual.schema.json |
| + [sequenceNumber](#sequenceNumber ) | Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé). | integer         | -                                                   |

## <a name="type"></a>1. Property `Term > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Term"`

## <a name="vocabulary"></a>2. Property `Term > vocabulary`

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

## <a name="version"></a>3. Property `Term > version`

**Title:** Texte court

|                        |                           |
| ---------------------- | ------------------------- |
| **Type**               | `string`                  |
| **Required**           | No                        |
| **Same definition as** | [vocabulary](#vocabulary) |

**Description:** Version du vocabulaire utilisé, lorsque c'est applicable

## <a name="code"></a>4. Property `Term > code`

**Title:** Texte court

|                        |                           |
| ---------------------- | ------------------------- |
| **Type**               | `string`                  |
| **Required**           | Yes                       |
| **Same definition as** | [vocabulary](#vocabulary) |

**Description:** Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.

## <a name="label"></a>5. Property `Term > label`

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

| Each item of this array must be | Description |
| ------------------------------- | ----------- |
| [label items](#label_items)     | -           |

### <a name="label_items"></a>5.1. Term > label > label items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                       | Title/Description | Type   | Definition                         |
| ------------------------------ | ----------------- | ------ | ---------------------------------- |
| + [lang](#label_items_lang )   | Code de langue    | string | In ./partials/language.schema.json |
| + [value](#label_items_value ) | Texte court       | string | In ./partials/no_html.schema.json  |

#### <a name="label_items_lang"></a>5.1.1. Property `Term > label > label items > lang`

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

#### <a name="label_items_value"></a>5.1.2. Property `Term > label > label items > value`

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

## <a name="sequenceNumber"></a>6. Property `Term > sequenceNumber`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | Yes       |

**Description:** Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).

----------------------------------------------------------------------------------------------------------------------------
Generated using [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) on 2025-09-05 at 15:39:36 -0400
