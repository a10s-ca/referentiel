# WebPage

**Nom:** WebPage

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Propriété                    | Description                                 | Type de donnée | Définition                                                   |
| ---------------------------- | ------------------------------------------- | -------------- | ------------------------------------------------------------ |
| + [type](#type )             | -                                           | const          | -                                                            |
| + [url](#url )               | -                                           | string         | -                                                            |
| - [inLanguage](#inLanguage ) | Langue de la page Web, au format ISO 639-1. | string         | [Code de langue](../datatypes/partials/language ) |

## <a name="type"></a>1. Propriété `WebPage > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"WebPage"`

## <a name="url"></a>2. Propriété `WebPage > url`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |
| **Format** | `uri`    |

## <a name="inLanguage"></a>3. Propriété `WebPage > inLanguage`

**Nom:** Code de langue

|                 |                                                         |
| --------------- | ------------------------------------------------------- |
| **Type**        | `string`                                                |
| **Requis**      | Non                                                     |
| **Défini dans** | [inLanguage](../datatypes/partials/language) |

**Description:** Langue de la page Web, au format ISO 639-1.

**Exemples:**

```json
"fr"
```

```json
"en"
```

```json
"mul"
```

| Restrictions                                   |                                                                                                       |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| **Longueur minimale**                          | 2                                                                                                     |
| **Doit correspondre à l'expression régulière** | ```^[a-z]{2,3}$``` [Test](https://regex101.com/?regex=%5E%5Ba-z%5D%7B2%2C3%7D%24&testString=%22fr%22) |

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2025-12-16 at 12:20:16 -0500
