# Texte court multilingue

Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

|            |                   |
| ---------- | ----------------- |
| **Type**   | `array of object` |
| **Requis** | Non               |

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Vrai                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être | Description |
| -------------------------------- | ----------- |
| [root items](#items)             | -           |

## <a name="items"></a>1. Texte court multilingue > root items

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                                | Description                                                                                                                                                | Priorité    | Type et définition                                 |
| ---------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | -------------------------------------------------- |
| [lang](#items_lang )<br/>_Langue_        | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). | Obligatoire | [Code de langue](../datatypes/partials/language ) |
| [value](#items_value )<br/>_Texte court_ | HTML non-autorisées                                                                                                                                        | Obligatoire | [value](../datatypes/partials/no_html )           |

### <a name="items_lang"></a>1.1. Propriété `Texte court multilingue > root items > lang` (Langue)

Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

|                 |                                         |
| --------------- | --------------------------------------- |
| **Type**        | `string`                                |
| **Requis**      | Oui                                     |
| **Défini dans** | [lang](../datatypes/partials/language) |

[Voir la documentation de Code de langue](../datatypes/partials/language)

### <a name="items_value"></a>1.2. Propriété `Texte court multilingue > root items > value` (Texte court)

HTML non-autorisées

|                 |                                         |
| --------------- | --------------------------------------- |
| **Type**        | `string`                                |
| **Requis**      | Oui                                     |
| **Défini dans** | [value](../datatypes/partials/no_html) |

[Voir la documentation de ](../datatypes/partials/no_html)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-03-19 at 15:44:03 -0400
