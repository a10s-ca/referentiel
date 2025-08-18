# Oeuvre (Work)

**Title:** Oeuvre (Work)

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Cette classe sert à décrire des œuvres associées au spectacle, par exemple le texte d’une pièce de théâtre.

| Property                     | Title/Description       | Type            | Definition                                         |
| ---------------------------- | ----------------------- | --------------- | -------------------------------------------------- |
| + [type](#type )             | -                       | const           | -                                                  |
| + [identifier](#identifier ) | identifier              | array           | In ./utilities/identifier.schema.json              |
| + [name](#name )             | Texte court multilingue | array of object | In ./datatypes/text_short_multilingual.schema.json |

## <a name="type"></a>1. Property `Oeuvre (Work) > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Work"`

## <a name="identifier"></a>2. Property `Oeuvre (Work) > identifier`

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

### <a name="identifier_items"></a>2.1. Oeuvre (Work) > identifier > identifier items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Any of(Option)                       |
| ------------------------------------ |
| [item 0](#identifier_items_anyOf_i0) |
| [item 1](#identifier_items_anyOf_i1) |

#### <a name="identifier_items_anyOf_i0"></a>2.1.1. Property `Oeuvre (Work) > identifier > identifier items > anyOf > item 0`

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

##### <a name="identifier_items_anyOf_i0_type"></a>2.1.1.1. Property `Oeuvre (Work) > identifier > identifier items > anyOf > item 0 > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"PropertyValue"`

##### <a name="identifier_items_anyOf_i0_propertyID"></a>2.1.1.2. Property `Oeuvre (Work) > identifier > identifier items > anyOf > item 0 > propertyID`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles.

| Restrictions   |   |
| -------------- | - |
| **Min length** | 1 |

##### <a name="identifier_items_anyOf_i0_value"></a>2.1.1.3. Property `Oeuvre (Work) > identifier > identifier items > anyOf > item 0 > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** L'identifiant lui-même

| Restrictions   |   |
| -------------- | - |
| **Min length** | 1 |

#### <a name="identifier_items_anyOf_i1"></a>2.1.2. Property `Oeuvre (Work) > identifier > identifier items > anyOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |
| **Format**   | `uri`    |

**Description:** Un identifiant URI sous forme de chaîne de caractères.

## <a name="name"></a>3. Property `Oeuvre (Work) > name`

**Title:** Texte court multilingue

|                |                                                 |
| -------------- | ----------------------------------------------- |
| **Type**       | `array of object`                               |
| **Required**   | Yes                                             |
| **Defined in** | ./datatypes/text_short_multilingual.schema.json |

**Description:** Nom de l'oeuvre.

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

### <a name="name_items"></a>3.1. Oeuvre (Work) > name > name items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                      | Title/Description | Type   | Definition                         |
| ----------------------------- | ----------------- | ------ | ---------------------------------- |
| + [lang](#name_items_lang )   | Code de langue    | string | In ./partials/language.schema.json |
| + [value](#name_items_value ) | Texte court       | string | In ./partials/no_html.schema.json  |

#### <a name="name_items_lang"></a>3.1.1. Property `Oeuvre (Work) > name > name items > lang`

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

#### <a name="name_items_value"></a>3.1.2. Property `Oeuvre (Work) > name > name items > value`

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

----------------------------------------------------------------------------------------------------------------------------
Generated using [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) on 2025-08-18 at 15:47:41 -0400
