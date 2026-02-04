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

| Propriété                                                   | Description                                                                                                                                                                                                                                                                      | Priorité    | Type et définition                                                          |
| ----------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | --------------------------------------------------------------------------- |
| [type](#type )                                              | -                                                                                                                                                                                                                                                                                | Obligatoire | const                                                                       |
| [vocabulary](#vocabulary )<br/>_Vocabulaire_                | Identification du vocabulaire duquel est tiré le term.<br /><br />Typiquement, cette identification correspond à l'appellation du vocabulaire dont l'usage est le plus fréquent, tout en minuscules, sans accents, et avec les espaces remplacés par des barres de soulignement. | Obligatoire | [Texte court](../datatypes/text_short )                          |
| [version](#version )<br/>_Version_                          | Version du vocabulaire utilisé, lorsque c'est applicable                                                                                                                                                                                                                         | Optionnel   | [Texte court](../datatypes/text_short )                          |
| [code](#code )<br/>_Code_                                   | Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.                                                                                                                     | Obligatoire | [Texte court](../datatypes/text_short )                          |
| [label](#label )<br/>_Libellé_                              | Version textuelle du terme tiré du vocabulaire choisi                                                                                                                                                                                                                            | Optionnel   | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| [sequenceNumber](#sequenceNumber )<br/>_Numéro de séquence_ | Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                                                         | Obligatoire | integer                                                                     |

## <a name="type"></a>1. Propriété `Term > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Term"`

## <a name="vocabulary"></a>2. Propriété `Term > vocabulary`

**Nom:** Vocabulaire

|                 |                                                  |
| --------------- | ------------------------------------------------ |
| **Type**        | `string`                                         |
| **Requis**      | Oui                                              |
| **Défini dans** | [vocabulary](../datatypes/text_short) |

**Description:** Identification du vocabulaire duquel est tiré le term.

Typiquement, cette identification correspond à l'appellation du vocabulaire dont l'usage est le plus fréquent, tout en minuscules, sans accents, et avec les espaces remplacés par des barres de soulignement.

[Voir la documentation de Texte court](../datatypes/text_short)

## <a name="version"></a>3. Propriété `Term > version`

**Nom:** Version

|                 |                                                  |
| --------------- | ------------------------------------------------ |
| **Type**        | `string`                                         |
| **Requis**      | Non                                              |
| **Défini dans** | [vocabulary](../datatypes/text_short) |

**Description:** Version du vocabulaire utilisé, lorsque c'est applicable

[Voir la documentation de Texte court](../datatypes/text_short)

## <a name="code"></a>4. Propriété `Term > code`

**Nom:** Code

|                 |                                                  |
| --------------- | ------------------------------------------------ |
| **Type**        | `string`                                         |
| **Requis**      | Oui                                              |
| **Défini dans** | [vocabulary](../datatypes/text_short) |

**Description:** Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.

[Voir la documentation de Texte court](../datatypes/text_short)

## <a name="label"></a>5. Propriété `Term > label`

**Nom:** Libellé

|                 |                                                          |
| --------------- | -------------------------------------------------------- |
| **Type**        | `array of object`                                        |
| **Requis**      | Non                                                      |
| **Défini dans** | [label](../datatypes/text_short_multilingual) |

**Description:** Version textuelle du terme tiré du vocabulaire choisi

[Voir la documentation de Texte court multilingue](../datatypes/text_short_multilingual)

## <a name="sequenceNumber"></a>6. Propriété `Term > sequenceNumber`

**Nom:** Numéro de séquence

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Oui       |

**Description:** Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-02-04 at 16:37:16 -0500
