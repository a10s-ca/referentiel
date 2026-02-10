# Média (Media)

Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Propriété                                                       | Description                                                                                                                                                                                                                                    | Priorité         | Type et définition                                                                                   |
| --------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- | ---------------------------------------------------------------------------------------------------- |
| [type](#type )                                                  | -                                                                                                                                                                                                                                              | Obligatoire      | const                                                                                                |
| [sequenceNumber](#sequenceNumber )<br/>_Numéro de séquence_     | Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                       | Optionnel        | integer                                                                                              |
| [usageNote](#usageNote )<br/>_Note d'usage_                     | Texte libre permettant d'identifier les usages possibles du média (à l'intention des opérateurs des systèmes, pas du grand public, et donc pas pour publication).                                                                              | Optionnel        | [Texte court](../datatypes/text_short )                                                   |
| [url](#url )<br/>_URL_                                          | URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible                                                                                     | Obligatoire      | string (uri)                                                                                         |
| [inLanguage](#inLanguage )<br/>_Langues_                        | Langue au format ISO 639-1.                                                                                                                                                                                                                    | Optionnel        | [Code de langue](../datatypes/partials/language )                                         |
| [license](#license )<br/>_Licence_                              | Licence d'utilisation du média. Une valeur vide ou non définie correspond à un média libre de droits. Si des conditions s'appliquent, elles doivent être définies dans cette propriété, ou sur le web à une URL intégrée dans cette propriété. | Optionnel (0..N) | Tableau d'objets de type [Texte court multilingue](../datatypes/text_short_multilingual ) |
| [creditText](#creditText )<br/>_Crédits_                        | Crédits associés au média.                                                                                                                                                                                                                     | Optionnel (0..N) | Tableau d'objets de type [Texte court multilingue](../datatypes/text_short_multilingual ) |
| [copyrightHolder](#copyrightHolder )<br/>_Titulaire des droits_ | Personne ou organisation détenant les droits d'auteur du média.                                                                                                                                                                                | Optionnel        | [Texte court multilingue](../datatypes/text_short_multilingual )                          |
| [description](#description )<br/>_Description_                  | Description courte (pouvant par exemple servir de «alt description» sur le web).                                                                                                                                                               | Optionnel (0..N) | Tableau d'objets de type [Texte long multilingue](../datatypes/text_long_multilingual )   |

## <a name="type"></a>1. Propriété `Média (Media) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Media"`

## <a name="sequenceNumber"></a>2. Propriété `Média (Media) > sequenceNumber` (Numéro de séquence)

Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Non       |

## <a name="usageNote"></a>3. Propriété `Média (Media) > usageNote` (Note d'usage)

Texte libre permettant d'identifier les usages possibles du média (à l'intention des opérateurs des systèmes, pas du grand public, et donc pas pour publication).

|                 |                                                 |
| --------------- | ----------------------------------------------- |
| **Type**        | `string`                                        |
| **Requis**      | Non                                             |
| **Défini dans** | [usageNote](../datatypes/text_short) |

[Voir la documentation de Texte court](../datatypes/text_short)

## <a name="url"></a>4. Propriété `Média (Media) > url` (URL)

URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |
| **Format** | `uri`    |

## <a name="inLanguage"></a>5. Propriété `Média (Media) > inLanguage` (Langues)

Langue au format ISO 639-1.

|                 |                                                         |
| --------------- | ------------------------------------------------------- |
| **Type**        | `string`                                                |
| **Requis**      | Non                                                     |
| **Défini dans** | [inLanguage](../datatypes/partials/language) |

[Voir la documentation de Code de langue](../datatypes/partials/language)

## <a name="license"></a>6. Propriété `Média (Media) > license` (Licence)

Licence d'utilisation du média. Une valeur vide ou non définie correspond à un média libre de droits. Si des conditions s'appliquent, elles doivent être définies dans cette propriété, ou sur le web à une URL intégrée dans cette propriété.

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

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

### <a name="license_items"></a>6.1. Média (Media) > license > Texte court multilingue

Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

|                 |                                                                            |
| --------------- | -------------------------------------------------------------------------- |
| **Type**        | `array of object`                                                          |
| **Requis**      | Non                                                                        |
| **Défini dans** | [Texte court multilingue](../datatypes/text_short_multilingual) |

[Voir la documentation de Texte court multilingue](../datatypes/text_short_multilingual)

## <a name="creditText"></a>7. Propriété `Média (Media) > creditText` (Crédits)

Crédits associés au média.

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

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

### <a name="creditText_items"></a>7.1. Média (Media) > creditText > Texte court multilingue

Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

|                         |                                           |
| ----------------------- | ----------------------------------------- |
| **Type**                | `array of object`                         |
| **Requis**              | Non                                       |
| **Même définition que** | [Texte court multilingue](#license_items) |

## <a name="copyrightHolder"></a>8. Propriété `Média (Media) > copyrightHolder` (Titulaire des droits)

Personne ou organisation détenant les droits d'auteur du média.

|                 |                                                                            |
| --------------- | -------------------------------------------------------------------------- |
| **Type**        | `array of object`                                                          |
| **Requis**      | Non                                                                        |
| **Défini dans** | [Texte court multilingue](../datatypes/text_short_multilingual) |

[Voir la documentation de Texte court multilingue](../datatypes/text_short_multilingual)

## <a name="description"></a>9. Propriété `Média (Media) > description` (Description)

Description courte (pouvant par exemple servir de «alt description» sur le web).

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

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

### <a name="description_items"></a>9.1. Média (Media) > description > Texte long multilingue

Énumération de textes longs associés à un code de langue au standard ISO 639-1.

|                 |                                                                          |
| --------------- | ------------------------------------------------------------------------ |
| **Type**        | `array of object`                                                        |
| **Requis**      | Non                                                                      |
| **Défini dans** | [Texte long multilingue](../datatypes/text_long_multilingual) |

[Voir la documentation de Texte long multilingue](../datatypes/text_long_multilingual)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-02-09 at 21:53:34 -0500
