# Configuration de salle

**Title:** Configuration de salle

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Précisions sur un configuration possible de la salle.

| Property                 | Title/Description                    | Type    | Definition          |
| ------------------------ | ------------------------------------ | ------- | ------------------- |
| + [type](#type )         | -                                    | const   | -                   |
| + [layout](#layout )     | Term                                 | object  | In term.schema.json |
| - [capacity](#capacity ) | Capacité, en nombre de spectacteurs. | integer | -                   |

## <a name="type"></a>1. Property `Configuration de salle > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"RoomConfiguration"`

## <a name="layout"></a>2. Property `Configuration de salle > layout`

**Title:** Term

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | Yes              |
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

| Property                                    | Title/Description                                                                                        | Type            | Definition                                          |
| ------------------------------------------- | -------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------- |
| + [type](#layout_type )                     | -                                                                                                        | const           | -                                                   |
| + [vocabulary](#layout_vocabulary )         | Texte court                                                                                              | string          | In ../datatypes/text_short.schema.json              |
| - [version](#layout_version )               | Texte court                                                                                              | string          | Same as [vocabulary](#layout_vocabulary )           |
| + [code](#layout_code )                     | Texte court                                                                                              | string          | Same as [vocabulary](#layout_vocabulary )           |
| - [label](#layout_label )                   | Texte court multilingue                                                                                  | array of object | In ../datatypes/text_short_multilingual.schema.json |
| + [sequenceNumber](#layout_sequenceNumber ) | Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé). | integer         | -                                                   |

### <a name="layout_type"></a>2.1. Property `Configuration de salle > layout > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Term"`

### <a name="layout_vocabulary"></a>2.2. Property `Configuration de salle > layout > vocabulary`

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

### <a name="layout_version"></a>2.3. Property `Configuration de salle > layout > version`

**Title:** Texte court

|                        |                                  |
| ---------------------- | -------------------------------- |
| **Type**               | `string`                         |
| **Required**           | No                               |
| **Same definition as** | [vocabulary](#layout_vocabulary) |

**Description:** Version du vocabulaire utilisé, lorsque c'est applicable

### <a name="layout_code"></a>2.4. Property `Configuration de salle > layout > code`

**Title:** Texte court

|                        |                                  |
| ---------------------- | -------------------------------- |
| **Type**               | `string`                         |
| **Required**           | Yes                              |
| **Same definition as** | [vocabulary](#layout_vocabulary) |

**Description:** Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.

### <a name="layout_label"></a>2.5. Property `Configuration de salle > layout > label`

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

| Each item of this array must be    | Description |
| ---------------------------------- | ----------- |
| [label items](#layout_label_items) | -           |

#### <a name="layout_label_items"></a>2.5.1. Configuration de salle > layout > label > label items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                              | Title/Description | Type   | Definition                         |
| ------------------------------------- | ----------------- | ------ | ---------------------------------- |
| + [lang](#layout_label_items_lang )   | Code de langue    | string | In ./partials/language.schema.json |
| + [value](#layout_label_items_value ) | Texte court       | string | In ./partials/no_html.schema.json  |

##### <a name="layout_label_items_lang"></a>2.5.1.1. Property `Configuration de salle > layout > label > label items > lang`

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

##### <a name="layout_label_items_value"></a>2.5.1.2. Property `Configuration de salle > layout > label > label items > value`

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

### <a name="layout_sequenceNumber"></a>2.6. Property `Configuration de salle > layout > sequenceNumber`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | Yes       |

**Description:** Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).

## <a name="capacity"></a>3. Property `Configuration de salle > capacity`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Capacité, en nombre de spectacteurs.

----------------------------------------------------------------------------------------------------------------------------
Generated using [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) on 2025-08-18 at 15:47:41 -0400
