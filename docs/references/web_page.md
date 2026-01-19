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

[Voir la documentation de Code de langue](../datatypes/partials/language)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-01-19 at 16:15:47 -0500
