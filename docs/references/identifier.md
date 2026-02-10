# Identifiant (Identifier)

Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Exemples:**

```json
{
    "type": "PropertyValue",
    "propertyID": "isni",
    "valeur": "000000012124423X"
}
```

```json
"https://isni.org/isni/000000012124423X"
```

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | 1                      |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Vrai                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être | Description |
| -------------------------------- | ----------- |
| [root items](#items)             | -           |

## <a name="items"></a>1. Identifiant (Identifier) > root items

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `combinaison`    |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Any of(Option)            |
| ------------------------- |
| [item 0](#items_anyOf_i0) |
| [item 1](#items_anyOf_i1) |

### <a name="items_anyOf_i0"></a>1.1. Propriété `Identifiant (Identifier) > root items > anyOf > item 0`

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Propriété                                                                | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | Priorité    | Type et définition |
| ------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ------------------ |
| [type](#items_anyOf_i0_type )                                            | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Obligatoire | const              |
| [propertyID](#items_anyOf_i0_propertyID )<br/>_Identifiant de propriété_ | Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles. | Obligatoire | string             |
| [value](#items_anyOf_i0_value )<br/>_Valeur_                             | L'identifiant lui-même                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Obligatoire | string             |

#### <a name="items_anyOf_i0_type"></a>1.1.1. Propriété `Identifiant (Identifier) > root items > anyOf > item 0 > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"PropertyValue"`

#### <a name="items_anyOf_i0_propertyID"></a>1.1.2. Propriété `Identifiant (Identifier) > root items > anyOf > item 0 > propertyID` (Identifiant de propriété)

Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles.

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |

| Restrictions          |   |
| --------------------- | - |
| **Longueur minimale** | 1 |

#### <a name="items_anyOf_i0_value"></a>1.1.3. Propriété `Identifiant (Identifier) > root items > anyOf > item 0 > value` (Valeur)

L'identifiant lui-même

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |

| Restrictions          |   |
| --------------------- | - |
| **Longueur minimale** | 1 |

### <a name="items_anyOf_i1"></a>1.2. Propriété `Identifiant (Identifier) > root items > anyOf > item 1`

Un identifiant URI sous forme de chaîne de caractères.

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Non      |
| **Format** | `uri`    |

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-02-09 at 21:49:27 -0500
