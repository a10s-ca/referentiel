# Oeuvre (Work)

**Nom:** Oeuvre (Work)

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

**Description:** Cette classe sert à décrire des œuvres associées au spectacle, par exemple le texte d’une pièce de théâtre.

| Propriété                    | Description                                                                                                                       | Type de donnée  | Définition                                                                  |
| ---------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------------------------- |
| + [type](#type )             | -                                                                                                                                 | const           | -                                                                           |
| + [identifier](#identifier ) | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois. | array           | [identifier](../identifier )                                     |
| + [name](#name )             | Nom de l'oeuvre.                                                                                                                  | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |

## <a name="type"></a>1. Propriété `Oeuvre (Work) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Work"`

## <a name="identifier"></a>2. Propriété `Oeuvre (Work) > identifier`

**Nom:** identifier

|                 |                                        |
| --------------- | -------------------------------------- |
| **Type**        | `array`                                |
| **Requis**      | Oui                                    |
| **Défini dans** | [identifier](../identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

[Voir la documentation de identifier](../identifier)

## <a name="name"></a>3. Propriété `Oeuvre (Work) > name`

**Nom:** Texte court multilingue

|                 |                                                         |
| --------------- | ------------------------------------------------------- |
| **Type**        | `array of object`                                       |
| **Requis**      | Oui                                                     |
| **Défini dans** | [name](../datatypes/text_short_multilingual) |

**Description:** Nom de l'oeuvre.

[Voir la documentation de Texte court multilingue](../datatypes/text_short_multilingual)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-01-19 at 16:15:47 -0500
