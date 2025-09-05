# WebPage

**Title:** WebPage

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                     | Title/Description | Type   | Definition                                    |
| ---------------------------- | ----------------- | ------ | --------------------------------------------- |
| + [type](#type )             | -                 | const  | -                                             |
| + [url](#url )               | -                 | string | -                                             |
| - [inLanguage](#inLanguage ) | Code de langue    | string | In ../datatypes/partials/language.schema.json |

## <a name="type"></a>1. Property `WebPage > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"WebPage"`

## <a name="url"></a>2. Property `WebPage > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |
| **Format**   | `uri`    |

## <a name="inLanguage"></a>3. Property `WebPage > inLanguage`

**Title:** Code de langue

|                |                                            |
| -------------- | ------------------------------------------ |
| **Type**       | `string`                                   |
| **Required**   | No                                         |
| **Defined in** | ../datatypes/partials/language.schema.json |

**Description:** Langue de la page Web, au format ISO 639-1.

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

----------------------------------------------------------------------------------------------------------------------------
Generated using [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) on 2025-09-05 at 15:39:36 -0400
