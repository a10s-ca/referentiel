# Média

**Nom:** Média

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

| Propriété                              | Description                                                                                                                                                                                                                                    | Type de donnée  | Définition                                                                  |
| -------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------------------------- |
| + [type](#type )                       | -                                                                                                                                                                                                                                              | const           | -                                                                           |
| - [sequenceNumber](#sequenceNumber )   | Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                       | integer         | -                                                                           |
| - [usageNote](#usageNote )             | Texte libre permettant d'identifier les usages possibles du média (à l'intention des opérateurs des systèmes, pas du grand public, et donc pas pour publication).                                                                              | string          | [Texte court](../datatypes/text_short )                          |
| + [url](#url )                         | URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible                                                                                     | string          | -                                                                           |
| - [inLanguage](#inLanguage )           | Langue au format ISO 639-1.                                                                                                                                                                                                                    | string          | [Code de langue](../datatypes/partials/language )                |
| - [license](#license )                 | Licence d'utilisation du média. Une valeur vide ou non définie correspond à un média libre de droits. Si des conditions s'appliquent, elles doivent être définies dans cette propriété, ou sur le web à une URL intégrée dans cette propriété. | array           | [Voir les détails](#license )                                               |
| - [creditText](#creditText )           | Crédits associés au média.                                                                                                                                                                                                                     | array           | [Voir les détails](#creditText )                                            |
| - [copyrightHolder](#copyrightHolder ) | Personne ou organisation détenant les droits d'auteur du média.                                                                                                                                                                                | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| - [description](#description )         | Description courte (pouvant par exemple servir de «alt description» sur le web).                                                                                                                                                               | array           | [Voir les détails](#description )                                           |

## <a name="type"></a>1. Propriété `Média > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Media"`

## <a name="sequenceNumber"></a>2. Propriété `Média > sequenceNumber`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Non       |

**Description:** Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).

## <a name="usageNote"></a>3. Propriété `Média > usageNote`

**Nom:** Texte court

|                 |                                                 |
| --------------- | ----------------------------------------------- |
| **Type**        | `string`                                        |
| **Requis**      | Non                                             |
| **Défini dans** | [usageNote](../datatypes/text_short) |

**Description:** Texte libre permettant d'identifier les usages possibles du média (à l'intention des opérateurs des systèmes, pas du grand public, et donc pas pour publication).

[Voir la documentation de Texte court](../datatypes/text_short)

## <a name="url"></a>4. Propriété `Média > url`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |
| **Format** | `uri`    |

**Description:** URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible

## <a name="inLanguage"></a>5. Propriété `Média > inLanguage`

**Nom:** Code de langue

|                 |                                                         |
| --------------- | ------------------------------------------------------- |
| **Type**        | `string`                                                |
| **Requis**      | Non                                                     |
| **Défini dans** | [inLanguage](../datatypes/partials/language) |

**Description:** Langue au format ISO 639-1.

[Voir la documentation de Code de langue](../datatypes/partials/language)

## <a name="license"></a>6. Propriété `Média > license`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Licence d'utilisation du média. Une valeur vide ou non définie correspond à un média libre de droits. Si des conditions s'appliquent, elles doivent être définies dans cette propriété, ou sur le web à une URL intégrée dans cette propriété.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être          | Description                                                                                 |
| ----------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#license_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

### <a name="license_items"></a>6.1. Média > license > Texte court multilingue

**Nom:** Texte court multilingue

|                 |                                                                            |
| --------------- | -------------------------------------------------------------------------- |
| **Type**        | `array of object`                                                          |
| **Requis**      | Non                                                                        |
| **Défini dans** | [Texte court multilingue](../datatypes/text_short_multilingual) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

[Voir la documentation de Texte court multilingue](../datatypes/text_short_multilingual)

## <a name="creditText"></a>7. Propriété `Média > creditText`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Crédits associés au média.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être             | Description                                                                                 |
| -------------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#creditText_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

### <a name="creditText_items"></a>7.1. Média > creditText > Texte court multilingue

**Nom:** Texte court multilingue

|                         |                                           |
| ----------------------- | ----------------------------------------- |
| **Type**                | `array of object`                         |
| **Requis**              | Non                                       |
| **Même définition que** | [Texte court multilingue](#license_items) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

## <a name="copyrightHolder"></a>8. Propriété `Média > copyrightHolder`

**Nom:** Texte court multilingue

|                         |                                           |
| ----------------------- | ----------------------------------------- |
| **Type**                | `array of object`                         |
| **Requis**              | Non                                       |
| **Même définition que** | [Texte court multilingue](#license_items) |

**Description:** Personne ou organisation détenant les droits d'auteur du média.

## <a name="description"></a>9. Propriété `Média > description`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Description courte (pouvant par exemple servir de «alt description» sur le web).

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être             | Description                                                                     |
| -------------------------------------------- | ------------------------------------------------------------------------------- |
| [Texte long multilingue](#description_items) | Énumération de textes longs associés à un code de langue au standard ISO 639-1. |

### <a name="description_items"></a>9.1. Média > description > Texte long multilingue

**Nom:** Texte long multilingue

|                 |                                                                          |
| --------------- | ------------------------------------------------------------------------ |
| **Type**        | `array of object`                                                        |
| **Requis**      | Non                                                                      |
| **Défini dans** | [Texte long multilingue](../datatypes/text_long_multilingual) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

[Voir la documentation de Texte long multilingue](../datatypes/text_long_multilingual)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-01-19 at 16:04:18 -0500
