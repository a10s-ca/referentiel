# WebPage

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Propriété                                | Description                                 | Priorité    | Type et définition                                           |
| ---------------------------------------- | ------------------------------------------- | ----------- | ------------------------------------------------------------ |
| [type](#type )                           | -                                           | Obligatoire | const                                                        |
| [url](#url )<br/>_URL_                   | -                                           | Obligatoire | string (uri)                                                 |
| [inLanguage](#inLanguage )<br/>_Langues_ | Langue de la page Web, au format ISO 639-1. | Optionnel   | [Code de langue](../datatypes/partials/language ) |

## <a name="type"></a>1. Propriété `WebPage > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"WebPage"`

## <a name="url"></a>2. Propriété `WebPage > url` (URL)

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |
| **Format** | `uri`    |

## <a name="inLanguage"></a>3. Propriété `WebPage > inLanguage` (Langues)

Langue de la page Web, au format ISO 639-1.

|                 |                                                         |
| --------------- | ------------------------------------------------------- |
| **Type**        | `string`                                                |
| **Requis**      | Non                                                     |
| **Défini dans** | [inLanguage](../datatypes/partials/language) |

[Voir la documentation de Code de langue](../datatypes/partials/language)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-02-09 at 20:27:43 -0500
