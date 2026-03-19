# Configuration de salle

Précisions sur un configuration possible de la salle.

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Propriété                             | Description                                                                             | Priorité    | Type et définition                  |
| ------------------------------------- | --------------------------------------------------------------------------------------- | ----------- | ----------------------------------- |
| [type](#type )                        | -                                                                                       | Obligatoire | const                               |
| [layout](#layout )<br/>_Disposition_  | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. | Obligatoire | [Terme (Term)](../term ) |
| [capacity](#capacity )<br/>_Capacité_ | Capacité, en nombre de spectacteurs.                                                    | Optionnel   | integer                             |

## <a name="type"></a>1. Propriété `Configuration de salle > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"RoomConfiguration"`

## <a name="layout"></a>2. Propriété `Configuration de salle > layout` (Disposition)

Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

|                               |                              |
| ----------------------------- | ---------------------------- |
| **Type**                      | `object`                     |
| **Requis**                    | Oui                          |
| **Propriétés additionnelles** | Tout type permis             |
| **Défini dans**               | [layout](../term) |

[Voir la documentation de Terme (Term)](../term)

## <a name="capacity"></a>3. Propriété `Configuration de salle > capacity` (Capacité)

Capacité, en nombre de spectacteurs.

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Non       |

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-03-19 at 14:05:28 -0400
