# Contribution

**Nom:** Contribution

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

**Description:** Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

| Propriété                                                          | Description                                                                                                                                                                                                                                                                                                                                                          | Priorité           | Type et définition                                   |
| ------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------ | ---------------------------------------------------- |
| [type](#type )                                                     | -                                                                                                                                                                                                                                                                                                                                                                    | Obligatoire        | const                                                |
| [contributionType](#contributionType )<br/>_Types de contribution_ | Identification des types de contribution.                                                                                                                                                                                                                                                                                                                            | Obligatoire (1..N) | Tableau d'objets de type [Term](../term ) |
| [contributor](#contributor )<br/>_Contributeur_                    | Identification du contributeur                                                                                                                                                                                                                                                                                                                                       | Obligatoire        | [Contributor](../contributor )            |
| [sequenceNumber](#sequenceNumber )<br/>_Numéro de séquence_        | Précision sur l'ordre de présentation des contributions (les nombres plus petits correspondent à des contributions qui doivent être présentées en premier).                                                                                                                                                                                                          | Optionnel          | integer                                              |
| [usageNote](#usageNote )<br/>_Note d'usage_                        | Note concernant la contribution, à l'intention des exploitants des systèmes d'information (et donc pas du grand public). Il peut s'agir d'une précision sur le type de contribution, qui ne pourrait pas être exprimée à travers la propriété Types. Les informations compilées dans les notes pourraient être utilisées pour améliorer les vocabulaires contrôllés. | Optionnel          | [Texte court](../datatypes/text_short )   |

## <a name="type"></a>1. Propriété `Contribution > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Contribution"`

## <a name="contributionType"></a>2. Propriété `Contribution > contributionType`

**Nom:** Types de contribution

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Oui     |

**Description:** Identification des types de contribution.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être | Description                                                                             |
| -------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#contributionType_items)  | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="contributionType_items"></a>2.1. Contribution > contributionType > Term

**Nom:** Term

|                               |                            |
| ----------------------------- | -------------------------- |
| **Type**                      | `object`                   |
| **Requis**                    | Non                        |
| **Propriétés additionnelles** | Tout type permis           |
| **Défini dans**               | [Term](../term) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

[Voir la documentation de Term](../term)

## <a name="contributor"></a>3. Propriété `Contribution > contributor`

**Nom:** Contributeur

|                               |                                          |
| ----------------------------- | ---------------------------------------- |
| **Type**                      | `object`                                 |
| **Requis**                    | Oui                                      |
| **Propriétés additionnelles** | Tout type permis                         |
| **Défini dans**               | [contributor](../contributor) |

**Description:** Identification du contributeur

[Voir la documentation de Contributor](../contributor)

## <a name="sequenceNumber"></a>4. Propriété `Contribution > sequenceNumber`

**Nom:** Numéro de séquence

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Non       |

**Description:** Précision sur l'ordre de présentation des contributions (les nombres plus petits correspondent à des contributions qui doivent être présentées en premier).

## <a name="usageNote"></a>5. Propriété `Contribution > usageNote`

**Nom:** Note d'usage

|                 |                                                  |
| --------------- | ------------------------------------------------ |
| **Type**        | `string`                                         |
| **Requis**      | Non                                              |
| **Défini dans** | [vocabulary](../datatypes/text_short) |

**Description:** Note concernant la contribution, à l'intention des exploitants des systèmes d'information (et donc pas du grand public). Il peut s'agir d'une précision sur le type de contribution, qui ne pourrait pas être exprimée à travers la propriété Types. Les informations compilées dans les notes pourraient être utilisées pour améliorer les vocabulaires contrôllés.

[Voir la documentation de Texte court](../datatypes/text_short)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-02-04 at 16:37:16 -0500
