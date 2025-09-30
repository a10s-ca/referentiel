# Term

**Nom:** Term

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

**Exemple:**

```json
{
    "type": "Term",
    "vocabulary": "datascene",
    "code": "ToutPublics",
    "version": "1.0",
    "sequenceNumber": 1
}
```

| Propriété                            | Description                                                                                                                                                                                                                                                                      | Type de donnée | Définition                                            |
| ------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | ----------------------------------------------------- |
| + [type](#type )                     | -                                                                                                                                                                                                                                                                                | const          | -                                                     |
| + [vocabulary](#vocabulary )         | Identification du vocabulaire duquel est tiré le term.<br /><br />Typiquement, cette identification correspond à l'appellation du vocabulaire dont l'usage est le plus fréquent, tout en minuscules, sans accents, et avec les espaces remplacés par des barres de soulignement. | object         | [](../datatypes/text_short )              |
| - [version](#version )               | Version du vocabulaire utilisé, lorsque c'est applicable                                                                                                                                                                                                                         | object         | [](../datatypes/text_short )              |
| + [code](#code )                     | Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.                                                                                                                     | object         | [](../datatypes/text_short )              |
| - [label](#label )                   | Version textuelle du terme tiré du vocabulaire choisi                                                                                                                                                                                                                            | object         | [](../datatypes/text_short_multilingual ) |
| + [sequenceNumber](#sequenceNumber ) | Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                                                         | integer        | -                                                     |

## <a name="type"></a>1. Propriété `Term > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Term"`

## <a name="vocabulary"></a>2. Propriété `Term > vocabulary`

|                               |                                                   |
| ----------------------------- | ------------------------------------------------- |
| **Type**                      | `object`                                          |
| **Requis**                    | Oui                                               |
| **Propriétés additionnelles** | Tout type permis                                  |
| **Défini dans**               | [vocabulary](../datatypes/text_short) |

**Description:** Identification du vocabulaire duquel est tiré le term.

Typiquement, cette identification correspond à l'appellation du vocabulaire dont l'usage est le plus fréquent, tout en minuscules, sans accents, et avec les espaces remplacés par des barres de soulignement.

## <a name="version"></a>3. Propriété `Term > version`

|                               |                                                |
| ----------------------------- | ---------------------------------------------- |
| **Type**                      | `object`                                       |
| **Requis**                    | Non                                            |
| **Propriétés additionnelles** | Tout type permis                               |
| **Défini dans**               | [version](../datatypes/text_short) |

**Description:** Version du vocabulaire utilisé, lorsque c'est applicable

## <a name="code"></a>4. Propriété `Term > code`

|                               |                                             |
| ----------------------------- | ------------------------------------------- |
| **Type**                      | `object`                                    |
| **Requis**                    | Oui                                         |
| **Propriétés additionnelles** | Tout type permis                            |
| **Défini dans**               | [code](../datatypes/text_short) |

**Description:** Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.

## <a name="label"></a>5. Propriété `Term > label`

|                               |                                                           |
| ----------------------------- | --------------------------------------------------------- |
| **Type**                      | `object`                                                  |
| **Requis**                    | Non                                                       |
| **Propriétés additionnelles** | Tout type permis                                          |
| **Défini dans**               | [label](../datatypes/text_short_multilingual) |

**Description:** Version textuelle du terme tiré du vocabulaire choisi

## <a name="sequenceNumber"></a>6. Propriété `Term > sequenceNumber`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Oui       |

**Description:** Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2025-09-30 at 17:17:56 -0400
