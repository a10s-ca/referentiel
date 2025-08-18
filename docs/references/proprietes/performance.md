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

| Each item of this array must be                     | Description                                                                                                   |
| --------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| [offer.schema.json](#inSeries_items_hasOffer_items) | 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️ |

##### <a name="inSeries_items_hasOffer_items"></a>16.1.12.1. Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > offer.schema.json

|                           |                     |
| ------------------------- | ------------------- |
| **Type**                  | `object`            |
| **Required**              | No                  |
| **Additional properties** | Any type allowed    |
| **Defined in**            | ./offer.schema.json |

**Description:** 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️

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

| Each item of this array must be      | Description                                                                                                   |
| ------------------------------------ | ------------------------------------------------------------------------------------------------------------- |
| [offer.schema.json](#hasOffer_items) | 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️ |

### <a name="hasOffer_items"></a>17.1. Représentation (Performance) > hasOffer > offer.schema.json

|                           |                     |
| ------------------------- | ------------------- |
| **Type**                  | `object`            |
| **Required**              | No                  |
| **Additional properties** | Any type allowed    |
| **Defined in**            | ./offer.schema.json |

**Description:** 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️

----------------------------------------------------------------------------------------------------------------------------
Generated using [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) on 2025-08-18 at 15:47:40 -0400
