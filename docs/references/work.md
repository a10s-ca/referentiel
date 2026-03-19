# Oeuvre (Work)

Cette classe sert à décrire des œuvres associées au spectacle, par exemple le texte d’une pièce de théâtre.

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Propriété                                    | Description                                                                                                                       | Priorité           | Type et définition                                                          |
| -------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | ------------------ | --------------------------------------------------------------------------- |
| [type](#type )                               | -                                                                                                                                 | Obligatoire        | const                                                                       |
| [identifier](#identifier )<br/>_Identifiant_ | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois. | Obligatoire (1..N) | [Identifiant (Identifier)](../identifier )                       |
| [name](#name )<br/>_Nom_                     | Nom de l'oeuvre.                                                                                                                  | Obligatoire        | [Texte court multilingue](../datatypes/text_short_multilingual ) |

## <a name="type"></a>1. Propriété `Oeuvre (Work) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Work"`

## <a name="identifier"></a>2. Propriété `Oeuvre (Work) > identifier` (Identifiant)

Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

|                 |                                        |
| --------------- | -------------------------------------- |
| **Type**        | `array`                                |
| **Requis**      | Oui                                    |
| **Défini dans** | [identifier](../identifier) |

[Voir la documentation de Identifiant (Identifier)](../identifier)

## <a name="name"></a>3. Propriété `Oeuvre (Work) > name` (Nom)

Nom de l'oeuvre.

|                 |                                                         |
| --------------- | ------------------------------------------------------- |
| **Type**        | `array of object`                                       |
| **Requis**      | Oui                                                     |
| **Défini dans** | [name](../datatypes/text_short_multilingual) |

[Voir la documentation de Texte court multilingue](../datatypes/text_short_multilingual)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-03-19 at 14:32:42 -0400
