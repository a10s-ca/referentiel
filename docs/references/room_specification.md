# Configuration de salle

**Nom:** Configuration de salle

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

**Description:** Précisions sur un configuration possible de la salle.

| Propriété                | Description                                                                             | Type de donnée | Définition                  |
| ------------------------ | --------------------------------------------------------------------------------------- | -------------- | --------------------------- |
| + [type](#type )         | -                                                                                       | const          | -                           |
| + [layout](#layout )     | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. | object         | [Term](../term ) |
| - [capacity](#capacity ) | Capacité, en nombre de spectacteurs.                                                    | integer        | -                           |

## <a name="type"></a>1. Propriété `Configuration de salle > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"RoomConfiguration"`

## <a name="layout"></a>2. Propriété `Configuration de salle > layout`

**Nom:** Term

|                               |                              |
| ----------------------------- | ---------------------------- |
| **Type**                      | `object`                     |
| **Requis**                    | Oui                          |
| **Propriétés additionnelles** | Tout type permis             |
| **Défini dans**               | [layout](../term) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

[Voir la documentation de Term](../term)

## <a name="capacity"></a>3. Propriété `Configuration de salle > capacity`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Non       |

**Description:** Capacité, en nombre de spectacteurs.

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-01-19 at 16:04:18 -0500
