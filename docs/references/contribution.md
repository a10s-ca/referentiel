# Contribution (Contribution)

Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Propriété                                                          | Description                                                                                                                                                                                                                                                                                                                                                          | Priorité           | Type et définition                                           |
| ------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------ | ------------------------------------------------------------ |
| [type](#type )                                                     | -                                                                                                                                                                                                                                                                                                                                                                    | Obligatoire        | const                                                        |
| [contributionType](#contributionType )<br/>_Types de contribution_ | Identification des types de contribution.                                                                                                                                                                                                                                                                                                                            | Obligatoire (1..N) | Tableau d'objets de type [Terme (Term)](../term ) |
| [contributor](#contributor )<br/>_Contributeur_                    | Identification du contributeur                                                                                                                                                                                                                                                                                                                                       | Obligatoire        | [Contributeur (contributor)](../contributor )     |
| [sequenceNumber](#sequenceNumber )<br/>_Numéro de séquence_        | Précision sur l'ordre de présentation des contributions (les nombres plus petits correspondent à des contributions qui doivent être présentées en premier).                                                                                                                                                                                                          | Optionnel          | integer                                                      |
| [usageNote](#usageNote )<br/>_Note d'usage_                        | Note concernant la contribution, à l'intention des exploitants des systèmes d'information (et donc pas du grand public). Il peut s'agir d'une précision sur le type de contribution, qui ne pourrait pas être exprimée à travers la propriété Types. Les informations compilées dans les notes pourraient être utilisées pour améliorer les vocabulaires contrôllés. | Optionnel          | [Texte court](../datatypes/text_short )           |

## <a name="type"></a>1. Propriété `Contribution (Contribution) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Contribution"`

## <a name="contributionType"></a>2. Propriété `Contribution (Contribution) > contributionType` (Types de contribution)

Identification des types de contribution.

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Oui     |

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être        | Description                                                                             |
| --------------------------------------- | --------------------------------------------------------------------------------------- |
| [Terme (Term)](#contributionType_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="contributionType_items"></a>2.1. Contribution (Contribution) > contributionType > Terme (Term)

Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

|                               |                                    |
| ----------------------------- | ---------------------------------- |
| **Type**                      | `object`                           |
| **Requis**                    | Non                                |
| **Propriétés additionnelles** | Tout type permis                   |
| **Défini dans**               | [Terme (Term)](../term) |

[Voir la documentation de Terme (Term)](../term)

## <a name="contributor"></a>3. Propriété `Contribution (Contribution) > contributor` (Contributeur)

Identification du contributeur

|                               |                                          |
| ----------------------------- | ---------------------------------------- |
| **Type**                      | `object`                                 |
| **Requis**                    | Oui                                      |
| **Propriétés additionnelles** | Tout type permis                         |
| **Défini dans**               | [contributor](../contributor) |

[Voir la documentation de Contributeur (contributor)](../contributor)

## <a name="sequenceNumber"></a>4. Propriété `Contribution (Contribution) > sequenceNumber` (Numéro de séquence)

Précision sur l'ordre de présentation des contributions (les nombres plus petits correspondent à des contributions qui doivent être présentées en premier).

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Non       |

## <a name="usageNote"></a>5. Propriété `Contribution (Contribution) > usageNote` (Note d'usage)

Note concernant la contribution, à l'intention des exploitants des systèmes d'information (et donc pas du grand public). Il peut s'agir d'une précision sur le type de contribution, qui ne pourrait pas être exprimée à travers la propriété Types. Les informations compilées dans les notes pourraient être utilisées pour améliorer les vocabulaires contrôllés.

|                 |                                                  |
| --------------- | ------------------------------------------------ |
| **Type**        | `string`                                         |
| **Requis**      | Non                                              |
| **Défini dans** | [vocabulary](../datatypes/text_short) |

[Voir la documentation de Texte court](../datatypes/text_short)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-02-09 at 21:53:34 -0500
