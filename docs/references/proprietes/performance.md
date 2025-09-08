# Représentation (Performance)

**Title:** Représentation (Performance)

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Décrit une représentation, qui est un événement unique associé à un lieu, une date et une heure, et qui peut inclure des informations sur les artistes, les œuvres présentées, et d'autres détails pertinents.

| Property                                                   | Title/Description                                                                                                                                                                                                                                                                                       | Type            | Definition                                                     |
| ---------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | -------------------------------------------------------------- |
| + [type](#type )                                           | -                                                                                                                                                                                                                                                                                                       | const           | -                                                              |
| + [identifier](#identifier )                               | identifier                                                                                                                                                                                                                                                                                              | array           | In ./utilities/identifier.schema.json                          |
| + [startDateTime](#startDateTime )                         | Date et heure de début de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                                                                                                     | string          | -                                                              |
| - [endDateTime](#endDateTime )                             | Date et heure de fin de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                                                                                                       | string          | -                                                              |
| - [duration](#duration )                                   | Durée de la représentation en format ISO-8601                                                                                                                                                                                                                                                           | string          | -                                                              |
| - [previousStartDateTime](#previousStartDateTime )         | Date et heure de début initialement prévus pour la représentation, dans le cas où il s'agit d'une représentation reportée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                       | string          | -                                                              |
| - [hasIntermission](#hasIntermission )                     | Indique la présence d'une ou plusieurs entractes                                                                                                                                                                                                                                                        | boolean         | -                                                              |
| - [isExtra](#isExtra )                                     | Indique si la représentation est une représentation supplémentaire                                                                                                                                                                                                                                      | boolean         | -                                                              |
| - [description](#description )                             | Texte long multilingue                                                                                                                                                                                                                                                                                  | array of object | In ./datatypes/text_long_multilingual.schema.json              |
| - [shortDescription](#shortDescription )                   | Texte long multilingue                                                                                                                                                                                                                                                                                  | array of object | Same as [description](#description )                           |
| - [media](#media )                                         | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) supplémentaires associés à la représentation, lorsqu'ils sont disponibles et qu'il n'est pas possible de les associer au spectacle. Les consignes d'utilisation de la classe Spectacle s'appliquent.                            | array           | -                                                              |
| - [alternateName](#alternateName )                         | Texte court multilingue                                                                                                                                                                                                                                                                                 | array of object | Same as [Texte court multilingue](#media_items_license_items ) |
| - [mainEntityOfPage](#mainEntityOfPage )                   | Propriété utilisée seulement si l'URL du PageWeb associée à la représentation est différente de celle du spectacle. Ne pas confondre à l'URL de billetterie de la section concernant les offres. Les consignes d'utilisation de la classe Spectacle s'appliquent.                                       | array           | -                                                              |
| - [hasAdditionalContribution](#hasAdditionalContribution ) | Contributions à la représentation qui ne sont pas documentées dans le spectacle. Les contributions de la représentation sont donc l'ajout des contributions du spectacle et des contributions supplémentaires, desquelles ont retire les contributions retirées.                                        | array           | -                                                              |
| - [hasRemovedContribution](#hasRemovedContribution )       | Contributions documentées dans le spectacle qui ne s'appliquent pas à la représentation. Les contributions de la représentation sont donc l'ajout des contributions du spectacle et des contributions supplémentaires, desquelles ont retire les contributions retirées                                 | array           | -                                                              |
| - [inSeries](#inSeries )                                   | Identification des séries dont la représentation fait partie.                                                                                                                                                                                                                                           | array           | -                                                              |
| + [hasOffer](#hasOffer )                                   | Description des différentes modalités pour assister à la représentation. Il peut y avoir des modalités pour le présentiel et/ou le virtuel. Les modalités pour le présentiel et le virtuel doivent être documentées pour un spectacle hybride. Une représentation contient donc au maximum deux offres. | array           | -                                                              |

## <a name="type"></a>1. Property `Représentation (Performance) > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Performance"`

## <a name="identifier"></a>2. Property `Représentation (Performance) > identifier`

**Title:** identifier

|                |                                    |
| -------------- | ---------------------------------- |
| **Type**       | `array`                            |
| **Required**   | Yes                                |
| **Defined in** | ./utilities/identifier.schema.json |

**Description:** Énumération des identifiants connus.

**Examples:**

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

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | 1                  |
| **Max items**        | N/A                |
| **Items unicity**    | True               |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be       | Description |
| ------------------------------------- | ----------- |
| [identifier items](#identifier_items) | -           |

### <a name="identifier_items"></a>2.1. Représentation (Performance) > identifier > identifier items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Any of(Option)                       |
| ------------------------------------ |
| [item 0](#identifier_items_anyOf_i0) |
| [item 1](#identifier_items_anyOf_i1) |

#### <a name="identifier_items_anyOf_i0"></a>2.1.1. Property `Représentation (Performance) > identifier > identifier items > anyOf > item 0`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                               | Title/Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Type   | Definition |
| ------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------ | ---------- |
| + [type](#identifier_items_anyOf_i0_type )             | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | const  | -          |
| + [propertyID](#identifier_items_anyOf_i0_propertyID ) | Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles. | string | -          |
| + [value](#identifier_items_anyOf_i0_value )           | L'identifiant lui-même                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | string | -          |

##### <a name="identifier_items_anyOf_i0_type"></a>2.1.1.1. Property `Représentation (Performance) > identifier > identifier items > anyOf > item 0 > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"PropertyValue"`

##### <a name="identifier_items_anyOf_i0_propertyID"></a>2.1.1.2. Property `Représentation (Performance) > identifier > identifier items > anyOf > item 0 > propertyID`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles.

| Restrictions   |   |
| -------------- | - |
| **Min length** | 1 |

##### <a name="identifier_items_anyOf_i0_value"></a>2.1.1.3. Property `Représentation (Performance) > identifier > identifier items > anyOf > item 0 > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** L'identifiant lui-même

| Restrictions   |   |
| -------------- | - |
| **Min length** | 1 |

#### <a name="identifier_items_anyOf_i1"></a>2.1.2. Property `Représentation (Performance) > identifier > identifier items > anyOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |
| **Format**   | `uri`    |

**Description:** Un identifiant URI sous forme de chaîne de caractères.

## <a name="startDateTime"></a>3. Property `Représentation (Performance) > startDateTime`

|              |             |
| ------------ | ----------- |
| **Type**     | `string`    |
| **Required** | Yes         |
| **Format**   | `date-time` |

**Description:** Date et heure de début de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

## <a name="endDateTime"></a>4. Property `Représentation (Performance) > endDateTime`

|              |             |
| ------------ | ----------- |
| **Type**     | `string`    |
| **Required** | No          |
| **Format**   | `date-time` |

**Description:** Date et heure de fin de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

## <a name="duration"></a>5. Property `Représentation (Performance) > duration`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Durée de la représentation en format ISO-8601

| Restrictions                      |                                                                                                                                                                                                                                                                                                                                  |
| --------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Must match regular expression** | ```^P(?=\d\|T\d)(\d+Y)?(\d+M)?(\d+W)?(\d+D)?(T(?=\d)(\d+H)?(\d+M)?(\d+(\.\d+)?S)?)?$``` [Test](https://regex101.com/?regex=%5EP%28%3F%3D%5Cd%7CT%5Cd%29%28%5Cd%2BY%29%3F%28%5Cd%2BM%29%3F%28%5Cd%2BW%29%3F%28%5Cd%2BD%29%3F%28T%28%3F%3D%5Cd%29%28%5Cd%2BH%29%3F%28%5Cd%2BM%29%3F%28%5Cd%2B%28%5C.%5Cd%2B%29%3FS%29%3F%29%3F%24) |
| **Minimum**                       | &ge; 1                                                                                                                                                                                                                                                                                                                           |

## <a name="previousStartDateTime"></a>6. Property `Représentation (Performance) > previousStartDateTime`

|              |             |
| ------------ | ----------- |
| **Type**     | `string`    |
| **Required** | No          |
| **Format**   | `date-time` |

**Description:** Date et heure de début initialement prévus pour la représentation, dans le cas où il s'agit d'une représentation reportée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

## <a name="hasIntermission"></a>7. Property `Représentation (Performance) > hasIntermission`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Indique la présence d'une ou plusieurs entractes

## <a name="isExtra"></a>8. Property `Représentation (Performance) > isExtra`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Indique si la représentation est une représentation supplémentaire

## <a name="description"></a>9. Property `Représentation (Performance) > description`

**Title:** Texte long multilingue

|                |                                                |
| -------------- | ---------------------------------------------- |
| **Type**       | `array of object`                              |
| **Required**   | No                                             |
| **Defined in** | ./datatypes/text_long_multilingual.schema.json |

**Description:** Propriété utilisée seulement si la description de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle s'appliquent.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | True               |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be         | Description |
| --------------------------------------- | ----------- |
| [description items](#description_items) | -           |

### <a name="description_items"></a>9.1. Représentation (Performance) > description > description items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                             | Title/Description | Type   | Definition                                |
| ------------------------------------ | ----------------- | ------ | ----------------------------------------- |
| + [lang](#description_items_lang )   | Code de langue    | string | In ./partials/language.schema.json        |
| + [value](#description_items_value ) | Texte long        | string | In ./partials/authorized_html.schema.json |

#### <a name="description_items_lang"></a>9.1.1. Property `Représentation (Performance) > description > description items > lang`

**Title:** Code de langue

|                |                                 |
| -------------- | ------------------------------- |
| **Type**       | `string`                        |
| **Required**   | Yes                             |
| **Defined in** | ./partials/language.schema.json |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

**Examples:**

```json
"fr"
```

```json
"en"
```

```json
"mul"
```

| Restrictions                      |                                                                                                       |
| --------------------------------- | ----------------------------------------------------------------------------------------------------- |
| **Min length**                    | 2                                                                                                     |
| **Must match regular expression** | ```^[a-z]{2,3}$``` [Test](https://regex101.com/?regex=%5E%5Ba-z%5D%7B2%2C3%7D%24&testString=%22fr%22) |

#### <a name="description_items_value"></a>9.1.2. Property `Représentation (Performance) > description > description items > value`

**Title:** Texte long

|                |                                        |
| -------------- | -------------------------------------- |
| **Type**       | `string`                               |
| **Required**   | Yes                                    |
| **Defined in** | ./partials/authorized_html.schema.json |

**Description:** Texte long avec formatage, incluant des paragraphes et des balises HTML autorisées b, i, u, sup et sub.

**Examples:**

```json
"<b>Texte en gras</b>"
```

```json
"<i>Texte en italique</i>"
```

```json
"<u>Texte souligné</u>"
```

```json
"<sup>Texte en exposant</sup>"
```

```json
"<sub>Texte en indice</sub>"
```

| Restrictions                      |                                                                                                                                                                                                                                                                                                 |
| --------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Max length**                    | 6000                                                                                                                                                                                                                                                                                            |
| **Must match regular expression** | ```^(?!.*<[^bius][^>]*>)(?!.*</?(?!b\|i\|u\|sup\|sub)[^>]*>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5Ebius%5D%5B%5E%3E%5D%2A%3E%29%28%3F%21.%2A%3C%2F%3F%28%3F%21b%7Ci%7Cu%7Csup%7Csub%29%5B%5E%3E%5D%2A%3E%29.%2A%24&testString=%22%3Cb%3ETexte+en+gras%3C%2Fb%3E%22) |

## <a name="shortDescription"></a>10. Property `Représentation (Performance) > shortDescription`

**Title:** Texte long multilingue

|                        |                             |
| ---------------------- | --------------------------- |
| **Type**               | `array of object`           |
| **Required**           | No                          |
| **Same definition as** | [description](#description) |

**Description:** Propriété utilisée seulement si la description courte de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle s'appliquent.

## <a name="media"></a>11. Property `Représentation (Performance) > media`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) supplémentaires associés à la représentation, lorsqu'ils sont disponibles et qu'il n'est pas possible de les associer au spectacle. Les consignes d'utilisation de la classe Spectacle s'appliquent.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be | Description                                                                                          |
| ------------------------------- | ---------------------------------------------------------------------------------------------------- |
| [Média](#media_items)           | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

### <a name="media_items"></a>11.1. Représentation (Performance) > media > Média

**Title:** Média

|                           |                               |
| ------------------------- | ----------------------------- |
| **Type**                  | `object`                      |
| **Required**              | No                            |
| **Additional properties** | Any type allowed              |
| **Defined in**            | ./utilities/media.schema.json |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

| Property                                           | Title/Description                                                                                                                                                                                                                              | Type            | Definition                                                     |
| -------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | -------------------------------------------------------------- |
| + [type](#media_items_type )                       | -                                                                                                                                                                                                                                              | const           | -                                                              |
| - [sequenceNumber](#media_items_sequenceNumber )   | Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                       | integer         | -                                                              |
| - [usageNote](#media_items_usageNote )             | Texte court                                                                                                                                                                                                                                    | string          | In ../datatypes/text_short.schema.json                         |
| + [url](#media_items_url )                         | URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible                                                                                     | string          | -                                                              |
| - [inLanguage](#media_items_inLanguage )           | Code de langue                                                                                                                                                                                                                                 | string          | Same as [lang](#description_items_lang )                       |
| - [license](#media_items_license )                 | Licence d'utilisation du média. Une valeur vide ou non définie correspond à un média libre de droits. Si des conditions s'appliquent, elles doivent être définies dans cette propriété, ou sur le web à une URL intégrée dans cette propriété. | array           | -                                                              |
| - [creditText](#media_items_creditText )           | Crédits associés au média.                                                                                                                                                                                                                     | array           | -                                                              |
| - [copyrightHolder](#media_items_copyrightHolder ) | Texte court multilingue                                                                                                                                                                                                                        | array of object | Same as [Texte court multilingue](#media_items_license_items ) |
| - [description](#media_items_description )         | Description courte (pouvant par exemple servir de «alt description» sur le web).                                                                                                                                                               | array           | -                                                              |

#### <a name="media_items_type"></a>11.1.1. Property `Représentation (Performance) > media > Média > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Media"`

#### <a name="media_items_sequenceNumber"></a>11.1.2. Property `Représentation (Performance) > media > Média > sequenceNumber`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).

#### <a name="media_items_usageNote"></a>11.1.3. Property `Représentation (Performance) > media > Média > usageNote`

**Title:** Texte court

|                |                                     |
| -------------- | ----------------------------------- |
| **Type**       | `string`                            |
| **Required**   | No                                  |
| **Defined in** | ../datatypes/text_short.schema.json |

**Description:** Texte libre permettant d'identifier les usages possibles du média (à l'intention des opérateurs des systèmes, pas du grand public, et donc pas pour publication).

| Restrictions                      |                                                                                                             |
| --------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Min length**                    | 1                                                                                                           |
| **Max length**                    | 500                                                                                                         |
| **Must match regular expression** | ```^(?!.*<[^>]+>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5E%3E%5D%2B%3E%29.%2A%24) |

#### <a name="media_items_url"></a>11.1.4. Property `Représentation (Performance) > media > Média > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |
| **Format**   | `uri`    |

**Description:** URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible

#### <a name="media_items_inLanguage"></a>11.1.5. Property `Représentation (Performance) > media > Média > inLanguage`

**Title:** Code de langue

|                        |                                 |
| ---------------------- | ------------------------------- |
| **Type**               | `string`                        |
| **Required**           | No                              |
| **Same definition as** | [lang](#description_items_lang) |

**Description:** Langue au format ISO 639-1.

#### <a name="media_items_license"></a>11.1.6. Property `Représentation (Performance) > media > Média > license`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Licence d'utilisation du média. Une valeur vide ou non définie correspond à un média libre de droits. Si des conditions s'appliquent, elles doivent être définies dans cette propriété, ou sur le web à une URL intégrée dans cette propriété.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                       | Description                                                                                 |
| ----------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#media_items_license_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

##### <a name="media_items_license_items"></a>11.1.6.1. Représentation (Performance) > media > Média > license > Texte court multilingue

**Title:** Texte court multilingue

|                |                                                  |
| -------------- | ------------------------------------------------ |
| **Type**       | `array of object`                                |
| **Required**   | No                                               |
| **Defined in** | ../datatypes/text_short_multilingual.schema.json |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | True               |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                         | Description |
| ------------------------------------------------------- | ----------- |
| [license items items](#media_items_license_items_items) | -           |

###### <a name="media_items_license_items_items"></a>11.1.6.1.1. Représentation (Performance) > media > Média > license > Texte court multilingue > license items items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                                           | Title/Description | Type   | Definition                               |
| -------------------------------------------------- | ----------------- | ------ | ---------------------------------------- |
| + [lang](#media_items_license_items_items_lang )   | Code de langue    | string | Same as [lang](#description_items_lang ) |
| + [value](#media_items_license_items_items_value ) | Texte court       | string | In ./partials/no_html.schema.json        |

###### <a name="media_items_license_items_items_lang"></a>11.1.6.1.1.1. Property `Représentation (Performance) > media > Média > license > Texte court multilingue > license items items > lang`

**Title:** Code de langue

|                        |                                 |
| ---------------------- | ------------------------------- |
| **Type**               | `string`                        |
| **Required**           | Yes                             |
| **Same definition as** | [lang](#description_items_lang) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

###### <a name="media_items_license_items_items_value"></a>11.1.6.1.1.2. Property `Représentation (Performance) > media > Média > license > Texte court multilingue > license items items > value`

**Title:** Texte court

|                |                                |
| -------------- | ------------------------------ |
| **Type**       | `string`                       |
| **Required**   | Yes                            |
| **Defined in** | ./partials/no_html.schema.json |

**Description:** HTML non-autorisées

| Restrictions                      |                                                                                                             |
| --------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Min length**                    | 1                                                                                                           |
| **Max length**                    | 500                                                                                                         |
| **Must match regular expression** | ```^(?!.*<[^>]+>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5E%3E%5D%2B%3E%29.%2A%24) |

#### <a name="media_items_creditText"></a>11.1.7. Property `Représentation (Performance) > media > Média > creditText`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Crédits associés au média.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                          | Description                                                                                 |
| -------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#media_items_creditText_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

##### <a name="media_items_creditText_items"></a>11.1.7.1. Représentation (Performance) > media > Média > creditText > Texte court multilingue

**Title:** Texte court multilingue

|                        |                                                       |
| ---------------------- | ----------------------------------------------------- |
| **Type**               | `array of object`                                     |
| **Required**           | No                                                    |
| **Same definition as** | [Texte court multilingue](#media_items_license_items) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

#### <a name="media_items_copyrightHolder"></a>11.1.8. Property `Représentation (Performance) > media > Média > copyrightHolder`

**Title:** Texte court multilingue

|                        |                                                       |
| ---------------------- | ----------------------------------------------------- |
| **Type**               | `array of object`                                     |
| **Required**           | No                                                    |
| **Same definition as** | [Texte court multilingue](#media_items_license_items) |

**Description:** Personne ou organisation détenant les droits d'auteur du média.

#### <a name="media_items_description"></a>11.1.9. Property `Représentation (Performance) > media > Média > description`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Description courte (pouvant par exemple servir de «alt description» sur le web).

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                          | Description                                                                     |
| -------------------------------------------------------- | ------------------------------------------------------------------------------- |
| [Texte long multilingue](#media_items_description_items) | Énumération de textes longs associés à un code de langue au standard ISO 639-1. |

##### <a name="media_items_description_items"></a>11.1.9.1. Représentation (Performance) > media > Média > description > Texte long multilingue

**Title:** Texte long multilingue

|                        |                             |
| ---------------------- | --------------------------- |
| **Type**               | `array of object`           |
| **Required**           | No                          |
| **Same definition as** | [description](#description) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

## <a name="alternateName"></a>12. Property `Représentation (Performance) > alternateName`

**Title:** Texte court multilingue

|                        |                                                       |
| ---------------------- | ----------------------------------------------------- |
| **Type**               | `array of object`                                     |
| **Required**           | No                                                    |
| **Same definition as** | [Texte court multilingue](#media_items_license_items) |

**Description:** Propriété utilisée seulement si l'autre nom de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle] s'appliquent

## <a name="mainEntityOfPage"></a>13. Property `Représentation (Performance) > mainEntityOfPage`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Propriété utilisée seulement si l'URL du PageWeb associée à la représentation est différente de celle du spectacle. Ne pas confondre à l'URL de billetterie de la section concernant les offres. Les consignes d'utilisation de la classe Spectacle s'appliquent.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be    | Description |
| ---------------------------------- | ----------- |
| [WebPage](#mainEntityOfPage_items) | -           |

### <a name="mainEntityOfPage_items"></a>13.1. Représentation (Performance) > mainEntityOfPage > WebPage

**Title:** WebPage

|                           |                                  |
| ------------------------- | -------------------------------- |
| **Type**                  | `object`                         |
| **Required**              | No                               |
| **Additional properties** | Any type allowed                 |
| **Defined in**            | ./utilities/web_page.schema.json |

| Property                                            | Title/Description | Type   | Definition                               |
| --------------------------------------------------- | ----------------- | ------ | ---------------------------------------- |
| + [type](#mainEntityOfPage_items_type )             | -                 | const  | -                                        |
| + [url](#mainEntityOfPage_items_url )               | -                 | string | -                                        |
| - [inLanguage](#mainEntityOfPage_items_inLanguage ) | Code de langue    | string | Same as [lang](#description_items_lang ) |

#### <a name="mainEntityOfPage_items_type"></a>13.1.1. Property `Représentation (Performance) > mainEntityOfPage > WebPage > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"WebPage"`

#### <a name="mainEntityOfPage_items_url"></a>13.1.2. Property `Représentation (Performance) > mainEntityOfPage > WebPage > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |
| **Format**   | `uri`    |

#### <a name="mainEntityOfPage_items_inLanguage"></a>13.1.3. Property `Représentation (Performance) > mainEntityOfPage > WebPage > inLanguage`

**Title:** Code de langue

|                        |                                 |
| ---------------------- | ------------------------------- |
| **Type**               | `string`                        |
| **Required**           | No                              |
| **Same definition as** | [lang](#description_items_lang) |

**Description:** Langue de la page Web, au format ISO 639-1.

## <a name="hasAdditionalContribution"></a>14. Property `Représentation (Performance) > hasAdditionalContribution`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Contributions à la représentation qui ne sont pas documentées dans le spectacle. Les contributions de la représentation sont donc l'ajout des contributions du spectacle et des contributions supplémentaires, desquelles ont retire les contributions retirées.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                  | Description                                                                                                                                                                 |
| ------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contribution](#hasAdditionalContribution_items) | Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné. |

### <a name="hasAdditionalContribution_items"></a>14.1. Représentation (Performance) > hasAdditionalContribution > Contribution

**Title:** Contribution

|                           |                                      |
| ------------------------- | ------------------------------------ |
| **Type**                  | `object`                             |
| **Required**              | No                                   |
| **Additional properties** | Any type allowed                     |
| **Defined in**            | ./utilities/contribution.schema.json |

**Description:** Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

| Property                                                                 | Title/Description                                                                                                                                           | Type    | Definition                                   |
| ------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- | -------------------------------------------- |
| + [type](#hasAdditionalContribution_items_type )                         | -                                                                                                                                                           | const   | -                                            |
| + [contributionType](#hasAdditionalContribution_items_contributionType ) | Identification des types de contribution.                                                                                                                   | array   | -                                            |
| + [contributeur](#hasAdditionalContribution_items_contributeur )         | Contributor                                                                                                                                                 | object  | In ../contributor.schema.json                |
| - [sequenceNumber](#hasAdditionalContribution_items_sequenceNumber )     | Précision sur l'ordre de présentation des contributions (les nombres plus petits correspondent à des contributions qui doivent être présentées en premier). | integer | -                                            |
| - [usageNote](#hasAdditionalContribution_items_usageNote )               | Texte court                                                                                                                                                 | string  | Same as [usageNote](#media_items_usageNote ) |

#### <a name="hasAdditionalContribution_items_type"></a>14.1.1. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Contribution"`

#### <a name="hasAdditionalContribution_items_contributionType"></a>14.1.2. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributionType`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | Yes     |

**Description:** Identification des types de contribution.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                 | Description                                                                             |
| --------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#hasAdditionalContribution_items_contributionType_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

##### <a name="hasAdditionalContribution_items_contributionType_items"></a>14.1.2.1. Représentation (Performance) > hasAdditionalContribution > Contribution > contributionType > Term

**Title:** Term

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |
| **Defined in**            | term.schema.json |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

**Example:**

```json
{
    "type": "Term",
    "vocabulary": "datascene",
    "code": "ToutPublics",
    "version": "1.0",
    "sequenceNumber": 1
}
```

| Property                                                                                    | Title/Description                                                                                        | Type            | Definition                                                     |
| ------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | --------------- | -------------------------------------------------------------- |
| + [type](#hasAdditionalContribution_items_contributionType_items_type )                     | -                                                                                                        | const           | -                                                              |
| + [vocabulary](#hasAdditionalContribution_items_contributionType_items_vocabulary )         | Texte court                                                                                              | string          | In ../datatypes/text_short.schema.json                         |
| - [version](#hasAdditionalContribution_items_contributionType_items_version )               | Texte court                                                                                              | string          | Same as [usageNote](#media_items_usageNote )                   |
| + [code](#hasAdditionalContribution_items_contributionType_items_code )                     | Texte court                                                                                              | string          | Same as [usageNote](#media_items_usageNote )                   |
| - [label](#hasAdditionalContribution_items_contributionType_items_label )                   | Texte court multilingue                                                                                  | array of object | Same as [Texte court multilingue](#media_items_license_items ) |
| + [sequenceNumber](#hasAdditionalContribution_items_contributionType_items_sequenceNumber ) | Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé). | integer         | -                                                              |

###### <a name="hasAdditionalContribution_items_contributionType_items_type"></a>14.1.2.1.1. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributionType > Term > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Term"`

###### <a name="hasAdditionalContribution_items_contributionType_items_vocabulary"></a>14.1.2.1.2. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributionType > Term > vocabulary`

**Title:** Texte court

|                |                                     |
| -------------- | ----------------------------------- |
| **Type**       | `string`                            |
| **Required**   | Yes                                 |
| **Defined in** | ../datatypes/text_short.schema.json |

**Description:** Identification du vocabulaire duquel est tiré le term.

Typiquement, cette identification correspond à l'appellation du vocabulaire dont l'usage est le plus fréquent, tout en minuscules, sans accents, et avec les espaces remplacés par des barres de soulignement.

| Restrictions                      |                                                                                                             |
| --------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Min length**                    | 1                                                                                                           |
| **Max length**                    | 500                                                                                                         |
| **Must match regular expression** | ```^(?!.*<[^>]+>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5E%3E%5D%2B%3E%29.%2A%24) |

###### <a name="hasAdditionalContribution_items_contributionType_items_version"></a>14.1.2.1.3. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributionType > Term > version`

**Title:** Texte court

|                        |                                     |
| ---------------------- | ----------------------------------- |
| **Type**               | `string`                            |
| **Required**           | No                                  |
| **Same definition as** | [usageNote](#media_items_usageNote) |

**Description:** Version du vocabulaire utilisé, lorsque c'est applicable

###### <a name="hasAdditionalContribution_items_contributionType_items_code"></a>14.1.2.1.4. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributionType > Term > code`

**Title:** Texte court

|                        |                                     |
| ---------------------- | ----------------------------------- |
| **Type**               | `string`                            |
| **Required**           | Yes                                 |
| **Same definition as** | [usageNote](#media_items_usageNote) |

**Description:** Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.

###### <a name="hasAdditionalContribution_items_contributionType_items_label"></a>14.1.2.1.5. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributionType > Term > label`

**Title:** Texte court multilingue

|                        |                                                       |
| ---------------------- | ----------------------------------------------------- |
| **Type**               | `array of object`                                     |
| **Required**           | No                                                    |
| **Same definition as** | [Texte court multilingue](#media_items_license_items) |

**Description:** Version textuelle du terme tiré du vocabulaire choisi

###### <a name="hasAdditionalContribution_items_contributionType_items_sequenceNumber"></a>14.1.2.1.6. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributionType > Term > sequenceNumber`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | Yes       |

**Description:** Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).

#### <a name="hasAdditionalContribution_items_contributeur"></a>14.1.3. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur`

**Title:** Contributor

|                           |                            |
| ------------------------- | -------------------------- |
| **Type**                  | `object`                   |
| **Required**              | Yes                        |
| **Additional properties** | Any type allowed           |
| **Defined in**            | ../contributor.schema.json |

**Description:** Identification du contributeur

| Property                                                                                            | Title/Description                                                                                                                                                                                                     | Type             | Definition                                                     |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- | -------------------------------------------------------------- |
| + [type](#hasAdditionalContribution_items_contributeur_type )                                       | -                                                                                                                                                                                                                     | const            | -                                                              |
| + [contributorType](#hasAdditionalContribution_items_contributeur_contributorType )                 | Type de contributeur                                                                                                                                                                                                  | enum (of string) | In ./vocabularies/contributor_type.schema.json                 |
| + [identifier](#hasAdditionalContribution_items_contributeur_identifier )                           | identifier                                                                                                                                                                                                            | array            | Same as [identifier](#identifier )                             |
| + [name](#hasAdditionalContribution_items_contributeur_name )                                       | Texte court multilingue                                                                                                                                                                                               | array of object  | Same as [Texte court multilingue](#media_items_license_items ) |
| - [alternateName](#hasAdditionalContribution_items_contributeur_alternateName )                     | Autres appellations parfois utilisées pour le contributeur.<br /><br />Exemple: «Béatrice Martin» comme nom alternatif de «Cœur de pirate».<br />Exemple: «Compagnie Jean-Duceppe» comme nom alternatif de «Duceppe». | array            | -                                                              |
| - [description](#hasAdditionalContribution_items_contributeur_description )                         | Texte long multilingue                                                                                                                                                                                                | array of object  | Same as [description](#description )                           |
| - [shortDescription](#hasAdditionalContribution_items_contributeur_shortDescription )               | Texte long multilingue                                                                                                                                                                                                | array of object  | Same as [description](#description )                           |
| - [media](#hasAdditionalContribution_items_contributeur_media )                                     | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au contributeur.                                                                                                                      | array            | -                                                              |
| - [typicalContributionType](#hasAdditionalContribution_items_contributeur_typicalContributionType ) | Énumération des types de contributions habituellement faites par le contributeur.                                                                                                                                     | array            | -                                                              |
| - [hasGeographicRelation](#hasAdditionalContribution_items_contributeur_hasGeographicRelation )     | Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.                                                                                  | array            | -                                                              |
| - [hasMembers](#hasAdditionalContribution_items_contributeur_hasMembers )                           | Énumération des membres des groupes, troupes et collectifs, etc.                                                                                                                                                      | array            | -                                                              |

##### <a name="hasAdditionalContribution_items_contributeur_type"></a>14.1.3.1. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Contributor"`

##### <a name="hasAdditionalContribution_items_contributeur_contributorType"></a>14.1.3.2. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > contributorType`

**Title:** Type de contributeur

|                |                                             |
| -------------- | ------------------------------------------- |
| **Type**       | `enum (of string)`                          |
| **Required**   | Yes                                         |
| **Defined in** | ./vocabularies/contributor_type.schema.json |

**Description:** Indication à l'effet qu'il s'agit d'une personne physique ou d'une personne morale.

Must be one of:
* "Person"
* "Group"
* "Organization"

##### <a name="hasAdditionalContribution_items_contributeur_identifier"></a>14.1.3.3. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > identifier`

**Title:** identifier

|                        |                           |
| ---------------------- | ------------------------- |
| **Type**               | `array`                   |
| **Required**           | Yes                       |
| **Same definition as** | [identifier](#identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

##### <a name="hasAdditionalContribution_items_contributeur_name"></a>14.1.3.4. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > name`

**Title:** Texte court multilingue

|                        |                                                       |
| ---------------------- | ----------------------------------------------------- |
| **Type**               | `array of object`                                     |
| **Required**           | Yes                                                   |
| **Same definition as** | [Texte court multilingue](#media_items_license_items) |

**Description:** Nom complet du contributeur, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. Le prénom et le nom de sont pas traités dans des propriétés distinctes à cause de la diversité des appellations de contributions, qui sont parfois des personnes morales.

Exemples: Michel Rivard, Les Trois Accords, Koriass, Desjardins, Spectra.

##### <a name="hasAdditionalContribution_items_contributeur_alternateName"></a>14.1.3.5. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > alternateName`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Autres appellations parfois utilisées pour le contributeur.

Exemple: «Béatrice Martin» comme nom alternatif de «Cœur de pirate».
Exemple: «Compagnie Jean-Duceppe» comme nom alternatif de «Duceppe».

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                                              | Description                                                                                 |
| -------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#hasAdditionalContribution_items_contributeur_alternateName_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

###### <a name="hasAdditionalContribution_items_contributeur_alternateName_items"></a>14.1.3.5.1. Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > alternateName > Texte court multilingue

**Title:** Texte court multilingue

|                        |                                                       |
| ---------------------- | ----------------------------------------------------- |
| **Type**               | `array of object`                                     |
| **Required**           | No                                                    |
| **Same definition as** | [Texte court multilingue](#media_items_license_items) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

##### <a name="hasAdditionalContribution_items_contributeur_description"></a>14.1.3.6. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > description`

**Title:** Texte long multilingue

|                        |                             |
| ---------------------- | --------------------------- |
| **Type**               | `array of object`           |
| **Required**           | No                          |
| **Same definition as** | [description](#description) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

##### <a name="hasAdditionalContribution_items_contributeur_shortDescription"></a>14.1.3.7. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > shortDescription`

**Title:** Texte long multilingue

|                        |                             |
| ---------------------- | --------------------------- |
| **Type**               | `array of object`           |
| **Required**           | No                          |
| **Same definition as** | [description](#description) |

**Description:** Description résumée du contributeur. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage.

##### <a name="hasAdditionalContribution_items_contributeur_media"></a>14.1.3.8. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > media`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au contributeur.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                    | Description                                                                                          |
| ------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------- |
| [Média](#hasAdditionalContribution_items_contributeur_media_items) | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

###### <a name="hasAdditionalContribution_items_contributeur_media_items"></a>14.1.3.8.1. Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > media > Média

**Title:** Média

|                           |                       |
| ------------------------- | --------------------- |
| **Type**                  | `object`              |
| **Required**              | No                    |
| **Additional properties** | Any type allowed      |
| **Same definition as**    | [Média](#media_items) |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

##### <a name="hasAdditionalContribution_items_contributeur_typicalContributionType"></a>14.1.3.9. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > typicalContributionType`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Énumération des types de contributions habituellement faites par le contributeur.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                                     | Description                                                                             |
| ----------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#hasAdditionalContribution_items_contributeur_typicalContributionType_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

###### <a name="hasAdditionalContribution_items_contributeur_typicalContributionType_items"></a>14.1.3.9.1. Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > typicalContributionType > Term

**Title:** Term

|                           |                                                                 |
| ------------------------- | --------------------------------------------------------------- |
| **Type**                  | `object`                                                        |
| **Required**              | No                                                              |
| **Additional properties** | Any type allowed                                                |
| **Same definition as**    | [Term](#hasAdditionalContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

##### <a name="hasAdditionalContribution_items_contributeur_hasGeographicRelation"></a>14.1.3.10. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > hasGeographicRelation`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                                                                            | Description                                                                                                                          |
| -------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| [Association Géographique (GeographicRelation)](#hasAdditionalContribution_items_contributeur_hasGeographicRelation_items) | Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc. |

###### <a name="hasAdditionalContribution_items_contributeur_hasGeographicRelation_items"></a>14.1.3.10.1. Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation)

**Title:** Association Géographique (GeographicRelation)

|                           |                                             |
| ------------------------- | ------------------------------------------- |
| **Type**                  | `object`                                    |
| **Required**              | No                                          |
| **Additional properties** | Not allowed                                 |
| **Defined in**            | ./utilities/geographic_relation.schema.json |

**Description:** Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.

| Property                                                                                                        | Title/Description | Type   | Definition                                                               |
| --------------------------------------------------------------------------------------------------------------- | ----------------- | ------ | ------------------------------------------------------------------------ |
| + [type](#hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_type )                       | -                 | const  | -                                                                        |
| - [relationType](#hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_relationType )       | Term              | object | Same as [Term](#hasAdditionalContribution_items_contributionType_items ) |
| - [addressCountry](#hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_addressCountry )   | Code Pays         | string | In ../datatypes/country_code.schema.json                                 |
| - [addressRegion](#hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_addressRegion )     | Texte court       | string | Same as [usageNote](#media_items_usageNote )                             |
| - [addressLocality](#hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_addressLocality ) | Texte court       | string | Same as [usageNote](#media_items_usageNote )                             |

###### <a name="hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_type"></a>14.1.3.10.1.1. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"GeographicRelation"`

###### <a name="hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_relationType"></a>14.1.3.10.1.2. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > relationType`

**Title:** Term

|                           |                                                                 |
| ------------------------- | --------------------------------------------------------------- |
| **Type**                  | `object`                                                        |
| **Required**              | No                                                              |
| **Additional properties** | Any type allowed                                                |
| **Same definition as**    | [Term](#hasAdditionalContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

###### <a name="hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_addressCountry"></a>14.1.3.10.1.3. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > addressCountry`

**Title:** Code Pays

|                |                                       |
| -------------- | ------------------------------------- |
| **Type**       | `string`                              |
| **Required**   | No                                    |
| **Defined in** | ../datatypes/country_code.schema.json |

**Description:** Code ISO 3166-1 alpha-3 à 3 caractères représentant un pays.

| Restrictions                      |                                                                             |
| --------------------------------- | --------------------------------------------------------------------------- |
| **Min length**                    | 3                                                                           |
| **Max length**                    | 3                                                                           |
| **Must match regular expression** | ```^[A-Z]{3}$``` [Test](https://regex101.com/?regex=%5E%5BA-Z%5D%7B3%7D%24) |

###### <a name="hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_addressRegion"></a>14.1.3.10.1.4. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > addressRegion`

**Title:** Texte court

|                        |                                     |
| ---------------------- | ----------------------------------- |
| **Type**               | `string`                            |
| **Required**           | No                                  |
| **Same definition as** | [usageNote](#media_items_usageNote) |

**Description:** Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne)

###### <a name="hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_addressLocality"></a>14.1.3.10.1.5. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > addressLocality`

**Title:** Texte court

|                        |                                     |
| ---------------------- | ----------------------------------- |
| **Type**               | `string`                            |
| **Required**           | No                                  |
| **Same definition as** | [usageNote](#media_items_usageNote) |

**Description:** Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne)

##### <a name="hasAdditionalContribution_items_contributeur_hasMembers"></a>14.1.3.11. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > hasMembers`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Énumération des membres des groupes, troupes et collectifs, etc.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                               | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contributor](#hasAdditionalContribution_items_contributeur_hasMembers_items) | les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre). |

###### <a name="hasAdditionalContribution_items_contributeur_hasMembers_items"></a>14.1.3.11.1. Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > hasMembers > Contributor

**Title:** Contributor

|                           |                                                               |
| ------------------------- | ------------------------------------------------------------- |
| **Type**                  | `object`                                                      |
| **Required**              | No                                                            |
| **Additional properties** | Any type allowed                                              |
| **Same definition as**    | [contributeur](#hasAdditionalContribution_items_contributeur) |

**Description:** les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre).

#### <a name="hasAdditionalContribution_items_sequenceNumber"></a>14.1.4. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > sequenceNumber`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Précision sur l'ordre de présentation des contributions (les nombres plus petits correspondent à des contributions qui doivent être présentées en premier).

#### <a name="hasAdditionalContribution_items_usageNote"></a>14.1.5. Property `Représentation (Performance) > hasAdditionalContribution > Contribution > usageNote`

**Title:** Texte court

|                        |                                     |
| ---------------------- | ----------------------------------- |
| **Type**               | `string`                            |
| **Required**           | No                                  |
| **Same definition as** | [usageNote](#media_items_usageNote) |

**Description:** Note concernant la contribution, à l'intention des exploitants des systèmes d'information (et donc pas du grand public). Il peut s'agir d'une précision sur le type de contribution, qui ne pourrait pas être exprimée à travers la propriété Types. Les informations compilées dans les notes pourraient être utilisées pour améliorer les vocabulaires contrôllés.

## <a name="hasRemovedContribution"></a>15. Property `Représentation (Performance) > hasRemovedContribution`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Contributions documentées dans le spectacle qui ne s'appliquent pas à la représentation. Les contributions de la représentation sont donc l'ajout des contributions du spectacle et des contributions supplémentaires, desquelles ont retire les contributions retirées

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be               | Description                                                                                                                                                                 |
| --------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contribution](#hasRemovedContribution_items) | Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné. |

### <a name="hasRemovedContribution_items"></a>15.1. Représentation (Performance) > hasRemovedContribution > Contribution

**Title:** Contribution

|                           |                                                  |
| ------------------------- | ------------------------------------------------ |
| **Type**                  | `object`                                         |
| **Required**              | No                                               |
| **Additional properties** | Any type allowed                                 |
| **Same definition as**    | [Contribution](#hasAdditionalContribution_items) |

**Description:** Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

## <a name="inSeries"></a>16. Property `Représentation (Performance) > inSeries`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Identification des séries dont la représentation fait partie.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                      | Description                                                                                                                                                                                                                                      |
| ---------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [Série de représentations (Series)](#inSeries_items) | cette classe permet de regrouper des représentations n’étant pas nécessairement toutes associées à un même spectacle, mais liées entre elles par des éléments de commercialisation ou de modalités d’accès. Un festival est un exemple de série. |

### <a name="inSeries_items"></a>16.1. Représentation (Performance) > inSeries > Série de représentations (Series)

**Title:** Série de représentations (Series)

|                           |                      |
| ------------------------- | -------------------- |
| **Type**                  | `object`             |
| **Required**              | No                   |
| **Additional properties** | Any type allowed     |
| **Defined in**            | ./series.schema.json |

**Description:** cette classe permet de regrouper des représentations n’étant pas nécessairement toutes associées à un même spectacle, mais liées entre elles par des éléments de commercialisation ou de modalités d’accès. Un festival est un exemple de série.

| Property                                                | Title/Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | Type            | Definition                                                     |
| ------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------- | -------------------------------------------------------------- |
| + [type](#inSeries_items_type )                         | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | const           | -                                                              |
| + [identifier](#inSeries_items_identifier )             | identifier                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | array           | Same as [identifier](#identifier )                             |
| + [name](#inSeries_items_name )                         | Texte court multilingue                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | array of object | Same as [Texte court multilingue](#media_items_license_items ) |
| - [alternateName](#inSeries_items_alternateName )       | Texte court multilingue                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | array of object | Same as [Texte court multilingue](#media_items_license_items ) |
| + [description](#inSeries_items_description )           | Texte long multilingue                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | array of object | In ./datatypes/text_long_multilingual.schema.json              |
| - [shortDescription](#inSeries_items_shortDescription ) | Texte long multilingue                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | array of object | Same as [description](#description )                           |
| - [media](#inSeries_items_media )                       | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé à la série.                                                                                                                                                                                                                                                                                                                                                                                                                  | array           | -                                                              |
| - [hasContribution](#inSeries_items_hasContribution )   | Énumération des contributions spécifiques à la série, et non pas aux représentations. Il s'agit typiquement de contributions de production, d'organisation ou de commandite. Les contributions artistiques seront typiquement associées aux spectacles et aux représentations.<br /><br />Exemple: un commanditaire d'un festival a une contribution à la série.<br /><br />Contre-exemple: un artiste sur scène lors d'un spectacle dans le cadre de la série n'a pas de contribution à la série elle-même. | array           | -                                                              |
| - [mainEntityOfPage](#inSeries_items_mainEntityOfPage ) | Pages web donnant plus d'information sur la série.<br /><br />Pour des besoins plus précis, par exemple des URL de critiques du spectacle, la propriété Médias, qui permet d'inclure des notes d'usage, peut être utilisée.                                                                                                                                                                                                                                                                                  | array           | -                                                              |
| + [startDateTime](#inSeries_items_startDateTime )       | Date de début de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                                                                                                                                                                                                                                                                                                                            | string          | -                                                              |
| - [endDateTime](#inSeries_items_endDateTime )           | Date de fin de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                                                                                                                                                                                                                                                                                                                              | string          | -                                                              |
| - [hasOffer](#inSeries_items_hasOffer )                 | Description des différentes modalités pour assister à la série. Il peut y avoir des modalités pour le présentiel et/ou le virtuel. Les modalités pour le présentiel et le virtuel doivent être documentées pour une série hybride. Une série contient donc au maximum deux offres.                                                                                                                                                                                                                           | array           | -                                                              |

#### <a name="inSeries_items_type"></a>16.1.1. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Series"`

#### <a name="inSeries_items_identifier"></a>16.1.2. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > identifier`

**Title:** identifier

|                        |                           |
| ---------------------- | ------------------------- |
| **Type**               | `array`                   |
| **Required**           | Yes                       |
| **Same definition as** | [identifier](#identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

#### <a name="inSeries_items_name"></a>16.1.3. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > name`

**Title:** Texte court multilingue

|                        |                                                       |
| ---------------------- | ----------------------------------------------------- |
| **Type**               | `array of object`                                     |
| **Required**           | Yes                                                   |
| **Same definition as** | [Texte court multilingue](#media_items_license_items) |

**Description:** Nom de la série, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels.

#### <a name="inSeries_items_alternateName"></a>16.1.4. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > alternateName`

**Title:** Texte court multilingue

|                        |                                                       |
| ---------------------- | ----------------------------------------------------- |
| **Type**               | `array of object`                                     |
| **Required**           | No                                                    |
| **Same definition as** | [Texte court multilingue](#media_items_license_items) |

**Description:** Élément qui ne fait pas partie du nom, mais qui le complète, sans toutefois relever de la description elle-même.

Par exemple, le Festival de musique émergente en Abitibi-Témiscamingue est aussi connu sous son acronyme FME.

#### <a name="inSeries_items_description"></a>16.1.5. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > description`

**Title:** Texte long multilingue

|                |                                                |
| -------------- | ---------------------------------------------- |
| **Type**       | `array of object`                              |
| **Required**   | Yes                                            |
| **Defined in** | ./datatypes/text_long_multilingual.schema.json |

**Description:** Description de la série.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | 1                  |
| **Max items**        | N/A                |
| **Items unicity**    | True               |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be         | Description |
| --------------------------------------- | ----------- |
| [description items](#description_items) | -           |

##### <a name="description_items"></a>16.1.5.1. Représentation (Performance) > description > description items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                             | Title/Description | Type   | Definition                                |
| ------------------------------------ | ----------------- | ------ | ----------------------------------------- |
| + [lang](#description_items_lang )   | Code de langue    | string | In ./partials/language.schema.json        |
| + [value](#description_items_value ) | Texte long        | string | In ./partials/authorized_html.schema.json |

###### <a name="description_items_lang"></a>16.1.5.1.1. Property `Représentation (Performance) > description > description items > lang`

**Title:** Code de langue

|                |                                 |
| -------------- | ------------------------------- |
| **Type**       | `string`                        |
| **Required**   | Yes                             |
| **Defined in** | ./partials/language.schema.json |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

**Examples:**

```json
"fr"
```

```json
"en"
```

```json
"mul"
```

| Restrictions                      |                                                                                                       |
| --------------------------------- | ----------------------------------------------------------------------------------------------------- |
| **Min length**                    | 2                                                                                                     |
| **Must match regular expression** | ```^[a-z]{2,3}$``` [Test](https://regex101.com/?regex=%5E%5Ba-z%5D%7B2%2C3%7D%24&testString=%22fr%22) |

###### <a name="description_items_value"></a>16.1.5.1.2. Property `Représentation (Performance) > description > description items > value`

**Title:** Texte long

|                |                                        |
| -------------- | -------------------------------------- |
| **Type**       | `string`                               |
| **Required**   | Yes                                    |
| **Defined in** | ./partials/authorized_html.schema.json |

**Description:** Texte long avec formatage, incluant des paragraphes et des balises HTML autorisées b, i, u, sup et sub.

**Examples:**

```json
"<b>Texte en gras</b>"
```

```json
"<i>Texte en italique</i>"
```

```json
"<u>Texte souligné</u>"
```

```json
"<sup>Texte en exposant</sup>"
```

```json
"<sub>Texte en indice</sub>"
```

| Restrictions                      |                                                                                                                                                                                                                                                                                                 |
| --------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Max length**                    | 6000                                                                                                                                                                                                                                                                                            |
| **Must match regular expression** | ```^(?!.*<[^bius][^>]*>)(?!.*</?(?!b\|i\|u\|sup\|sub)[^>]*>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5Ebius%5D%5B%5E%3E%5D%2A%3E%29%28%3F%21.%2A%3C%2F%3F%28%3F%21b%7Ci%7Cu%7Csup%7Csub%29%5B%5E%3E%5D%2A%3E%29.%2A%24&testString=%22%3Cb%3ETexte+en+gras%3C%2Fb%3E%22) |

#### <a name="inSeries_items_shortDescription"></a>16.1.6. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > shortDescription`

**Title:** Texte long multilingue

|                        |                             |
| ---------------------- | --------------------------- |
| **Type**               | `array of object`           |
| **Required**           | No                          |
| **Same definition as** | [description](#description) |

**Description:** Description résumée de la série. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.

#### <a name="inSeries_items_media"></a>16.1.7. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > media`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé à la série.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be      | Description                                                                                          |
| ------------------------------------ | ---------------------------------------------------------------------------------------------------- |
| [Média](#inSeries_items_media_items) | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

##### <a name="inSeries_items_media_items"></a>16.1.7.1. Représentation (Performance) > inSeries > Série de représentations (Series) > media > Média

**Title:** Média

|                           |                       |
| ------------------------- | --------------------- |
| **Type**                  | `object`              |
| **Required**              | No                    |
| **Additional properties** | Any type allowed      |
| **Same definition as**    | [Média](#media_items) |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

#### <a name="inSeries_items_hasContribution"></a>16.1.8. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasContribution`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Énumération des contributions spécifiques à la série, et non pas aux représentations. Il s'agit typiquement de contributions de production, d'organisation ou de commandite. Les contributions artistiques seront typiquement associées aux spectacles et aux représentations.

Exemple: un commanditaire d'un festival a une contribution à la série.

Contre-exemple: un artiste sur scène lors d'un spectacle dans le cadre de la série n'a pas de contribution à la série elle-même.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                       | Description                                                                                                                                                                 |
| ----------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contribution](#inSeries_items_hasContribution_items) | Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné. |

##### <a name="inSeries_items_hasContribution_items"></a>16.1.8.1. Représentation (Performance) > inSeries > Série de représentations (Series) > hasContribution > Contribution

**Title:** Contribution

|                           |                                                  |
| ------------------------- | ------------------------------------------------ |
| **Type**                  | `object`                                         |
| **Required**              | No                                               |
| **Additional properties** | Any type allowed                                 |
| **Same definition as**    | [Contribution](#hasAdditionalContribution_items) |

**Description:** Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

#### <a name="inSeries_items_mainEntityOfPage"></a>16.1.9. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > mainEntityOfPage`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Pages web donnant plus d'information sur la série.

Pour des besoins plus précis, par exemple des URL de critiques du spectacle, la propriété Médias, qui permet d'inclure des notes d'usage, peut être utilisée.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                   | Description |
| ------------------------------------------------- | ----------- |
| [WebPage](#inSeries_items_mainEntityOfPage_items) | -           |

##### <a name="inSeries_items_mainEntityOfPage_items"></a>16.1.9.1. Représentation (Performance) > inSeries > Série de représentations (Series) > mainEntityOfPage > WebPage

**Title:** WebPage

|                           |                                    |
| ------------------------- | ---------------------------------- |
| **Type**                  | `object`                           |
| **Required**              | No                                 |
| **Additional properties** | Any type allowed                   |
| **Same definition as**    | [WebPage](#mainEntityOfPage_items) |

#### <a name="inSeries_items_startDateTime"></a>16.1.10. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > startDateTime`

|              |             |
| ------------ | ----------- |
| **Type**     | `string`    |
| **Required** | Yes         |
| **Format**   | `date-time` |

**Description:** Date de début de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

#### <a name="inSeries_items_endDateTime"></a>16.1.11. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > endDateTime`

|              |             |
| ------------ | ----------- |
| **Type**     | `string`    |
| **Required** | No          |
| **Format**   | `date-time` |

**Description:** Date de fin de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

#### <a name="inSeries_items_hasOffer"></a>16.1.12. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Description des différentes modalités pour assister à la série. Il peut y avoir des modalités pour le présentiel et/ou le virtuel. Les modalités pour le présentiel et le virtuel doivent être documentées pour une série hybride. Une série contient donc au maximum deux offres.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | 1                  |
| **Max items**        | 2                  |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                 | Description                                                                                                                       |
| ----------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| [Offre (Offer)](#inSeries_items_hasOffer_items) | Permet de décrire les propriétés d’une offre associée à une représentation ou une série, par exemple le prix et la disponibilité. |

##### <a name="inSeries_items_hasOffer_items"></a>16.1.12.1. Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer)

**Title:** Offre (Offer)

|                           |                               |
| ------------------------- | ----------------------------- |
| **Type**                  | `object`                      |
| **Required**              | No                            |
| **Additional properties** | Any type allowed              |
| **Defined in**            | ./utilities/offer.schema.json |

**Description:** Permet de décrire les propriétés d’une offre associée à une représentation ou une série, par exemple le prix et la disponibilité.

| Property                                                                                       | Title/Description                                                                                                                                                                                                                                                                                       | Type             | Definition                                                                                                     |
| ---------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- | -------------------------------------------------------------------------------------------------------------- |
| + [type](#inSeries_items_hasOffer_items_type )                                                 | -                                                                                                                                                                                                                                                                                                       | const            | -                                                                                                              |
| + [inPlace](#inSeries_items_hasOffer_items_inPlace )                                           | Lieu (Place)                                                                                                                                                                                                                                                                                            | object           | In ../place.schema.json                                                                                        |
| - [inRoom](#inSeries_items_hasOffer_items_inRoom )                                             | Salle (Room)                                                                                                                                                                                                                                                                                            | object           | Same as [Salle (Room)](#inSeries_items_hasOffer_items_inPlace_inRoom_items )                                   |
| - [roomConfiguration](#inSeries_items_hasOffer_items_roomConfiguration )                       | Configuration de salle                                                                                                                                                                                                                                                                                  | object           | Same as [Configuration de salle](#inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items ) |
| + [isSoldout](#inSeries_items_hasOffer_items_isSoldout )                                       | Permet d'indiquer si cette offre est complète (toutes les places disponibles sont comblées). Peut-être complété par la propriété Complet depuis pour préciser à quelle date l'offre est devenue complète.                                                                                               | boolean          | -                                                                                                              |
| - [soldoutSince](#inSeries_items_hasOffer_items_soldoutSince )                                 | Date depuis laquelle l'offre est complète. La propriété Complet doit avoir la valeur vrai pour que Complet depuis puisse être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times                                                                           | string           | -                                                                                                              |
| + [offerStatus](#inSeries_items_hasOffer_items_offerStatus )                                   | Statut de l'Offre                                                                                                                                                                                                                                                                                       | enum (of string) | In ../vocabularies/event_status.schema.json                                                                    |
| - [price](#inSeries_items_hasOffer_items_price )                                               | Montant Monétaire                                                                                                                                                                                                                                                                                       | string           | In ../datatypes/currency.schema.json                                                                           |
| + [isAccessibleForFree](#inSeries_items_hasOffer_items_isAccessibleForFree )                   | Indique que la présente offre est gratuite.                                                                                                                                                                                                                                                             | boolean          | -                                                                                                              |
| + [isAccessibleFromAnotherOffer](#inSeries_items_hasOffer_items_isAccessibleFromAnotherOffer ) | Indique que la présente offre est accessible seulement lorsque le consommateur a souscrit à une autre offre.                                                                                                                                                                                            | boolean          | -                                                                                                              |
| - [preSaleStart](#inSeries_items_hasOffer_items_preSaleStart )                                 | Date et heure du début de la prévente. Si la propriété n'est pas documentée, la date de début de disponibilité générale doit être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times                                                                       | string           | -                                                                                                              |
| - [generalSaleStart](#inSeries_items_hasOffer_items_generalSaleStart )                         | Date et heure du début de la disponibilité générale. Si la propriété n'est pas documentée, il faut considérer que l'offre est disponible en tout temps, jusqu'à la date de début et l'heure de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times | string           | -                                                                                                              |
| + [ticketLinkNotAvailable](#inSeries_items_hasOffer_items_ticketLinkNotAvailable )             | Indication à l'effet qu'il n'existe pas de lien permettant d'obtenir, par le web, un accès à la représentation.                                                                                                                                                                                         | boolean          | -                                                                                                              |
| - [ticketLink](#inSeries_items_hasOffer_items_ticketLink )                                     | URL d'une page permettant de souscire à l'offre, par exemple un lien vers la page de la plateforme de billetterie.                                                                                                                                                                                      | string           | -                                                                                                              |

###### <a name="autogenerated_heading_2"></a>16.1.12.1.1. If (isAccessibleForFree = false)

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

###### <a name="autogenerated_heading_3"></a>16.1.12.1.1.1. The following properties are required
* ticketLink

###### <a name="inSeries_items_hasOffer_items_type"></a>16.1.12.1.2. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Offer"`

###### <a name="inSeries_items_hasOffer_items_inPlace"></a>16.1.12.1.3. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace`

**Title:** Lieu (Place)

|                           |                      |
| ------------------------- | -------------------- |
| **Type**                  | `object`             |
| **Required**              | Yes                  |
| **Additional properties** | Any type allowed     |
| **Defined in**            | ../place.schema.json |

**Description:** Lieu associé à l'offre (physique ou virtuel).

| Property                                                                           | Title/Description                                                                                                                                                                                                                                  | Type            | Definition                                                                      |
| ---------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | ------------------------------------------------------------------------------- |
| + [type](#inSeries_items_hasOffer_items_inPlace_type )                             | -                                                                                                                                                                                                                                                  | const           | -                                                                               |
| - [additionalType](#inSeries_items_hasOffer_items_inPlace_additionalType )         | Term                                                                                                                                                                                                                                               | object          | Same as [Term](#hasAdditionalContribution_items_contributionType_items )        |
| + [identifier](#inSeries_items_hasOffer_items_inPlace_identifier )                 | identifier                                                                                                                                                                                                                                         | array           | Same as [identifier](#identifier )                                              |
| + [name](#inSeries_items_hasOffer_items_inPlace_name )                             | Texte court multilingue                                                                                                                                                                                                                            | array of object | Same as [Texte court multilingue](#media_items_license_items )                  |
| - [description](#inSeries_items_hasOffer_items_inPlace_description )               | Texte long multilingue                                                                                                                                                                                                                             | array of object | In ./datatypes/text_long_multilingual.schema.json                               |
| + [virtualPlace](#inSeries_items_hasOffer_items_inPlace_virtualPlace )             | -                                                                                                                                                                                                                                                  | boolean         | -                                                                               |
| - [inRoom](#inSeries_items_hasOffer_items_inPlace_inRoom )                         | Énumération des salles présentes dans le lieu. Recommandé pour les lieux contenant plusieurs salles, ou pour documenter des informations associés à la classe Salle (par exemple, les configurations possibles) dans un lieu avec une seule salle. | array           | -                                                                               |
| - [address](#inSeries_items_hasOffer_items_inPlace_address )                       | Postal Address                                                                                                                                                                                                                                     | object          | Same as [address](#inSeries_items_hasOffer_items_inPlace_inRoom_items_address ) |
| - [mainEntityOfPage](#inSeries_items_hasOffer_items_inPlace_mainEntityOfPage )     | URL vers des pages web donnant plus d'information sur le lieu.                                                                                                                                                                                     | array           | -                                                                               |
| - [placeAccessibility](#inSeries_items_hasOffer_items_inPlace_placeAccessibility ) | Caractéristiques d'accessibilité universelle pour le lieu. Des caractéristiques supplémentaires pourraient être documentées pour la ou les salles.                                                                                                 | array           | -                                                                               |
| - [geoCoordinates](#inSeries_items_hasOffer_items_inPlace_geoCoordinates )         | Coordonnées géographiques d'un point.                                                                                                                                                                                                              | object          | In ./datatypes/geo_coordinates.schema.json                                      |

###### <a name="autogenerated_heading_4"></a>16.1.12.1.3.1. If (virtualPlace = false)

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

###### <a name="autogenerated_heading_5"></a>16.1.12.1.3.1.1. The following properties are required
* type
* address

###### <a name="inSeries_items_hasOffer_items_inPlace_type"></a>16.1.12.1.3.2. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Place"`

###### <a name="inSeries_items_hasOffer_items_inPlace_additionalType"></a>16.1.12.1.3.3. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > additionalType`

**Title:** Term

|                           |                                                                 |
| ------------------------- | --------------------------------------------------------------- |
| **Type**                  | `object`                                                        |
| **Required**              | No                                                              |
| **Additional properties** | Any type allowed                                                |
| **Same definition as**    | [Term](#hasAdditionalContribution_items_contributionType_items) |

**Description:** Identification du type de lieu. Ne pas confondre avec les caractéristiques de la salle, qui doivent être documentées dans un objet de la classe Salle.

###### <a name="inSeries_items_hasOffer_items_inPlace_identifier"></a>16.1.12.1.3.4. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > identifier`

**Title:** identifier

|                        |                           |
| ---------------------- | ------------------------- |
| **Type**               | `array`                   |
| **Required**           | Yes                       |
| **Same definition as** | [identifier](#identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

###### <a name="inSeries_items_hasOffer_items_inPlace_name"></a>16.1.12.1.3.5. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > name`

**Title:** Texte court multilingue

|                        |                                                       |
| ---------------------- | ----------------------------------------------------- |
| **Type**               | `array of object`                                     |
| **Required**           | Yes                                                   |
| **Same definition as** | [Texte court multilingue](#media_items_license_items) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

###### <a name="inSeries_items_hasOffer_items_inPlace_description"></a>16.1.12.1.3.6. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > description`

**Title:** Texte long multilingue

|                |                                                |
| -------------- | ---------------------------------------------- |
| **Type**       | `array of object`                              |
| **Required**   | No                                             |
| **Defined in** | ./datatypes/text_long_multilingual.schema.json |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | 1                  |
| **Max items**        | N/A                |
| **Items unicity**    | True               |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be         | Description |
| --------------------------------------- | ----------- |
| [description items](#description_items) | -           |

###### <a name="description_items"></a>16.1.12.1.3.6.1. Représentation (Performance) > description > description items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                             | Title/Description | Type   | Definition                                |
| ------------------------------------ | ----------------- | ------ | ----------------------------------------- |
| + [lang](#description_items_lang )   | Code de langue    | string | In ./partials/language.schema.json        |
| + [value](#description_items_value ) | Texte long        | string | In ./partials/authorized_html.schema.json |

###### <a name="description_items_lang"></a>16.1.12.1.3.6.1.1. Property `Représentation (Performance) > description > description items > lang`

**Title:** Code de langue

|                |                                 |
| -------------- | ------------------------------- |
| **Type**       | `string`                        |
| **Required**   | Yes                             |
| **Defined in** | ./partials/language.schema.json |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

**Examples:**

```json
"fr"
```

```json
"en"
```

```json
"mul"
```

| Restrictions                      |                                                                                                       |
| --------------------------------- | ----------------------------------------------------------------------------------------------------- |
| **Min length**                    | 2                                                                                                     |
| **Must match regular expression** | ```^[a-z]{2,3}$``` [Test](https://regex101.com/?regex=%5E%5Ba-z%5D%7B2%2C3%7D%24&testString=%22fr%22) |

###### <a name="description_items_value"></a>16.1.12.1.3.6.1.2. Property `Représentation (Performance) > description > description items > value`

**Title:** Texte long

|                |                                        |
| -------------- | -------------------------------------- |
| **Type**       | `string`                               |
| **Required**   | Yes                                    |
| **Defined in** | ./partials/authorized_html.schema.json |

**Description:** Texte long avec formatage, incluant des paragraphes et des balises HTML autorisées b, i, u, sup et sub.

**Examples:**

```json
"<b>Texte en gras</b>"
```

```json
"<i>Texte en italique</i>"
```

```json
"<u>Texte souligné</u>"
```

```json
"<sup>Texte en exposant</sup>"
```

```json
"<sub>Texte en indice</sub>"
```

| Restrictions                      |                                                                                                                                                                                                                                                                                                 |
| --------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Max length**                    | 6000                                                                                                                                                                                                                                                                                            |
| **Must match regular expression** | ```^(?!.*<[^bius][^>]*>)(?!.*</?(?!b\|i\|u\|sup\|sub)[^>]*>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5Ebius%5D%5B%5E%3E%5D%2A%3E%29%28%3F%21.%2A%3C%2F%3F%28%3F%21b%7Ci%7Cu%7Csup%7Csub%29%5B%5E%3E%5D%2A%3E%29.%2A%24&testString=%22%3Cb%3ETexte+en+gras%3C%2Fb%3E%22) |

###### <a name="inSeries_items_hasOffer_items_inPlace_virtualPlace"></a>16.1.12.1.3.7. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > virtualPlace`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | Yes       |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom"></a>16.1.12.1.3.8. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Énumération des salles présentes dans le lieu. Recommandé pour les lieux contenant plusieurs salles, ou pour documenter des informations associés à la classe Salle (par exemple, les configurations possibles) dans un lieu avec une seule salle.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                     | Description                                                                                                                                             |
| ------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Salle (Room)](#inSeries_items_hasOffer_items_inPlace_inRoom_items) | Certains lieux contiennent plusieurs salles. Cette classe permet de préciser et décrire la salle utilisée dans le contexte d’une représentation donnée. |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items"></a>16.1.12.1.3.8.1. Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room)

**Title:** Salle (Room)

|                           |                    |
| ------------------------- | ------------------ |
| **Type**                  | `object`           |
| **Required**              | No                 |
| **Additional properties** | Any type allowed   |
| **Defined in**            | ./room.schema.json |

**Description:** Certains lieux contiennent plusieurs salles. Cette classe permet de préciser et décrire la salle utilisée dans le contexte d’une représentation donnée.

| Property                                                                                      | Title/Description                                                                         | Type            | Definition                                                     |
| --------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | --------------- | -------------------------------------------------------------- |
| + [type](#inSeries_items_hasOffer_items_inPlace_inRoom_items_type )                           | -                                                                                         | const           | -                                                              |
| + [identifier](#inSeries_items_hasOffer_items_inPlace_inRoom_items_identifier )               | identifier                                                                                | array           | Same as [identifier](#identifier )                             |
| - [name](#inSeries_items_hasOffer_items_inPlace_inRoom_items_name )                           | Texte court multilingue                                                                   | array of object | Same as [Texte court multilingue](#media_items_license_items ) |
| + [nameSameAsPlace](#inSeries_items_hasOffer_items_inPlace_inRoom_items_nameSameAsPlace )     | -                                                                                         | boolean         | -                                                              |
| - [description](#inSeries_items_hasOffer_items_inPlace_inRoom_items_description )             | Texte long multilingue                                                                    | array of object | Same as [description](#description )                           |
| - [shortDescription](#inSeries_items_hasOffer_items_inPlace_inRoom_items_shortDescription )   | Texte long multilingue                                                                    | array of object | Same as [description](#description )                           |
| - [media](#inSeries_items_hasOffer_items_inPlace_inRoom_items_media )                         | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au lieux. | array           | -                                                              |
| - [inPlace](#inSeries_items_hasOffer_items_inPlace_inRoom_items_inPlace )                     | Lieu (Place)                                                                              | object          | Same as [inPlace](#inSeries_items_hasOffer_items_inPlace )     |
| - [address](#inSeries_items_hasOffer_items_inPlace_inRoom_items_address )                     | Postal Address                                                                            | object          | In ./utilities/postal_address.schema.json                      |
| - [roomAccessibility](#inSeries_items_hasOffer_items_inPlace_inRoom_items_roomAccessibility ) | Caractéristiques d'accessibilité universelle pour la salle.                               | array           | -                                                              |
| - [roomConfiguration](#inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration ) | Précisions sur les configurations possibles de la salle.                                  | array           | -                                                              |

###### <a name="autogenerated_heading_6"></a>16.1.12.1.3.8.1.1. If (nameSameAsPlace = false)

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

###### <a name="autogenerated_heading_7"></a>16.1.12.1.3.8.1.1.1. The following properties are required
* name

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_type"></a>16.1.12.1.3.8.1.2. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"Room"`

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_identifier"></a>16.1.12.1.3.8.1.3. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > identifier`

**Title:** identifier

|                        |                           |
| ---------------------- | ------------------------- |
| **Type**               | `array`                   |
| **Required**           | Yes                       |
| **Same definition as** | [identifier](#identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_name"></a>16.1.12.1.3.8.1.4. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > name`

**Title:** Texte court multilingue

|                        |                                                       |
| ---------------------- | ----------------------------------------------------- |
| **Type**               | `array of object`                                     |
| **Required**           | No                                                    |
| **Same definition as** | [Texte court multilingue](#media_items_license_items) |

**Description:** Nom de la salle, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels.

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_nameSameAsPlace"></a>16.1.12.1.3.8.1.5. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > nameSameAsPlace`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | Yes       |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_description"></a>16.1.12.1.3.8.1.6. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > description`

**Title:** Texte long multilingue

|                        |                             |
| ---------------------- | --------------------------- |
| **Type**               | `array of object`           |
| **Required**           | No                          |
| **Same definition as** | [description](#description) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_shortDescription"></a>16.1.12.1.3.8.1.7. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > shortDescription`

**Title:** Texte long multilingue

|                        |                             |
| ---------------------- | --------------------------- |
| **Type**               | `array of object`           |
| **Required**           | No                          |
| **Same definition as** | [description](#description) |

**Description:** Description résumée de la salle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_media"></a>16.1.12.1.3.8.1.8. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > media`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au lieux.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                          | Description                                                                                          |
| ------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------- |
| [Média](#inSeries_items_hasOffer_items_inPlace_inRoom_items_media_items) | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_media_items"></a>16.1.12.1.3.8.1.8.1. Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média

**Title:** Média

|                           |                       |
| ------------------------- | --------------------- |
| **Type**                  | `object`              |
| **Required**              | No                    |
| **Additional properties** | Any type allowed      |
| **Same definition as**    | [Média](#media_items) |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_inPlace"></a>16.1.12.1.3.8.1.9. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > inPlace`

**Title:** Lieu (Place)

|                           |                                                   |
| ------------------------- | ------------------------------------------------- |
| **Type**                  | `object`                                          |
| **Required**              | No                                                |
| **Additional properties** | Any type allowed                                  |
| **Same definition as**    | [inPlace](#inSeries_items_hasOffer_items_inPlace) |

**Description:** Lieu associé à l'offre (physique ou virtuel).

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_address"></a>16.1.12.1.3.8.1.10. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address`

**Title:** Postal Address

|                           |                                        |
| ------------------------- | -------------------------------------- |
| **Type**                  | `object`                               |
| **Required**              | No                                     |
| **Additional properties** | Any type allowed                       |
| **Defined in**            | ./utilities/postal_address.schema.json |

**Description:** Coordonnées complètes de la salle, lorsque les coordonnées de la salle sont différentes ou plus précises que celles du lieu.

| Property                                                                                          | Title/Description                                                                                  | Type   | Definition                                                                                                          |
| ------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | ------ | ------------------------------------------------------------------------------------------------------------------- |
| + [type](#inSeries_items_hasOffer_items_inPlace_inRoom_items_address_type )                       | -                                                                                                  | const  | -                                                                                                                   |
| + [streetAddress](#inSeries_items_hasOffer_items_inPlace_inRoom_items_address_streetAddress )     | Texte court                                                                                        | string | Same as [usageNote](#media_items_usageNote )                                                                        |
| + [addressLocality](#inSeries_items_hasOffer_items_inPlace_inRoom_items_address_addressLocality ) | Texte court                                                                                        | string | Same as [usageNote](#media_items_usageNote )                                                                        |
| + [addressRegion](#inSeries_items_hasOffer_items_inPlace_inRoom_items_address_addressRegion )     | Abréviation des noms de provinces recommandés par Postes Canada, ou une région dans un autre pays. | string | -                                                                                                                   |
| + [addressCountry](#inSeries_items_hasOffer_items_inPlace_inRoom_items_address_addressCountry )   | Code Pays                                                                                          | string | Same as [addressCountry](#hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_addressCountry ) |
| + [postalCode](#inSeries_items_hasOffer_items_inPlace_inRoom_items_address_postalCode )           | Code Postal Canadien                                                                               | string | In ../datatypes/canada_postal_code.schema.json                                                                      |

###### <a name="autogenerated_heading_8"></a>16.1.12.1.3.8.1.10.1. If (addressCountry = "CAN")

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                           | Title/Description | Type             | Definition |
| -------------------------------------------------------------------------------------------------- | ----------------- | ---------------- | ---------- |
| - [addressRegion](#inSeries_items_hasOffer_items_inPlace_inRoom_items_address_then_addressRegion ) | -                 | enum (of string) | -          |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_address_then_addressRegion"></a>16.1.12.1.3.8.1.10.1.1. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > then > addressRegion`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

Must be one of:
* "AB"
* "BC"
* "MB"
* "NB"
* "NL"
* "NS"
* "NT"
* "NU"
* "ON"
* "PE"
* "QC"
* "SK"
* "YT"

###### <a name="autogenerated_heading_9"></a>16.1.12.1.3.8.1.10.2. Else (i.e.  addressCountry != "CAN")

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                           | Title/Description                                                                                          | Type   | Definition |
| -------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- | ------ | ---------- |
| - [addressRegion](#inSeries_items_hasOffer_items_inPlace_inRoom_items_address_else_addressRegion ) | Nom de la région, province ou état. Peut être un code de pays à 2 caractères selon le standard ISO 3166-1. | string | -          |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_address_else_addressRegion"></a>16.1.12.1.3.8.1.10.2.1. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > else > addressRegion`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Nom de la région, province ou état. Peut être un code de pays à 2 caractères selon le standard ISO 3166-1.

| Restrictions                      |                                                                             |
| --------------------------------- | --------------------------------------------------------------------------- |
| **Must match regular expression** | ```^[A-Z]{2}$``` [Test](https://regex101.com/?regex=%5E%5BA-Z%5D%7B2%7D%24) |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_address_type"></a>16.1.12.1.3.8.1.10.3. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"PostalAddress"`

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_address_streetAddress"></a>16.1.12.1.3.8.1.10.4. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > streetAddress`

**Title:** Texte court

|                        |                                     |
| ---------------------- | ----------------------------------- |
| **Type**               | `string`                            |
| **Required**           | Yes                                 |
| **Same definition as** | [usageNote](#media_items_usageNote) |

**Description:** Unité, numéro municipal, type de rue, nom de rue, direction de rue. Peut aussi contenir d'autres informations.

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_address_addressLocality"></a>16.1.12.1.3.8.1.10.5. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > addressLocality`

**Title:** Texte court

|                        |                                     |
| ---------------------- | ----------------------------------- |
| **Type**               | `string`                            |
| **Required**           | Yes                                 |
| **Same definition as** | [usageNote](#media_items_usageNote) |

**Description:** Nom de la ville. Peut aussi contenir le nom de la municipalité ou de la localité.

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_address_addressRegion"></a>16.1.12.1.3.8.1.10.6. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > addressRegion`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** Abréviation des noms de provinces recommandés par Postes Canada, ou une région dans un autre pays.

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_address_addressCountry"></a>16.1.12.1.3.8.1.10.7. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > addressCountry`

**Title:** Code Pays

|                        |                                                                                                            |
| ---------------------- | ---------------------------------------------------------------------------------------------------------- |
| **Type**               | `string`                                                                                                   |
| **Required**           | Yes                                                                                                        |
| **Same definition as** | [addressCountry](#hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_addressCountry) |

**Description:** Code de pays à 3 caractères selon le standard ISO 3166-1

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_address_postalCode"></a>16.1.12.1.3.8.1.10.8. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > postalCode`

**Title:** Code Postal Canadien

|                |                                             |
| -------------- | ------------------------------------------- |
| **Type**       | `string`                                    |
| **Required**   | Yes                                         |
| **Defined in** | ../datatypes/canada_postal_code.schema.json |

**Description:** Code postal, en majuscules. Séparer les trois premiers caractères du code postal des trois derniers. On ne doit pas utiliser le trait d’union

| Restrictions                      |                                                                                                                                     |
| --------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| **Must match regular expression** | ```^[A-Za-z]\d[A-Za-z] \d[A-Za-z]\d$``` [Test](https://regex101.com/?regex=%5E%5BA-Za-z%5D%5Cd%5BA-Za-z%5D+%5Cd%5BA-Za-z%5D%5Cd%24) |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_roomAccessibility"></a>16.1.12.1.3.8.1.11. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > roomAccessibility`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Caractéristiques d'accessibilité universelle pour la salle. 

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                                     | Description                                                                             |
| ----------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#inSeries_items_hasOffer_items_inPlace_inRoom_items_roomAccessibility_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_roomAccessibility_items"></a>16.1.12.1.3.8.1.11.1. Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > roomAccessibility > Term

**Title:** Term

|                           |                                                                 |
| ------------------------- | --------------------------------------------------------------- |
| **Type**                  | `object`                                                        |
| **Required**              | No                                                              |
| **Additional properties** | Any type allowed                                                |
| **Same definition as**    | [Term](#hasAdditionalContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration"></a>16.1.12.1.3.8.1.12. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Précisions sur les configurations possibles de la salle.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                                                       | Description                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------- |
| [Configuration de salle](#inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items) | Précisions sur un configuration possible de la salle. |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items"></a>16.1.12.1.3.8.1.12.1. Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration > Configuration de salle

**Title:** Configuration de salle

|                           |                                            |
| ------------------------- | ------------------------------------------ |
| **Type**                  | `object`                                   |
| **Required**              | No                                         |
| **Additional properties** | Any type allowed                           |
| **Defined in**            | ./utilities/room_specification.schema.json |

**Description:** Précisions sur un configuration possible de la salle.

| Property                                                                                            | Title/Description                    | Type    | Definition                                                               |
| --------------------------------------------------------------------------------------------------- | ------------------------------------ | ------- | ------------------------------------------------------------------------ |
| + [type](#inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items_type )         | -                                    | const   | -                                                                        |
| + [layout](#inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items_layout )     | Term                                 | object  | Same as [Term](#hasAdditionalContribution_items_contributionType_items ) |
| - [capacity](#inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items_capacity ) | Capacité, en nombre de spectacteurs. | integer | -                                                                        |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items_type"></a>16.1.12.1.3.8.1.12.1.1. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration > Configuration de salle > type`

|              |         |
| ------------ | ------- |
| **Type**     | `const` |
| **Required** | Yes     |

Specific value: `"RoomConfiguration"`

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items_layout"></a>16.1.12.1.3.8.1.12.1.2. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration > Configuration de salle > layout`

**Title:** Term

|                           |                                                                 |
| ------------------------- | --------------------------------------------------------------- |
| **Type**                  | `object`                                                        |
| **Required**              | Yes                                                             |
| **Additional properties** | Any type allowed                                                |
| **Same definition as**    | [Term](#hasAdditionalContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items_capacity"></a>16.1.12.1.3.8.1.12.1.3. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration > Configuration de salle > capacity`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Capacité, en nombre de spectacteurs.

###### <a name="inSeries_items_hasOffer_items_inPlace_address"></a>16.1.12.1.3.9. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > address`

**Title:** Postal Address

|                           |                                                                        |
| ------------------------- | ---------------------------------------------------------------------- |
| **Type**                  | `object`                                                               |
| **Required**              | No                                                                     |
| **Additional properties** | Any type allowed                                                       |
| **Same definition as**    | [address](#inSeries_items_hasOffer_items_inPlace_inRoom_items_address) |

**Description:** Coordonnées complètes du lieu.

###### <a name="inSeries_items_hasOffer_items_inPlace_mainEntityOfPage"></a>16.1.12.1.3.10. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > mainEntityOfPage`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** URL vers des pages web donnant plus d'information sur le lieu.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                          | Description |
| ------------------------------------------------------------------------ | ----------- |
| [WebPage](#inSeries_items_hasOffer_items_inPlace_mainEntityOfPage_items) | -           |

###### <a name="inSeries_items_hasOffer_items_inPlace_mainEntityOfPage_items"></a>16.1.12.1.3.10.1. Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > mainEntityOfPage > WebPage

**Title:** WebPage

|                           |                                    |
| ------------------------- | ---------------------------------- |
| **Type**                  | `object`                           |
| **Required**              | No                                 |
| **Additional properties** | Any type allowed                   |
| **Same definition as**    | [WebPage](#mainEntityOfPage_items) |

###### <a name="inSeries_items_hasOffer_items_inPlace_placeAccessibility"></a>16.1.12.1.3.11. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > placeAccessibility`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Caractéristiques d'accessibilité universelle pour le lieu. Des caractéristiques supplémentaires pourraient être documentées pour la ou les salles.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                         | Description                                                                             |
| ----------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#inSeries_items_hasOffer_items_inPlace_placeAccessibility_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

###### <a name="inSeries_items_hasOffer_items_inPlace_placeAccessibility_items"></a>16.1.12.1.3.11.1. Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > placeAccessibility > Term

**Title:** Term

|                           |                                                                 |
| ------------------------- | --------------------------------------------------------------- |
| **Type**                  | `object`                                                        |
| **Required**              | No                                                              |
| **Additional properties** | Any type allowed                                                |
| **Same definition as**    | [Term](#hasAdditionalContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

###### <a name="inSeries_items_hasOffer_items_inPlace_geoCoordinates"></a>16.1.12.1.3.12. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > geoCoordinates`

**Title:** Coordonnées géographiques d'un point.

|                           |                                         |
| ------------------------- | --------------------------------------- |
| **Type**                  | `object`                                |
| **Required**              | No                                      |
| **Additional properties** | Any type allowed                        |
| **Defined in**            | ./datatypes/geo_coordinates.schema.json |

**Description:** Coordonnées géographiques

| Property                                                                        | Title/Description | Type   | Definition |
| ------------------------------------------------------------------------------- | ----------------- | ------ | ---------- |
| + [longitude](#inSeries_items_hasOffer_items_inPlace_geoCoordinates_longitude ) | -                 | number | -          |
| + [latitude](#inSeries_items_hasOffer_items_inPlace_geoCoordinates_latitude )   | -                 | number | -          |

###### <a name="inSeries_items_hasOffer_items_inPlace_geoCoordinates_longitude"></a>16.1.12.1.3.12.1. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > geoCoordinates > longitude`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | Yes      |

###### <a name="inSeries_items_hasOffer_items_inPlace_geoCoordinates_latitude"></a>16.1.12.1.3.12.2. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > geoCoordinates > latitude`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | Yes      |

###### <a name="inSeries_items_hasOffer_items_inRoom"></a>16.1.12.1.4. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inRoom`

**Title:** Salle (Room)

|                           |                                                                     |
| ------------------------- | ------------------------------------------------------------------- |
| **Type**                  | `object`                                                            |
| **Required**              | No                                                                  |
| **Additional properties** | Any type allowed                                                    |
| **Same definition as**    | [Salle (Room)](#inSeries_items_hasOffer_items_inPlace_inRoom_items) |

**Description:** Salle associée à l'offre. La salle fait partie du lieu indiqué à la propriété Lieu.

###### <a name="inSeries_items_hasOffer_items_roomConfiguration"></a>16.1.12.1.5. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > roomConfiguration`

**Title:** Configuration de salle

|                           |                                                                                                       |
| ------------------------- | ----------------------------------------------------------------------------------------------------- |
| **Type**                  | `object`                                                                                              |
| **Required**              | No                                                                                                    |
| **Additional properties** | Any type allowed                                                                                      |
| **Same definition as**    | [Configuration de salle](#inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items) |

**Description:** Configuration de la salle dans le contexte de cette offre.

###### <a name="inSeries_items_hasOffer_items_isSoldout"></a>16.1.12.1.6. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > isSoldout`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | Yes       |

**Description:** Permet d'indiquer si cette offre est complète (toutes les places disponibles sont comblées). Peut-être complété par la propriété Complet depuis pour préciser à quelle date l'offre est devenue complète.

###### <a name="inSeries_items_hasOffer_items_soldoutSince"></a>16.1.12.1.7. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > soldoutSince`

|              |             |
| ------------ | ----------- |
| **Type**     | `string`    |
| **Required** | No          |
| **Format**   | `date-time` |

**Description:** Date depuis laquelle l'offre est complète. La propriété Complet doit avoir la valeur vrai pour que Complet depuis puisse être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times

###### <a name="inSeries_items_hasOffer_items_offerStatus"></a>16.1.12.1.8. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > offerStatus`

**Title:** Statut de l'Offre

|                |                                          |
| -------------- | ---------------------------------------- |
| **Type**       | `enum (of string)`                       |
| **Required**   | Yes                                      |
| **Defined in** | ../vocabularies/event_status.schema.json |

**Description:** Statut de l'offre. La valeur doit être choisie parmi les valeurs du vocabulaire contrôlé Statut de l'offre.

Must be one of:
* "EventScheduled"
* "EventCancelled"
* "EventRescheduled"
* "EventPostponed"
* "EventMovedOnline"

###### <a name="inSeries_items_hasOffer_items_price"></a>16.1.12.1.9. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > price`

**Title:** Montant Monétaire

|                |                                   |
| -------------- | --------------------------------- |
| **Type**       | `string`                          |
| **Required**   | No                                |
| **Defined in** | ../datatypes/currency.schema.json |

**Description:** Prix de départ en dollars canadiens.

| Restrictions                      |                                                                                                                                                   |
| --------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Must match regular expression** | ```^\d{1,3}(,\d{3})*(\.\d{1,2})?$``` [Test](https://regex101.com/?regex=%5E%5Cd%7B1%2C3%7D%28%2C%5Cd%7B3%7D%29%2A%28%5C.%5Cd%7B1%2C2%7D%29%3F%24) |

###### <a name="inSeries_items_hasOffer_items_isAccessibleForFree"></a>16.1.12.1.10. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > isAccessibleForFree`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | Yes       |

**Description:** Indique que la présente offre est gratuite.

###### <a name="inSeries_items_hasOffer_items_isAccessibleFromAnotherOffer"></a>16.1.12.1.11. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > isAccessibleFromAnotherOffer`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | Yes       |

**Description:** Indique que la présente offre est accessible seulement lorsque le consommateur a souscrit à une autre offre.

###### <a name="inSeries_items_hasOffer_items_preSaleStart"></a>16.1.12.1.12. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > preSaleStart`

|              |             |
| ------------ | ----------- |
| **Type**     | `string`    |
| **Required** | No          |
| **Format**   | `date-time` |

**Description:** Date et heure du début de la prévente. Si la propriété n'est pas documentée, la date de début de disponibilité générale doit être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times

###### <a name="inSeries_items_hasOffer_items_generalSaleStart"></a>16.1.12.1.13. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > generalSaleStart`

|              |             |
| ------------ | ----------- |
| **Type**     | `string`    |
| **Required** | No          |
| **Format**   | `date-time` |

**Description:** Date et heure du début de la disponibilité générale. Si la propriété n'est pas documentée, il faut considérer que l'offre est disponible en tout temps, jusqu'à la date de début et l'heure de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times

###### <a name="inSeries_items_hasOffer_items_ticketLinkNotAvailable"></a>16.1.12.1.14. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > ticketLinkNotAvailable`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | Yes       |

**Description:** Indication à l'effet qu'il n'existe pas de lien permettant d'obtenir, par le web, un accès à la représentation.

###### <a name="inSeries_items_hasOffer_items_ticketLink"></a>16.1.12.1.15. Property `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > ticketLink`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |
| **Format**   | `uri`    |

**Description:** URL d'une page permettant de souscire à l'offre, par exemple un lien vers la page de la plateforme de billetterie.

## <a name="hasOffer"></a>17. Property `Représentation (Performance) > hasOffer`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | Yes     |

**Description:** Description des différentes modalités pour assister à la représentation. Il peut y avoir des modalités pour le présentiel et/ou le virtuel. Les modalités pour le présentiel et le virtuel doivent être documentées pour un spectacle hybride. Une représentation contient donc au maximum deux offres.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | 1                  |
| **Max items**        | 2                  |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be  | Description                                                                                                                       |
| -------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| [Offre (Offer)](#hasOffer_items) | Permet de décrire les propriétés d’une offre associée à une représentation ou une série, par exemple le prix et la disponibilité. |

### <a name="hasOffer_items"></a>17.1. Représentation (Performance) > hasOffer > Offre (Offer)

**Title:** Offre (Offer)

|                           |                                                 |
| ------------------------- | ----------------------------------------------- |
| **Type**                  | `object`                                        |
| **Required**              | No                                              |
| **Additional properties** | Any type allowed                                |
| **Same definition as**    | [Offre (Offer)](#inSeries_items_hasOffer_items) |

**Description:** Permet de décrire les propriétés d’une offre associée à une représentation ou une série, par exemple le prix et la disponibilité.

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2025-09-08 at 14:26:54 -0400
