# Texte long multilingue

**Nom:** Texte long multilingue

|            |                   |
| ---------- | ----------------- |
| **Type**   | `array of object` |
| **Requis** | Non               |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

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

## <a name="items"></a>1. Texte long multilingue > root items

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                | Description                                                                                                                                                | Type de donnée | Définition                                         |
| ------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [lang](#items_lang )   | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). | string         | [Code de langue](../datatypes/partials/language ) |
| + [value](#items_value ) | Texte long avec formatage, incluant des paragraphes et des balises HTML autorisées b, i, u, sup et sub.                                                    | string         | [](../datatypes/partials/authorized_html )        |

### <a name="items_lang"></a>1.1. Propriété `Texte long multilingue > root items > lang`

**Nom:** Code de langue

|                 |                                         |
| --------------- | --------------------------------------- |
| **Type**        | `string`                                |
| **Requis**      | Oui                                     |
| **Défini dans** | [lang](../datatypes/partials/language) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

[Voir la documentation de Code de langue](../datatypes/partials/language)

### <a name="items_value"></a>1.2. Propriété `Texte long multilingue > root items > value`

**Nom:** Texte long

|                 |                                                 |
| --------------- | ----------------------------------------------- |
| **Type**        | `string`                                        |
| **Requis**      | Oui                                             |
| **Défini dans** | [value](../datatypes/partials/authorized_html) |

**Description:** Texte long avec formatage, incluant des paragraphes et des balises HTML autorisées b, i, u, sup et sub.

[Voir la documentation de ](../datatypes/partials/authorized_html)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-01-19 at 16:15:47 -0500
