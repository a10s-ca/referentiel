# Association Géographique (GeographicRelation)

**Nom:** Association Géographique (GeographicRelation)

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

**Description:** Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.

| Propriété                              | Description                                                                                             | Type de donnée | Définition                                         |
| -------------------------------------- | ------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [type](#type )                       | -                                                                                                       | const          | -                                                  |
| - [relationType](#relationType )       | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.                 | object         | [Term](term )                          |
| - [addressCountry](#addressCountry )   | Code ISO 3166-1 alpha-3 à 3 caractères représentant un pays.                                            | string         | [Code Pays](../datatypes/country_code ) |
| - [addressRegion](#addressRegion )     | Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne) | string         | [Texte court](../datatypes/text_short ) |
| - [addressLocality](#addressLocality ) | Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne) | string         | [Texte court](../datatypes/text_short ) |

## <a name="type"></a>1. Propriété `Association Géographique (GeographicRelation) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"GeographicRelation"`

## <a name="relationType"></a>2. Propriété `Association Géographique (GeographicRelation) > relationType`

**Nom:** Term

|                               |                                  |
| ----------------------------- | -------------------------------- |
| **Type**                      | `object`                         |
| **Requis**                    | Non                              |
| **Propriétés additionnelles** | Tout type permis                 |
| **Défini dans**               | [relationType](term) |

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

| Propriété                                         | Description                                                                                                                                                                                                                                                                      | Type de donnée  | Définition                                                                  |
| ------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------------------------- |
| + [type](#relationType_type )                     | -                                                                                                                                                                                                                                                                                | const           | -                                                                           |
| + [vocabulary](#relationType_vocabulary )         | Identification du vocabulaire duquel est tiré le term.<br /><br />Typiquement, cette identification correspond à l'appellation du vocabulaire dont l'usage est le plus fréquent, tout en minuscules, sans accents, et avec les espaces remplacés par des barres de soulignement. | string          | [Texte court](../datatypes/text_short )                          |
| - [version](#relationType_version )               | Version du vocabulaire utilisé, lorsque c'est applicable                                                                                                                                                                                                                         | string          | [Texte court](../datatypes/text_short )                          |
| + [code](#relationType_code )                     | Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.                                                                                                                     | string          | [Texte court](../datatypes/text_short )                          |
| - [label](#relationType_label )                   | Version textuelle du terme tiré du vocabulaire choisi                                                                                                                                                                                                                            | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| + [sequenceNumber](#relationType_sequenceNumber ) | Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                                                         | integer         | -                                                                           |

### <a name="relationType_type"></a>2.1. Propriété `Association Géographique (GeographicRelation) > relationType > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Term"`

### <a name="relationType_vocabulary"></a>2.2. Propriété `Association Géographique (GeographicRelation) > relationType > vocabulary`

**Nom:** Texte court

|                 |                                                  |
| --------------- | ------------------------------------------------ |
| **Type**        | `string`                                         |
| **Requis**      | Oui                                              |
| **Défini dans** | [vocabulary](../datatypes/text_short) |

**Description:** Identification du vocabulaire duquel est tiré le term.

Typiquement, cette identification correspond à l'appellation du vocabulaire dont l'usage est le plus fréquent, tout en minuscules, sans accents, et avec les espaces remplacés par des barres de soulignement.

| Restrictions                                   |                                                                                                             |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Longueur minimale**                          | 1                                                                                                           |
| **Longueur maximale**                          | 500                                                                                                         |
| **Doit correspondre à l'expression régulière** | ```^(?!.*<[^>]+>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5E%3E%5D%2B%3E%29.%2A%24) |

### <a name="relationType_version"></a>2.3. Propriété `Association Géographique (GeographicRelation) > relationType > version`

**Nom:** Texte court

|                         |                                        |
| ----------------------- | -------------------------------------- |
| **Type**                | `string`                               |
| **Requis**              | Non                                    |
| **Même définition que** | [vocabulary](#relationType_vocabulary) |

**Description:** Version du vocabulaire utilisé, lorsque c'est applicable

### <a name="relationType_code"></a>2.4. Propriété `Association Géographique (GeographicRelation) > relationType > code`

**Nom:** Texte court

|                         |                                        |
| ----------------------- | -------------------------------------- |
| **Type**                | `string`                               |
| **Requis**              | Oui                                    |
| **Même définition que** | [vocabulary](#relationType_vocabulary) |

**Description:** Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.

### <a name="relationType_label"></a>2.5. Propriété `Association Géographique (GeographicRelation) > relationType > label`

**Nom:** Texte court multilingue

|                 |                                                          |
| --------------- | -------------------------------------------------------- |
| **Type**        | `array of object`                                        |
| **Requis**      | Non                                                      |
| **Défini dans** | [label](../datatypes/text_short_multilingual) |

**Description:** Version textuelle du terme tiré du vocabulaire choisi

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Vrai                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être         | Description |
| ---------------------------------------- | ----------- |
| [label items](#relationType_label_items) | -           |

#### <a name="relationType_label_items"></a>2.5.1. Association Géographique (GeographicRelation) > relationType > label > label items

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                                   | Description                                                                                                                                                | Type de donnée | Définition                                         |
| ------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [lang](#relationType_label_items_lang )   | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). | string         | [Code de langue](../datatypes/partials/language ) |
| + [value](#relationType_label_items_value ) | HTML non-autorisées                                                                                                                                        | string         | [](../datatypes/partials/no_html )                |

##### <a name="relationType_label_items_lang"></a>2.5.1.1. Propriété `Association Géographique (GeographicRelation) > relationType > label > label items > lang`

**Nom:** Code de langue

|                 |                                         |
| --------------- | --------------------------------------- |
| **Type**        | `string`                                |
| **Requis**      | Oui                                     |
| **Défini dans** | [lang](../datatypes/partials/language) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

**Exemples:**

```json
"fr"
```

```json
"en"
```

```json
"mul"
```

| Restrictions                                   |                                                                                                       |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| **Longueur minimale**                          | 2                                                                                                     |
| **Doit correspondre à l'expression régulière** | ```^[a-z]{2,3}$``` [Test](https://regex101.com/?regex=%5E%5Ba-z%5D%7B2%2C3%7D%24&testString=%22fr%22) |

##### <a name="relationType_label_items_value"></a>2.5.1.2. Propriété `Association Géographique (GeographicRelation) > relationType > label > label items > value`

**Nom:** Texte court

|                 |                                              |
| --------------- | -------------------------------------------- |
| **Type**        | `string`                                     |
| **Requis**      | Oui                                          |
| **Défini dans** | [vocabulary](../datatypes/partials/no_html) |

**Description:** HTML non-autorisées

| Restrictions                                   |                                                                                                             |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Longueur minimale**                          | 1                                                                                                           |
| **Longueur maximale**                          | 500                                                                                                         |
| **Doit correspondre à l'expression régulière** | ```^(?!.*<[^>]+>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5E%3E%5D%2B%3E%29.%2A%24) |

### <a name="relationType_sequenceNumber"></a>2.6. Propriété `Association Géographique (GeographicRelation) > relationType > sequenceNumber`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Oui       |

**Description:** Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).

## <a name="addressCountry"></a>3. Propriété `Association Géographique (GeographicRelation) > addressCountry`

**Nom:** Code Pays

|                 |                                                        |
| --------------- | ------------------------------------------------------ |
| **Type**        | `string`                                               |
| **Requis**      | Non                                                    |
| **Défini dans** | [addressCountry](../datatypes/country_code) |

**Description:** Code ISO 3166-1 alpha-3 à 3 caractères représentant un pays.

| Restrictions                                   |                                                                             |
| ---------------------------------------------- | --------------------------------------------------------------------------- |
| **Longueur minimale**                          | 3                                                                           |
| **Longueur maximale**                          | 3                                                                           |
| **Doit correspondre à l'expression régulière** | ```^[A-Z]{3}$``` [Test](https://regex101.com/?regex=%5E%5BA-Z%5D%7B3%7D%24) |

## <a name="addressRegion"></a>4. Propriété `Association Géographique (GeographicRelation) > addressRegion`

**Nom:** Texte court

|                         |                                        |
| ----------------------- | -------------------------------------- |
| **Type**                | `string`                               |
| **Requis**              | Non                                    |
| **Même définition que** | [vocabulary](#relationType_vocabulary) |

**Description:** Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne)

## <a name="addressLocality"></a>5. Propriété `Association Géographique (GeographicRelation) > addressLocality`

**Nom:** Texte court

|                         |                                        |
| ----------------------- | -------------------------------------- |
| **Type**                | `string`                               |
| **Requis**              | Non                                    |
| **Même définition que** | [vocabulary](#relationType_vocabulary) |

**Description:** Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2025-12-16 at 12:20:16 -0500
