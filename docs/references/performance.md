# Représentation (Performance)

**Nom:** Représentation (Performance)

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

**Description:** Décrit une représentation, qui est un événement unique associé à un lieu, une date et une heure, et qui peut inclure des informations sur les artistes, les œuvres présentées, et d'autres détails pertinents.

| Propriété                                                  | Description                                                                                                                                                                                                                                                                                             | Type de donnée  | Définition                                                                  |
| ---------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------------------------- |
| + [type](#type )                                           | -                                                                                                                                                                                                                                                                                                       | const           | -                                                                           |
| + [identifier](#identifier )                               | Énumération des identifiants connus.                                                                                                                                                                                                                                                                    | array           | [identifier](../identifier )                                     |
| + [startDateTime](#startDateTime )                         | Date et heure de début de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                                                                                                     | string          | -                                                                           |
| - [endDateTime](#endDateTime )                             | Date et heure de fin de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                                                                                                       | string          | -                                                                           |
| - [duration](#duration )                                   | Durée de la représentation en format ISO-8601                                                                                                                                                                                                                                                           | string          | -                                                                           |
| - [previousStartDateTime](#previousStartDateTime )         | Date et heure de début initialement prévus pour la représentation, dans le cas où il s'agit d'une représentation reportée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                       | string          | -                                                                           |
| - [hasIntermission](#hasIntermission )                     | Indique la présence d'une ou plusieurs entractes                                                                                                                                                                                                                                                        | boolean         | -                                                                           |
| - [isExtra](#isExtra )                                     | Indique si la représentation est une représentation supplémentaire                                                                                                                                                                                                                                      | boolean         | -                                                                           |
| - [description](#description )                             | Propriété utilisée seulement si la description de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle s'appliquent.                                                 | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )   |
| - [shortDescription](#shortDescription )                   | Propriété utilisée seulement si la description courte de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle s'appliquent.                                          | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )   |
| - [media](#media )                                         | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) supplémentaires associés à la représentation, lorsqu'ils sont disponibles et qu'il n'est pas possible de les associer au spectacle. Les consignes d'utilisation de la classe Spectacle s'appliquent.                            | array           | [Voir les détails](#media )                                                 |
| - [alternateName](#alternateName )                         | Propriété utilisée seulement si l'autre nom de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle] s'appliquent                                                    | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| - [mainEntityOfPage](#mainEntityOfPage )                   | Propriété utilisée seulement si l'URL du PageWeb associée à la représentation est différente de celle du spectacle. Ne pas confondre à l'URL de billetterie de la section concernant les offres. Les consignes d'utilisation de la classe Spectacle s'appliquent.                                       | array           | [Voir les détails](#mainEntityOfPage )                                      |
| - [hasAdditionalContribution](#hasAdditionalContribution ) | Contributions à la représentation qui ne sont pas documentées dans le spectacle. Les contributions de la représentation sont donc l'ajout des contributions du spectacle et des contributions supplémentaires, desquelles ont retire les contributions retirées.                                        | array           | [Voir les détails](#hasAdditionalContribution )                             |
| - [hasRemovedContribution](#hasRemovedContribution )       | Contributions documentées dans le spectacle qui ne s'appliquent pas à la représentation. Les contributions de la représentation sont donc l'ajout des contributions du spectacle et des contributions supplémentaires, desquelles ont retire les contributions retirées                                 | array           | [Voir les détails](#hasRemovedContribution )                                |
| - [inSeries](#inSeries )                                   | Identification des séries dont la représentation fait partie.                                                                                                                                                                                                                                           | array           | [Voir les détails](#inSeries )                                              |
| + [hasOffer](#hasOffer )                                   | Description des différentes modalités pour assister à la représentation. Il peut y avoir des modalités pour le présentiel et/ou le virtuel. Les modalités pour le présentiel et le virtuel doivent être documentées pour un spectacle hybride. Une représentation contient donc au maximum deux offres. | array           | [Voir les détails](#hasOffer )                                              |

## <a name="type"></a>1. Propriété `Représentation (Performance) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Performance"`

## <a name="identifier"></a>2. Propriété `Représentation (Performance) > identifier`

**Nom:** identifier

|                 |                                        |
| --------------- | -------------------------------------- |
| **Type**        | `array`                                |
| **Requis**      | Oui                                    |
| **Défini dans** | [identifier](../identifier) |

**Description:** Énumération des identifiants connus.

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

| Chaque item du tableau doit être      | Description |
| ------------------------------------- | ----------- |
| [identifier items](#identifier_items) | -           |

### <a name="identifier_items"></a>2.1. Représentation (Performance) > identifier > identifier items

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `combinaison`    |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Any of(Option)                       |
| ------------------------------------ |
| [item 0](#identifier_items_anyOf_i0) |
| [item 1](#identifier_items_anyOf_i1) |

#### <a name="identifier_items_anyOf_i0"></a>2.1.1. Propriété `Représentation (Performance) > identifier > identifier items > anyOf > item 0`

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Propriété                                              | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | Type de donnée | Définition |
| ------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | ---------- |
| + [type](#identifier_items_anyOf_i0_type )             | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | const          | -          |
| + [propertyID](#identifier_items_anyOf_i0_propertyID ) | Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles. | string         | -          |
| + [value](#identifier_items_anyOf_i0_value )           | L'identifiant lui-même                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | string         | -          |

##### <a name="identifier_items_anyOf_i0_type"></a>2.1.1.1. Propriété `Représentation (Performance) > identifier > identifier items > anyOf > item 0 > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"PropertyValue"`

##### <a name="identifier_items_anyOf_i0_propertyID"></a>2.1.1.2. Propriété `Représentation (Performance) > identifier > identifier items > anyOf > item 0 > propertyID`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |

**Description:** Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles.

| Restrictions          |   |
| --------------------- | - |
| **Longueur minimale** | 1 |

##### <a name="identifier_items_anyOf_i0_value"></a>2.1.1.3. Propriété `Représentation (Performance) > identifier > identifier items > anyOf > item 0 > value`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |

**Description:** L'identifiant lui-même

| Restrictions          |   |
| --------------------- | - |
| **Longueur minimale** | 1 |

#### <a name="identifier_items_anyOf_i1"></a>2.1.2. Propriété `Représentation (Performance) > identifier > identifier items > anyOf > item 1`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Non      |
| **Format** | `uri`    |

**Description:** Un identifiant URI sous forme de chaîne de caractères.

## <a name="startDateTime"></a>3. Propriété `Représentation (Performance) > startDateTime`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Oui         |
| **Format** | `date-time` |

**Description:** Date et heure de début de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

## <a name="endDateTime"></a>4. Propriété `Représentation (Performance) > endDateTime`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date et heure de fin de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

## <a name="duration"></a>5. Propriété `Représentation (Performance) > duration`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Non      |

**Description:** Durée de la représentation en format ISO-8601

**Exemple:**

```json
"PT1H30M"
```

| Restrictions                                   |                                                                                                                                                                                                                                                                                                                                                           |
| ---------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Doit correspondre à l'expression régulière** | ```^P(?=\d\|T\d)(\d+Y)?(\d+M)?(\d+W)?(\d+D)?(T(?=\d)(\d+H)?(\d+M)?(\d+(\.\d+)?S)?)?$``` [Test](https://regex101.com/?regex=%5EP%28%3F%3D%5Cd%7CT%5Cd%29%28%5Cd%2BY%29%3F%28%5Cd%2BM%29%3F%28%5Cd%2BW%29%3F%28%5Cd%2BD%29%3F%28T%28%3F%3D%5Cd%29%28%5Cd%2BH%29%3F%28%5Cd%2BM%29%3F%28%5Cd%2B%28%5C.%5Cd%2B%29%3FS%29%3F%29%3F%24&testString=%22PT1H30M%22) |
| **Minimum**                                    | &ge; 1                                                                                                                                                                                                                                                                                                                                                    |

## <a name="previousStartDateTime"></a>6. Propriété `Représentation (Performance) > previousStartDateTime`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date et heure de début initialement prévus pour la représentation, dans le cas où il s'agit d'une représentation reportée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

## <a name="hasIntermission"></a>7. Propriété `Représentation (Performance) > hasIntermission`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Non       |

**Description:** Indique la présence d'une ou plusieurs entractes

## <a name="isExtra"></a>8. Propriété `Représentation (Performance) > isExtra`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Non       |

**Description:** Indique si la représentation est une représentation supplémentaire

## <a name="description"></a>9. Propriété `Représentation (Performance) > description`

**Nom:** Texte long multilingue

|                 |                                                               |
| --------------- | ------------------------------------------------------------- |
| **Type**        | `array of object`                                             |
| **Requis**      | Non                                                           |
| **Défini dans** | [description](../datatypes/text_long_multilingual) |

**Description:** Propriété utilisée seulement si la description de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle s'appliquent.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Vrai                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être        | Description |
| --------------------------------------- | ----------- |
| [description items](#description_items) | -           |

### <a name="description_items"></a>9.1. Représentation (Performance) > description > description items

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                            | Description                                                                                                                                                | Type de donnée | Définition                                         |
| ------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [lang](#description_items_lang )   | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). | string         | [Code de langue](../datatypes/partials/language ) |
| + [value](#description_items_value ) | Texte long avec formatage, incluant des paragraphes et des balises HTML autorisées b, i, u, sup et sub.                                                    | string         | [](../datatypes/partials/authorized_html )        |

#### <a name="description_items_lang"></a>9.1.1. Propriété `Représentation (Performance) > description > description items > lang`

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

#### <a name="description_items_value"></a>9.1.2. Propriété `Représentation (Performance) > description > description items > value`

**Nom:** Texte long

|                 |                                                 |
| --------------- | ----------------------------------------------- |
| **Type**        | `string`                                        |
| **Requis**      | Oui                                             |
| **Défini dans** | [value](../datatypes/partials/authorized_html) |

**Description:** Texte long avec formatage, incluant des paragraphes et des balises HTML autorisées b, i, u, sup et sub.

**Exemples:**

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

| Restrictions                                   |                                                                                                                                                                                                                                                                                                 |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Longueur maximale**                          | 6000                                                                                                                                                                                                                                                                                            |
| **Doit correspondre à l'expression régulière** | ```^(?!.*<[^bius][^>]*>)(?!.*</?(?!b\|i\|u\|sup\|sub)[^>]*>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5Ebius%5D%5B%5E%3E%5D%2A%3E%29%28%3F%21.%2A%3C%2F%3F%28%3F%21b%7Ci%7Cu%7Csup%7Csub%29%5B%5E%3E%5D%2A%3E%29.%2A%24&testString=%22%3Cb%3ETexte+en+gras%3C%2Fb%3E%22) |

## <a name="shortDescription"></a>10. Propriété `Représentation (Performance) > shortDescription`

**Nom:** Texte long multilingue

|                         |                             |
| ----------------------- | --------------------------- |
| **Type**                | `array of object`           |
| **Requis**              | Non                         |
| **Même définition que** | [description](#description) |

**Description:** Propriété utilisée seulement si la description courte de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle s'appliquent.

## <a name="media"></a>11. Propriété `Représentation (Performance) > media`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) supplémentaires associés à la représentation, lorsqu'ils sont disponibles et qu'il n'est pas possible de les associer au spectacle. Les consignes d'utilisation de la classe Spectacle s'appliquent.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être | Description                                                                                          |
| -------------------------------- | ---------------------------------------------------------------------------------------------------- |
| [Média](#media_items)            | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

### <a name="media_items"></a>11.1. Représentation (Performance) > media > Média

**Nom:** Média

|                               |                              |
| ----------------------------- | ---------------------------- |
| **Type**                      | `object`                     |
| **Requis**                    | Non                          |
| **Propriétés additionnelles** | Tout type permis             |
| **Défini dans**               | [Média](../media) |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

| Propriété                                          | Description                                                                                                                                                                                                                                    | Type de donnée  | Définition                                                                  |
| -------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------------------------- |
| + [type](#media_items_type )                       | -                                                                                                                                                                                                                                              | const           | -                                                                           |
| - [sequenceNumber](#media_items_sequenceNumber )   | Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                       | integer         | -                                                                           |
| - [usageNote](#media_items_usageNote )             | Texte libre permettant d'identifier les usages possibles du média (à l'intention des opérateurs des systèmes, pas du grand public, et donc pas pour publication).                                                                              | string          | [Texte court](../datatypes/text_short )                          |
| + [url](#media_items_url )                         | URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible                                                                                     | string          | -                                                                           |
| - [inLanguage](#media_items_inLanguage )           | Langue au format ISO 639-1.                                                                                                                                                                                                                    | string          | [Code de langue](../datatypes/partials/language )                |
| - [license](#media_items_license )                 | Licence d'utilisation du média. Une valeur vide ou non définie correspond à un média libre de droits. Si des conditions s'appliquent, elles doivent être définies dans cette propriété, ou sur le web à une URL intégrée dans cette propriété. | array           | [Voir les détails](#media_items_license )                                   |
| - [creditText](#media_items_creditText )           | Crédits associés au média.                                                                                                                                                                                                                     | array           | [Voir les détails](#media_items_creditText )                                |
| - [copyrightHolder](#media_items_copyrightHolder ) | Personne ou organisation détenant les droits d'auteur du média.                                                                                                                                                                                | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| - [description](#media_items_description )         | Description courte (pouvant par exemple servir de «alt description» sur le web).                                                                                                                                                               | array           | [Voir les détails](#media_items_description )                               |

#### <a name="media_items_type"></a>11.1.1. Propriété `Représentation (Performance) > media > Média > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Media"`

#### <a name="media_items_sequenceNumber"></a>11.1.2. Propriété `Représentation (Performance) > media > Média > sequenceNumber`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Non       |

**Description:** Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).

#### <a name="media_items_usageNote"></a>11.1.3. Propriété `Représentation (Performance) > media > Média > usageNote`

**Nom:** Texte court

|                 |                                                 |
| --------------- | ----------------------------------------------- |
| **Type**        | `string`                                        |
| **Requis**      | Non                                             |
| **Défini dans** | [usageNote](../datatypes/text_short) |

**Description:** Texte libre permettant d'identifier les usages possibles du média (à l'intention des opérateurs des systèmes, pas du grand public, et donc pas pour publication).

| Restrictions                                   |                                                                                                             |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Longueur minimale**                          | 1                                                                                                           |
| **Longueur maximale**                          | 500                                                                                                         |
| **Doit correspondre à l'expression régulière** | ```^(?!.*<[^>]+>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5E%3E%5D%2B%3E%29.%2A%24) |

#### <a name="media_items_url"></a>11.1.4. Propriété `Représentation (Performance) > media > Média > url`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |
| **Format** | `uri`    |

**Description:** URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible

#### <a name="media_items_inLanguage"></a>11.1.5. Propriété `Représentation (Performance) > media > Média > inLanguage`

**Nom:** Code de langue

|                         |                                 |
| ----------------------- | ------------------------------- |
| **Type**                | `string`                        |
| **Requis**              | Non                             |
| **Même définition que** | [lang](#description_items_lang) |

**Description:** Langue au format ISO 639-1.

#### <a name="media_items_license"></a>11.1.6. Propriété `Représentation (Performance) > media > Média > license`

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

| Chaque item du tableau doit être                      | Description                                                                                 |
| ----------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#media_items_license_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

##### <a name="media_items_license_items"></a>11.1.6.1. Représentation (Performance) > media > Média > license > Texte court multilingue

**Nom:** Texte court multilingue

|                 |                                                                            |
| --------------- | -------------------------------------------------------------------------- |
| **Type**        | `array of object`                                                          |
| **Requis**      | Non                                                                        |
| **Défini dans** | [Texte court multilingue](../datatypes/text_short_multilingual) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Vrai                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                        | Description |
| ------------------------------------------------------- | ----------- |
| [license items items](#media_items_license_items_items) | -           |

###### <a name="media_items_license_items_items"></a>11.1.6.1.1. Représentation (Performance) > media > Média > license > Texte court multilingue > license items items

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                                          | Description                                                                                                                                                | Type de donnée | Définition                                         |
| -------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [lang](#media_items_license_items_items_lang )   | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). | string         | [Code de langue](../datatypes/partials/language ) |
| + [value](#media_items_license_items_items_value ) | HTML non-autorisées                                                                                                                                        | string         | [](../datatypes/partials/no_html )                |

###### <a name="media_items_license_items_items_lang"></a>11.1.6.1.1.1. Propriété `Représentation (Performance) > media > Média > license > Texte court multilingue > license items items > lang`

**Nom:** Code de langue

|                         |                                 |
| ----------------------- | ------------------------------- |
| **Type**                | `string`                        |
| **Requis**              | Oui                             |
| **Même définition que** | [lang](#description_items_lang) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

###### <a name="media_items_license_items_items_value"></a>11.1.6.1.1.2. Propriété `Représentation (Performance) > media > Média > license > Texte court multilingue > license items items > value`

**Nom:** Texte court

|                 |                                             |
| --------------- | ------------------------------------------- |
| **Type**        | `string`                                    |
| **Requis**      | Oui                                         |
| **Défini dans** | [usageNote](../datatypes/partials/no_html) |

**Description:** HTML non-autorisées

| Restrictions                                   |                                                                                                             |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Longueur minimale**                          | 1                                                                                                           |
| **Longueur maximale**                          | 500                                                                                                         |
| **Doit correspondre à l'expression régulière** | ```^(?!.*<[^>]+>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5E%3E%5D%2B%3E%29.%2A%24) |

#### <a name="media_items_creditText"></a>11.1.7. Propriété `Représentation (Performance) > media > Média > creditText`

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

| Chaque item du tableau doit être                         | Description                                                                                 |
| -------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#media_items_creditText_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

##### <a name="media_items_creditText_items"></a>11.1.7.1. Représentation (Performance) > media > Média > creditText > Texte court multilingue

**Nom:** Texte court multilingue

|                         |                                                       |
| ----------------------- | ----------------------------------------------------- |
| **Type**                | `array of object`                                     |
| **Requis**              | Non                                                   |
| **Même définition que** | [Texte court multilingue](#media_items_license_items) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

#### <a name="media_items_copyrightHolder"></a>11.1.8. Propriété `Représentation (Performance) > media > Média > copyrightHolder`

**Nom:** Texte court multilingue

|                         |                                                       |
| ----------------------- | ----------------------------------------------------- |
| **Type**                | `array of object`                                     |
| **Requis**              | Non                                                   |
| **Même définition que** | [Texte court multilingue](#media_items_license_items) |

**Description:** Personne ou organisation détenant les droits d'auteur du média.

#### <a name="media_items_description"></a>11.1.9. Propriété `Représentation (Performance) > media > Média > description`

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

| Chaque item du tableau doit être                         | Description                                                                     |
| -------------------------------------------------------- | ------------------------------------------------------------------------------- |
| [Texte long multilingue](#media_items_description_items) | Énumération de textes longs associés à un code de langue au standard ISO 639-1. |

##### <a name="media_items_description_items"></a>11.1.9.1. Représentation (Performance) > media > Média > description > Texte long multilingue

**Nom:** Texte long multilingue

|                         |                             |
| ----------------------- | --------------------------- |
| **Type**                | `array of object`           |
| **Requis**              | Non                         |
| **Même définition que** | [description](#description) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

## <a name="alternateName"></a>12. Propriété `Représentation (Performance) > alternateName`

**Nom:** Texte court multilingue

|                         |                                                       |
| ----------------------- | ----------------------------------------------------- |
| **Type**                | `array of object`                                     |
| **Requis**              | Non                                                   |
| **Même définition que** | [Texte court multilingue](#media_items_license_items) |

**Description:** Propriété utilisée seulement si l'autre nom de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle] s'appliquent

## <a name="mainEntityOfPage"></a>13. Propriété `Représentation (Performance) > mainEntityOfPage`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Propriété utilisée seulement si l'URL du PageWeb associée à la représentation est différente de celle du spectacle. Ne pas confondre à l'URL de billetterie de la section concernant les offres. Les consignes d'utilisation de la classe Spectacle s'appliquent.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être   | Description |
| ---------------------------------- | ----------- |
| [WebPage](#mainEntityOfPage_items) | -           |

### <a name="mainEntityOfPage_items"></a>13.1. Représentation (Performance) > mainEntityOfPage > WebPage

**Nom:** WebPage

|                               |                                   |
| ----------------------------- | --------------------------------- |
| **Type**                      | `object`                          |
| **Requis**                    | Non                               |
| **Propriétés additionnelles** | Tout type permis                  |
| **Défini dans**               | [WebPage](../web_page) |

| Propriété                                           | Description                                 | Type de donnée | Définition                                                   |
| --------------------------------------------------- | ------------------------------------------- | -------------- | ------------------------------------------------------------ |
| + [type](#mainEntityOfPage_items_type )             | -                                           | const          | -                                                            |
| + [url](#mainEntityOfPage_items_url )               | -                                           | string         | -                                                            |
| - [inLanguage](#mainEntityOfPage_items_inLanguage ) | Langue de la page Web, au format ISO 639-1. | string         | [Code de langue](../datatypes/partials/language ) |

#### <a name="mainEntityOfPage_items_type"></a>13.1.1. Propriété `Représentation (Performance) > mainEntityOfPage > WebPage > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"WebPage"`

#### <a name="mainEntityOfPage_items_url"></a>13.1.2. Propriété `Représentation (Performance) > mainEntityOfPage > WebPage > url`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |
| **Format** | `uri`    |

#### <a name="mainEntityOfPage_items_inLanguage"></a>13.1.3. Propriété `Représentation (Performance) > mainEntityOfPage > WebPage > inLanguage`

**Nom:** Code de langue

|                         |                                 |
| ----------------------- | ------------------------------- |
| **Type**                | `string`                        |
| **Requis**              | Non                             |
| **Même définition que** | [lang](#description_items_lang) |

**Description:** Langue de la page Web, au format ISO 639-1.

## <a name="hasAdditionalContribution"></a>14. Propriété `Représentation (Performance) > hasAdditionalContribution`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Contributions à la représentation qui ne sont pas documentées dans le spectacle. Les contributions de la représentation sont donc l'ajout des contributions du spectacle et des contributions supplémentaires, desquelles ont retire les contributions retirées.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                 | Description                                                                                                                                                                 |
| ------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contribution](#hasAdditionalContribution_items) | Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné. |

### <a name="hasAdditionalContribution_items"></a>14.1. Représentation (Performance) > hasAdditionalContribution > Contribution

**Nom:** Contribution

|                               |                                            |
| ----------------------------- | ------------------------------------------ |
| **Type**                      | `object`                                   |
| **Requis**                    | Non                                        |
| **Propriétés additionnelles** | Tout type permis                           |
| **Défini dans**               | [Contribution](../contribution) |

**Description:** Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

| Propriété                                                                | Description                                                                                                                                                                                                                                                                                                                                                          | Type de donnée | Définition                                                             |
| ------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | ---------------------------------------------------------------------- |
| + [type](#hasAdditionalContribution_items_type )                         | -                                                                                                                                                                                                                                                                                                                                                                    | const          | -                                                                      |
| + [contributionType](#hasAdditionalContribution_items_contributionType ) | Identification des types de contribution.                                                                                                                                                                                                                                                                                                                            | array          | [Voir les détails](#hasAdditionalContribution_items_contributionType ) |
| + [contributeur](#hasAdditionalContribution_items_contributeur )         | Identification du contributeur                                                                                                                                                                                                                                                                                                                                       | object         | [Contributor](../contributor )                              |
| - [sequenceNumber](#hasAdditionalContribution_items_sequenceNumber )     | Précision sur l'ordre de présentation des contributions (les nombres plus petits correspondent à des contributions qui doivent être présentées en premier).                                                                                                                                                                                                          | integer        | -                                                                      |
| - [usageNote](#hasAdditionalContribution_items_usageNote )               | Note concernant la contribution, à l'intention des exploitants des systèmes d'information (et donc pas du grand public). Il peut s'agir d'une précision sur le type de contribution, qui ne pourrait pas être exprimée à travers la propriété Types. Les informations compilées dans les notes pourraient être utilisées pour améliorer les vocabulaires contrôllés. | string         | [Texte court](../datatypes/text_short )                     |

#### <a name="hasAdditionalContribution_items_type"></a>14.1.1. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Contribution"`

#### <a name="hasAdditionalContribution_items_contributionType"></a>14.1.2. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributionType`

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

| Chaque item du tableau doit être                                | Description                                                                             |
| --------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#hasAdditionalContribution_items_contributionType_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

##### <a name="hasAdditionalContribution_items_contributionType_items"></a>14.1.2.1. Représentation (Performance) > hasAdditionalContribution > Contribution > contributionType > Term

**Nom:** Term

|                               |                            |
| ----------------------------- | -------------------------- |
| **Type**                      | `object`                   |
| **Requis**                    | Non                        |
| **Propriétés additionnelles** | Tout type permis           |
| **Défini dans**               | [Term](../term) |

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

| Propriété                                                                                   | Description                                                                                                                                                                                                                                                                      | Type de donnée  | Définition                                                                  |
| ------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------------------------- |
| + [type](#hasAdditionalContribution_items_contributionType_items_type )                     | -                                                                                                                                                                                                                                                                                | const           | -                                                                           |
| + [vocabulary](#hasAdditionalContribution_items_contributionType_items_vocabulary )         | Identification du vocabulaire duquel est tiré le term.<br /><br />Typiquement, cette identification correspond à l'appellation du vocabulaire dont l'usage est le plus fréquent, tout en minuscules, sans accents, et avec les espaces remplacés par des barres de soulignement. | string          | [Texte court](../datatypes/text_short )                          |
| - [version](#hasAdditionalContribution_items_contributionType_items_version )               | Version du vocabulaire utilisé, lorsque c'est applicable                                                                                                                                                                                                                         | string          | [Texte court](../datatypes/text_short )                          |
| + [code](#hasAdditionalContribution_items_contributionType_items_code )                     | Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.                                                                                                                     | string          | [Texte court](../datatypes/text_short )                          |
| - [label](#hasAdditionalContribution_items_contributionType_items_label )                   | Version textuelle du terme tiré du vocabulaire choisi                                                                                                                                                                                                                            | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| + [sequenceNumber](#hasAdditionalContribution_items_contributionType_items_sequenceNumber ) | Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                                                         | integer         | -                                                                           |

###### <a name="hasAdditionalContribution_items_contributionType_items_type"></a>14.1.2.1.1. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributionType > Term > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Term"`

###### <a name="hasAdditionalContribution_items_contributionType_items_vocabulary"></a>14.1.2.1.2. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributionType > Term > vocabulary`

**Nom:** Texte court

|                 |                                                 |
| --------------- | ----------------------------------------------- |
| **Type**        | `string`                                        |
| **Requis**      | Oui                                             |
| **Défini dans** | [usageNote](../datatypes/text_short) |

**Description:** Identification du vocabulaire duquel est tiré le term.

Typiquement, cette identification correspond à l'appellation du vocabulaire dont l'usage est le plus fréquent, tout en minuscules, sans accents, et avec les espaces remplacés par des barres de soulignement.

| Restrictions                                   |                                                                                                             |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Longueur minimale**                          | 1                                                                                                           |
| **Longueur maximale**                          | 500                                                                                                         |
| **Doit correspondre à l'expression régulière** | ```^(?!.*<[^>]+>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5E%3E%5D%2B%3E%29.%2A%24) |

###### <a name="hasAdditionalContribution_items_contributionType_items_version"></a>14.1.2.1.3. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributionType > Term > version`

**Nom:** Texte court

|                         |                                     |
| ----------------------- | ----------------------------------- |
| **Type**                | `string`                            |
| **Requis**              | Non                                 |
| **Même définition que** | [usageNote](#media_items_usageNote) |

**Description:** Version du vocabulaire utilisé, lorsque c'est applicable

###### <a name="hasAdditionalContribution_items_contributionType_items_code"></a>14.1.2.1.4. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributionType > Term > code`

**Nom:** Texte court

|                         |                                     |
| ----------------------- | ----------------------------------- |
| **Type**                | `string`                            |
| **Requis**              | Oui                                 |
| **Même définition que** | [usageNote](#media_items_usageNote) |

**Description:** Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.

###### <a name="hasAdditionalContribution_items_contributionType_items_label"></a>14.1.2.1.5. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributionType > Term > label`

**Nom:** Texte court multilingue

|                         |                                                       |
| ----------------------- | ----------------------------------------------------- |
| **Type**                | `array of object`                                     |
| **Requis**              | Non                                                   |
| **Même définition que** | [Texte court multilingue](#media_items_license_items) |

**Description:** Version textuelle du terme tiré du vocabulaire choisi

###### <a name="hasAdditionalContribution_items_contributionType_items_sequenceNumber"></a>14.1.2.1.6. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributionType > Term > sequenceNumber`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Oui       |

**Description:** Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).

#### <a name="hasAdditionalContribution_items_contributeur"></a>14.1.3. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur`

**Nom:** Contributor

|                               |                                           |
| ----------------------------- | ----------------------------------------- |
| **Type**                      | `object`                                  |
| **Requis**                    | Oui                                       |
| **Propriétés additionnelles** | Tout type permis                          |
| **Défini dans**               | [contributeur](../contributor) |

**Description:** Identification du contributeur

| Propriété                                                                                           | Description                                                                                                                                                                                                                                                                                                                                                                                                                                 | Type de donnée   | Définition                                                                                 |
| --------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- | ------------------------------------------------------------------------------------------ |
| + [type](#hasAdditionalContribution_items_contributeur_type )                                       | -                                                                                                                                                                                                                                                                                                                                                                                                                                           | const            | -                                                                                          |
| + [contributorType](#hasAdditionalContribution_items_contributeur_contributorType )                 | Indication à l'effet qu'il s'agit d'une personne physique ou d'une personne morale.                                                                                                                                                                                                                                                                                                                                                         | enum (of string) | [Type de contributeur](../vocabularies/contributor_type )                       |
| + [identifier](#hasAdditionalContribution_items_contributeur_identifier )                           | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.                                                                                                                                                                                                                                                                                                           | array            | [identifier](../identifier )                                                    |
| + [name](#hasAdditionalContribution_items_contributeur_name )                                       | Nom complet du contributeur, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. Le prénom et le nom de sont pas traités dans des propriétés distinctes à cause de la diversité des appellations de contributions, qui sont parfois des personnes morales.<br /><br />Exemples: Michel Rivard, Les Trois Accords, Koriass, Desjardins, Spectra. | array of object  | [Texte court multilingue](../datatypes/text_short_multilingual )                |
| - [alternateName](#hasAdditionalContribution_items_contributeur_alternateName )                     | Autres appellations parfois utilisées pour le contributeur.<br /><br />Exemple: «Béatrice Martin» comme nom alternatif de «Cœur de pirate».<br />Exemple: «Compagnie Jean-Duceppe» comme nom alternatif de «Duceppe».                                                                                                                                                                                                                       | array            | [Voir les détails](#hasAdditionalContribution_items_contributeur_alternateName )           |
| - [description](#hasAdditionalContribution_items_contributeur_description )                         | Énumération de textes longs associés à un code de langue au standard ISO 639-1.                                                                                                                                                                                                                                                                                                                                                             | array of object  | [Texte long multilingue](../datatypes/text_long_multilingual )                  |
| - [shortDescription](#hasAdditionalContribution_items_contributeur_shortDescription )               | Description résumée du contributeur. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage.                                                                                                                                                                                                                                                                                                            | array of object  | [Texte long multilingue](../datatypes/text_long_multilingual )                  |
| - [media](#hasAdditionalContribution_items_contributeur_media )                                     | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au contributeur.                                                                                                                                                                                                                                                                                                                                            | array            | [Voir les détails](#hasAdditionalContribution_items_contributeur_media )                   |
| - [typicalContributionType](#hasAdditionalContribution_items_contributeur_typicalContributionType ) | Énumération des types de contributions habituellement faites par le contributeur.                                                                                                                                                                                                                                                                                                                                                           | array            | [Voir les détails](#hasAdditionalContribution_items_contributeur_typicalContributionType ) |
| - [hasGeographicRelation](#hasAdditionalContribution_items_contributeur_hasGeographicRelation )     | Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.                                                                                                                                                                                                                                                                                                        | array            | [Voir les détails](#hasAdditionalContribution_items_contributeur_hasGeographicRelation )   |
| - [hasMembers](#hasAdditionalContribution_items_contributeur_hasMembers )                           | Énumération des membres des groupes, troupes et collectifs, etc.                                                                                                                                                                                                                                                                                                                                                                            | array            | [Voir les détails](#hasAdditionalContribution_items_contributeur_hasMembers )              |

##### <a name="hasAdditionalContribution_items_contributeur_type"></a>14.1.3.1. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Contributor"`

##### <a name="hasAdditionalContribution_items_contributeur_contributorType"></a>14.1.3.2. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > contributorType`

**Nom:** Type de contributeur

|                 |                                                                |
| --------------- | -------------------------------------------------------------- |
| **Type**        | `enum (of string)`                                             |
| **Requis**      | Oui                                                            |
| **Défini dans** | [contributorType](../vocabularies/contributor_type) |

**Description:** Indication à l'effet qu'il s'agit d'une personne physique ou d'une personne morale.

Doit être un de:
* "Person"
* "Group"
* "Organization"

##### <a name="hasAdditionalContribution_items_contributeur_identifier"></a>14.1.3.3. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > identifier`

**Nom:** identifier

|                         |                           |
| ----------------------- | ------------------------- |
| **Type**                | `array`                   |
| **Requis**              | Oui                       |
| **Même définition que** | [identifier](#identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

##### <a name="hasAdditionalContribution_items_contributeur_name"></a>14.1.3.4. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > name`

**Nom:** Texte court multilingue

|                         |                                                       |
| ----------------------- | ----------------------------------------------------- |
| **Type**                | `array of object`                                     |
| **Requis**              | Oui                                                   |
| **Même définition que** | [Texte court multilingue](#media_items_license_items) |

**Description:** Nom complet du contributeur, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. Le prénom et le nom de sont pas traités dans des propriétés distinctes à cause de la diversité des appellations de contributions, qui sont parfois des personnes morales.

Exemples: Michel Rivard, Les Trois Accords, Koriass, Desjardins, Spectra.

##### <a name="hasAdditionalContribution_items_contributeur_alternateName"></a>14.1.3.5. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > alternateName`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Autres appellations parfois utilisées pour le contributeur.

Exemple: «Béatrice Martin» comme nom alternatif de «Cœur de pirate».
Exemple: «Compagnie Jean-Duceppe» comme nom alternatif de «Duceppe».

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                                                             | Description                                                                                 |
| -------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#hasAdditionalContribution_items_contributeur_alternateName_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

###### <a name="hasAdditionalContribution_items_contributeur_alternateName_items"></a>14.1.3.5.1. Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > alternateName > Texte court multilingue

**Nom:** Texte court multilingue

|                         |                                                       |
| ----------------------- | ----------------------------------------------------- |
| **Type**                | `array of object`                                     |
| **Requis**              | Non                                                   |
| **Même définition que** | [Texte court multilingue](#media_items_license_items) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

##### <a name="hasAdditionalContribution_items_contributeur_description"></a>14.1.3.6. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > description`

**Nom:** Texte long multilingue

|                         |                             |
| ----------------------- | --------------------------- |
| **Type**                | `array of object`           |
| **Requis**              | Non                         |
| **Même définition que** | [description](#description) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

##### <a name="hasAdditionalContribution_items_contributeur_shortDescription"></a>14.1.3.7. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > shortDescription`

**Nom:** Texte long multilingue

|                         |                             |
| ----------------------- | --------------------------- |
| **Type**                | `array of object`           |
| **Requis**              | Non                         |
| **Même définition que** | [description](#description) |

**Description:** Description résumée du contributeur. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage.

##### <a name="hasAdditionalContribution_items_contributeur_media"></a>14.1.3.8. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > media`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au contributeur.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                                   | Description                                                                                          |
| ------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------- |
| [Média](#hasAdditionalContribution_items_contributeur_media_items) | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

###### <a name="hasAdditionalContribution_items_contributeur_media_items"></a>14.1.3.8.1. Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > media > Média

**Nom:** Média

|                               |                       |
| ----------------------------- | --------------------- |
| **Type**                      | `object`              |
| **Requis**                    | Non                   |
| **Propriétés additionnelles** | Tout type permis      |
| **Même définition que**       | [Média](#media_items) |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

##### <a name="hasAdditionalContribution_items_contributeur_typicalContributionType"></a>14.1.3.9. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > typicalContributionType`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Énumération des types de contributions habituellement faites par le contributeur.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                                                    | Description                                                                             |
| ----------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#hasAdditionalContribution_items_contributeur_typicalContributionType_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

###### <a name="hasAdditionalContribution_items_contributeur_typicalContributionType_items"></a>14.1.3.9.1. Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > typicalContributionType > Term

**Nom:** Term

|                               |                                                                 |
| ----------------------------- | --------------------------------------------------------------- |
| **Type**                      | `object`                                                        |
| **Requis**                    | Non                                                             |
| **Propriétés additionnelles** | Tout type permis                                                |
| **Même définition que**       | [Term](#hasAdditionalContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

##### <a name="hasAdditionalContribution_items_contributeur_hasGeographicRelation"></a>14.1.3.10. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > hasGeographicRelation`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                                                                                           | Description                                                                                                                          |
| -------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| [Association Géographique (GeographicRelation)](#hasAdditionalContribution_items_contributeur_hasGeographicRelation_items) | Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc. |

###### <a name="hasAdditionalContribution_items_contributeur_hasGeographicRelation_items"></a>14.1.3.10.1. Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation)

**Nom:** Association Géographique (GeographicRelation)

|                               |                                                                                    |
| ----------------------------- | ---------------------------------------------------------------------------------- |
| **Type**                      | `object`                                                                           |
| **Requis**                    | Non                                                                                |
| **Propriétés additionnelles** | Pas permis                                                                         |
| **Défini dans**               | [Association Géographique (GeographicRelation)](../geographic_relation) |

**Description:** Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.

| Propriété                                                                                                       | Description                                                                                             | Type de donnée | Définition                                         |
| --------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [type](#hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_type )                       | -                                                                                                       | const          | -                                                  |
| - [relationType](#hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_relationType )       | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.                 | object         | [Term](term )                          |
| - [addressCountry](#hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_addressCountry )   | Code ISO 3166-1 alpha-3 à 3 caractères représentant un pays.                                            | string         | [Code Pays](../datatypes/country_code ) |
| - [addressRegion](#hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_addressRegion )     | Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne) | string         | [Texte court](../datatypes/text_short ) |
| - [addressLocality](#hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_addressLocality ) | Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne) | string         | [Texte court](../datatypes/text_short ) |

###### <a name="hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_type"></a>14.1.3.10.1.1. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"GeographicRelation"`

###### <a name="hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_relationType"></a>14.1.3.10.1.2. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > relationType`

**Nom:** Term

|                               |                                                                 |
| ----------------------------- | --------------------------------------------------------------- |
| **Type**                      | `object`                                                        |
| **Requis**                    | Non                                                             |
| **Propriétés additionnelles** | Tout type permis                                                |
| **Même définition que**       | [Term](#hasAdditionalContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

###### <a name="hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_addressCountry"></a>14.1.3.10.1.3. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > addressCountry`

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

###### <a name="hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_addressRegion"></a>14.1.3.10.1.4. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > addressRegion`

**Nom:** Texte court

|                         |                                     |
| ----------------------- | ----------------------------------- |
| **Type**                | `string`                            |
| **Requis**              | Non                                 |
| **Même définition que** | [usageNote](#media_items_usageNote) |

**Description:** Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne)

###### <a name="hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_addressLocality"></a>14.1.3.10.1.5. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > addressLocality`

**Nom:** Texte court

|                         |                                     |
| ----------------------- | ----------------------------------- |
| **Type**                | `string`                            |
| **Requis**              | Non                                 |
| **Même définition que** | [usageNote](#media_items_usageNote) |

**Description:** Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne)

##### <a name="hasAdditionalContribution_items_contributeur_hasMembers"></a>14.1.3.11. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > hasMembers`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Énumération des membres des groupes, troupes et collectifs, etc.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                                              | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contributor](#hasAdditionalContribution_items_contributeur_hasMembers_items) | les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre). |

###### <a name="hasAdditionalContribution_items_contributeur_hasMembers_items"></a>14.1.3.11.1. Représentation (Performance) > hasAdditionalContribution > Contribution > contributeur > hasMembers > Contributor

**Nom:** Contributor

|                               |                                                               |
| ----------------------------- | ------------------------------------------------------------- |
| **Type**                      | `object`                                                      |
| **Requis**                    | Non                                                           |
| **Propriétés additionnelles** | Tout type permis                                              |
| **Même définition que**       | [contributeur](#hasAdditionalContribution_items_contributeur) |

**Description:** les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre).

#### <a name="hasAdditionalContribution_items_sequenceNumber"></a>14.1.4. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > sequenceNumber`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Non       |

**Description:** Précision sur l'ordre de présentation des contributions (les nombres plus petits correspondent à des contributions qui doivent être présentées en premier).

#### <a name="hasAdditionalContribution_items_usageNote"></a>14.1.5. Propriété `Représentation (Performance) > hasAdditionalContribution > Contribution > usageNote`

**Nom:** Texte court

|                         |                                     |
| ----------------------- | ----------------------------------- |
| **Type**                | `string`                            |
| **Requis**              | Non                                 |
| **Même définition que** | [usageNote](#media_items_usageNote) |

**Description:** Note concernant la contribution, à l'intention des exploitants des systèmes d'information (et donc pas du grand public). Il peut s'agir d'une précision sur le type de contribution, qui ne pourrait pas être exprimée à travers la propriété Types. Les informations compilées dans les notes pourraient être utilisées pour améliorer les vocabulaires contrôllés.

## <a name="hasRemovedContribution"></a>15. Propriété `Représentation (Performance) > hasRemovedContribution`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Contributions documentées dans le spectacle qui ne s'appliquent pas à la représentation. Les contributions de la représentation sont donc l'ajout des contributions du spectacle et des contributions supplémentaires, desquelles ont retire les contributions retirées

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être              | Description                                                                                                                                                                 |
| --------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contribution](#hasRemovedContribution_items) | Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné. |

### <a name="hasRemovedContribution_items"></a>15.1. Représentation (Performance) > hasRemovedContribution > Contribution

**Nom:** Contribution

|                               |                                                  |
| ----------------------------- | ------------------------------------------------ |
| **Type**                      | `object`                                         |
| **Requis**                    | Non                                              |
| **Propriétés additionnelles** | Tout type permis                                 |
| **Même définition que**       | [Contribution](#hasAdditionalContribution_items) |

**Description:** Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

## <a name="inSeries"></a>16. Propriété `Représentation (Performance) > inSeries`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Identification des séries dont la représentation fait partie.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                     | Description                                                                                                                                                                                                                                      |
| ---------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [Série de représentations (Series)](#inSeries_items) | cette classe permet de regrouper des représentations n’étant pas nécessairement toutes associées à un même spectacle, mais liées entre elles par des éléments de commercialisation ou de modalités d’accès. Un festival est un exemple de série. |

### <a name="inSeries_items"></a>16.1. Représentation (Performance) > inSeries > Série de représentations (Series)

**Nom:** Série de représentations (Series)

|                               |                                                           |
| ----------------------------- | --------------------------------------------------------- |
| **Type**                      | `object`                                                  |
| **Requis**                    | Non                                                       |
| **Propriétés additionnelles** | Tout type permis                                          |
| **Défini dans**               | [Série de représentations (Series)](../series) |

**Description:** cette classe permet de regrouper des représentations n’étant pas nécessairement toutes associées à un même spectacle, mais liées entre elles par des éléments de commercialisation ou de modalités d’accès. Un festival est un exemple de série.

| Propriété                                               | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | Type de donnée  | Définition                                                                  |
| ------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------- | --------------------------------------------------------------------------- |
| + [type](#inSeries_items_type )                         | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | const           | -                                                                           |
| + [identifier](#inSeries_items_identifier )             | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.                                                                                                                                                                                                                                                                                                                                                                            | array           | [identifier](../identifier )                                     |
| + [name](#inSeries_items_name )                         | Nom de la série, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels.                                                                                                                                                                                                                                                                                                                                             | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| - [alternateName](#inSeries_items_alternateName )       | Élément qui ne fait pas partie du nom, mais qui le complète, sans toutefois relever de la description elle-même.<br /><br />Par exemple, le Festival de musique émergente en Abitibi-Témiscamingue est aussi connu sous son acronyme FME.                                                                                                                                                                                                                                                                    | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| + [description](#inSeries_items_description )           | Description de la série.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )   |
| - [shortDescription](#inSeries_items_shortDescription ) | Description résumée de la série. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.                                                                                                                                                                                                                                                                                                                                                               | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )   |
| - [media](#inSeries_items_media )                       | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé à la série.                                                                                                                                                                                                                                                                                                                                                                                                                  | array           | [Voir les détails](#inSeries_items_media )                                  |
| - [hasContribution](#inSeries_items_hasContribution )   | Énumération des contributions spécifiques à la série, et non pas aux représentations. Il s'agit typiquement de contributions de production, d'organisation ou de commandite. Les contributions artistiques seront typiquement associées aux spectacles et aux représentations.<br /><br />Exemple: un commanditaire d'un festival a une contribution à la série.<br /><br />Contre-exemple: un artiste sur scène lors d'un spectacle dans le cadre de la série n'a pas de contribution à la série elle-même. | array           | [Voir les détails](#inSeries_items_hasContribution )                        |
| - [mainEntityOfPage](#inSeries_items_mainEntityOfPage ) | Pages web donnant plus d'information sur la série.<br /><br />Pour des besoins plus précis, par exemple des URL de critiques du spectacle, la propriété Médias, qui permet d'inclure des notes d'usage, peut être utilisée.                                                                                                                                                                                                                                                                                  | array           | [Voir les détails](#inSeries_items_mainEntityOfPage )                       |
| + [startDateTime](#inSeries_items_startDateTime )       | Date de début de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                                                                                                                                                                                                                                                                                                                            | string          | -                                                                           |
| - [endDateTime](#inSeries_items_endDateTime )           | Date de fin de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                                                                                                                                                                                                                                                                                                                              | string          | -                                                                           |
| - [hasOffer](#inSeries_items_hasOffer )                 | Description des différentes modalités pour assister à la série. Il peut y avoir des modalités pour le présentiel et/ou le virtuel. Les modalités pour le présentiel et le virtuel doivent être documentées pour une série hybride. Une série contient donc au maximum deux offres.                                                                                                                                                                                                                           | array           | [Voir les détails](#inSeries_items_hasOffer )                               |

#### <a name="inSeries_items_type"></a>16.1.1. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Series"`

#### <a name="inSeries_items_identifier"></a>16.1.2. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > identifier`

**Nom:** identifier

|                         |                           |
| ----------------------- | ------------------------- |
| **Type**                | `array`                   |
| **Requis**              | Oui                       |
| **Même définition que** | [identifier](#identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

#### <a name="inSeries_items_name"></a>16.1.3. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > name`

**Nom:** Texte court multilingue

|                         |                                                       |
| ----------------------- | ----------------------------------------------------- |
| **Type**                | `array of object`                                     |
| **Requis**              | Oui                                                   |
| **Même définition que** | [Texte court multilingue](#media_items_license_items) |

**Description:** Nom de la série, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels.

#### <a name="inSeries_items_alternateName"></a>16.1.4. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > alternateName`

**Nom:** Texte court multilingue

|                         |                                                       |
| ----------------------- | ----------------------------------------------------- |
| **Type**                | `array of object`                                     |
| **Requis**              | Non                                                   |
| **Même définition que** | [Texte court multilingue](#media_items_license_items) |

**Description:** Élément qui ne fait pas partie du nom, mais qui le complète, sans toutefois relever de la description elle-même.

Par exemple, le Festival de musique émergente en Abitibi-Témiscamingue est aussi connu sous son acronyme FME.

#### <a name="inSeries_items_description"></a>16.1.5. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > description`

**Nom:** Texte long multilingue

|                 |                                                               |
| --------------- | ------------------------------------------------------------- |
| **Type**        | `array of object`                                             |
| **Requis**      | Oui                                                           |
| **Défini dans** | [description](../datatypes/text_long_multilingual) |

**Description:** Description de la série.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | 1                      |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Vrai                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être        | Description |
| --------------------------------------- | ----------- |
| [description items](#description_items) | -           |

##### <a name="description_items"></a>16.1.5.1. Représentation (Performance) > description > description items

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                            | Description                                                                                                                                                | Type de donnée | Définition                                         |
| ------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [lang](#description_items_lang )   | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). | string         | [Code de langue](../datatypes/partials/language ) |
| + [value](#description_items_value ) | Texte long avec formatage, incluant des paragraphes et des balises HTML autorisées b, i, u, sup et sub.                                                    | string         | [](../datatypes/partials/authorized_html )        |

###### <a name="description_items_lang"></a>16.1.5.1.1. Propriété `Représentation (Performance) > description > description items > lang`

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

###### <a name="description_items_value"></a>16.1.5.1.2. Propriété `Représentation (Performance) > description > description items > value`

**Nom:** Texte long

|                 |                                                 |
| --------------- | ----------------------------------------------- |
| **Type**        | `string`                                        |
| **Requis**      | Oui                                             |
| **Défini dans** | [value](../datatypes/partials/authorized_html) |

**Description:** Texte long avec formatage, incluant des paragraphes et des balises HTML autorisées b, i, u, sup et sub.

**Exemples:**

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

| Restrictions                                   |                                                                                                                                                                                                                                                                                                 |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Longueur maximale**                          | 6000                                                                                                                                                                                                                                                                                            |
| **Doit correspondre à l'expression régulière** | ```^(?!.*<[^bius][^>]*>)(?!.*</?(?!b\|i\|u\|sup\|sub)[^>]*>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5Ebius%5D%5B%5E%3E%5D%2A%3E%29%28%3F%21.%2A%3C%2F%3F%28%3F%21b%7Ci%7Cu%7Csup%7Csub%29%5B%5E%3E%5D%2A%3E%29.%2A%24&testString=%22%3Cb%3ETexte+en+gras%3C%2Fb%3E%22) |

#### <a name="inSeries_items_shortDescription"></a>16.1.6. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > shortDescription`

**Nom:** Texte long multilingue

|                         |                             |
| ----------------------- | --------------------------- |
| **Type**                | `array of object`           |
| **Requis**              | Non                         |
| **Même définition que** | [description](#description) |

**Description:** Description résumée de la série. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.

#### <a name="inSeries_items_media"></a>16.1.7. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > media`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé à la série.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être     | Description                                                                                          |
| ------------------------------------ | ---------------------------------------------------------------------------------------------------- |
| [Média](#inSeries_items_media_items) | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

##### <a name="inSeries_items_media_items"></a>16.1.7.1. Représentation (Performance) > inSeries > Série de représentations (Series) > media > Média

**Nom:** Média

|                               |                       |
| ----------------------------- | --------------------- |
| **Type**                      | `object`              |
| **Requis**                    | Non                   |
| **Propriétés additionnelles** | Tout type permis      |
| **Même définition que**       | [Média](#media_items) |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

#### <a name="inSeries_items_hasContribution"></a>16.1.8. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasContribution`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Énumération des contributions spécifiques à la série, et non pas aux représentations. Il s'agit typiquement de contributions de production, d'organisation ou de commandite. Les contributions artistiques seront typiquement associées aux spectacles et aux représentations.

Exemple: un commanditaire d'un festival a une contribution à la série.

Contre-exemple: un artiste sur scène lors d'un spectacle dans le cadre de la série n'a pas de contribution à la série elle-même.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                      | Description                                                                                                                                                                 |
| ----------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contribution](#inSeries_items_hasContribution_items) | Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné. |

##### <a name="inSeries_items_hasContribution_items"></a>16.1.8.1. Représentation (Performance) > inSeries > Série de représentations (Series) > hasContribution > Contribution

**Nom:** Contribution

|                               |                                                  |
| ----------------------------- | ------------------------------------------------ |
| **Type**                      | `object`                                         |
| **Requis**                    | Non                                              |
| **Propriétés additionnelles** | Tout type permis                                 |
| **Même définition que**       | [Contribution](#hasAdditionalContribution_items) |

**Description:** Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

#### <a name="inSeries_items_mainEntityOfPage"></a>16.1.9. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > mainEntityOfPage`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Pages web donnant plus d'information sur la série.

Pour des besoins plus précis, par exemple des URL de critiques du spectacle, la propriété Médias, qui permet d'inclure des notes d'usage, peut être utilisée.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                  | Description |
| ------------------------------------------------- | ----------- |
| [WebPage](#inSeries_items_mainEntityOfPage_items) | -           |

##### <a name="inSeries_items_mainEntityOfPage_items"></a>16.1.9.1. Représentation (Performance) > inSeries > Série de représentations (Series) > mainEntityOfPage > WebPage

**Nom:** WebPage

|                               |                                    |
| ----------------------------- | ---------------------------------- |
| **Type**                      | `object`                           |
| **Requis**                    | Non                                |
| **Propriétés additionnelles** | Tout type permis                   |
| **Même définition que**       | [WebPage](#mainEntityOfPage_items) |

#### <a name="inSeries_items_startDateTime"></a>16.1.10. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > startDateTime`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Oui         |
| **Format** | `date-time` |

**Description:** Date de début de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

#### <a name="inSeries_items_endDateTime"></a>16.1.11. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > endDateTime`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date de fin de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

#### <a name="inSeries_items_hasOffer"></a>16.1.12. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Description des différentes modalités pour assister à la série. Il peut y avoir des modalités pour le présentiel et/ou le virtuel. Les modalités pour le présentiel et le virtuel doivent être documentées pour une série hybride. Une série contient donc au maximum deux offres.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | 1                      |
| **Nombre d'items maximum** | 2                      |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                | Description                                                                                                                       |
| ----------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| [Offre (Offer)](#inSeries_items_hasOffer_items) | Permet de décrire les propriétés d’une offre associée à une représentation ou une série, par exemple le prix et la disponibilité. |

##### <a name="inSeries_items_hasOffer_items"></a>16.1.12.1. Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer)

**Nom:** Offre (Offer)

|                               |                                      |
| ----------------------------- | ------------------------------------ |
| **Type**                      | `object`                             |
| **Requis**                    | Non                                  |
| **Propriétés additionnelles** | Tout type permis                     |
| **Défini dans**               | [Offre (Offer)](../offer) |

**Description:** Permet de décrire les propriétés d’une offre associée à une représentation ou une série, par exemple le prix et la disponibilité.

| Propriété                                                                                      | Description                                                                                                                                                                                                                                                                                             | Type de donnée   | Définition                                                    |
| ---------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- | ------------------------------------------------------------- |
| + [type](#inSeries_items_hasOffer_items_type )                                                 | -                                                                                                                                                                                                                                                                                                       | const            | -                                                             |
| + [inPlace](#inSeries_items_hasOffer_items_inPlace )                                           | Lieu associé à l'offre (physique ou virtuel).                                                                                                                                                                                                                                                           | object           | [Lieu (Place)](../place )                          |
| - [inRoom](#inSeries_items_hasOffer_items_inRoom )                                             | Salle associée à l'offre. La salle fait partie du lieu indiqué à la propriété Lieu.                                                                                                                                                                                                                     | object           | [Salle (Room)](../room )                           |
| - [roomConfiguration](#inSeries_items_hasOffer_items_roomConfiguration )                       | Configuration de la salle dans le contexte de cette offre.                                                                                                                                                                                                                                              | object           | [Configuration de salle](../room_specification )   |
| + [isSoldout](#inSeries_items_hasOffer_items_isSoldout )                                       | Permet d'indiquer si cette offre est complète (toutes les places disponibles sont comblées). Peut-être complété par la propriété Complet depuis pour préciser à quelle date l'offre est devenue complète.                                                                                               | boolean          | -                                                             |
| - [soldoutSince](#inSeries_items_hasOffer_items_soldoutSince )                                 | Date depuis laquelle l'offre est complète. La propriété Complet doit avoir la valeur vrai pour que Complet depuis puisse être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times                                                                           | string           | -                                                             |
| + [offerStatus](#inSeries_items_hasOffer_items_offerStatus )                                   | Statut de l'offre. La valeur doit être choisie parmi les valeurs du vocabulaire contrôlé Statut de l'offre.                                                                                                                                                                                             | enum (of string) | [Statut de l'Offre](../vocabularies/event_status ) |
| - [price](#inSeries_items_hasOffer_items_price )                                               | Prix de départ en dollars canadiens.                                                                                                                                                                                                                                                                    | string           | [Montant Monétaire](../datatypes/currency )        |
| + [isAccessibleForFree](#inSeries_items_hasOffer_items_isAccessibleForFree )                   | Indique que la présente offre est gratuite.                                                                                                                                                                                                                                                             | boolean          | -                                                             |
| + [isAccessibleFromAnotherOffer](#inSeries_items_hasOffer_items_isAccessibleFromAnotherOffer ) | Indique que la présente offre est accessible seulement lorsque le consommateur a souscrit à une autre offre.                                                                                                                                                                                            | boolean          | -                                                             |
| - [preSaleStart](#inSeries_items_hasOffer_items_preSaleStart )                                 | Date et heure du début de la prévente. Si la propriété n'est pas documentée, la date de début de disponibilité générale doit être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times                                                                       | string           | -                                                             |
| - [generalSaleStart](#inSeries_items_hasOffer_items_generalSaleStart )                         | Date et heure du début de la disponibilité générale. Si la propriété n'est pas documentée, il faut considérer que l'offre est disponible en tout temps, jusqu'à la date de début et l'heure de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times | string           | -                                                             |
| + [ticketLinkNotAvailable](#inSeries_items_hasOffer_items_ticketLinkNotAvailable )             | Indication à l'effet qu'il n'existe pas de lien permettant d'obtenir, par le web, un accès à la représentation.                                                                                                                                                                                         | boolean          | -                                                             |
| - [ticketLink](#inSeries_items_hasOffer_items_ticketLink )                                     | URL d'une page permettant de souscire à l'offre, par exemple un lien vers la page de la plateforme de billetterie.                                                                                                                                                                                      | string           | -                                                             |

###### <a name="autogenerated_heading_2"></a>16.1.12.1.1. If (isAccessibleForFree = false)

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

###### <a name="autogenerated_heading_3"></a>16.1.12.1.1.1. Les propriétés suivantes sont obligatoires
* ticketLink

###### <a name="inSeries_items_hasOffer_items_type"></a>16.1.12.1.2. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Offer"`

###### <a name="inSeries_items_hasOffer_items_inPlace"></a>16.1.12.1.3. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace`

**Nom:** Lieu (Place)

|                               |                                |
| ----------------------------- | ------------------------------ |
| **Type**                      | `object`                       |
| **Requis**                    | Oui                            |
| **Propriétés additionnelles** | Tout type permis               |
| **Défini dans**               | [inPlace](../place) |

**Description:** Lieu associé à l'offre (physique ou virtuel).

| Propriété                                                                          | Description                                                                                                                                                                                                                                        | Type de donnée  | Définition                                                                        |
| ---------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------------------------------- |
| + [type](#inSeries_items_hasOffer_items_inPlace_type )                             | -                                                                                                                                                                                                                                                  | const           | -                                                                                 |
| - [additionalType](#inSeries_items_hasOffer_items_inPlace_additionalType )         | Identification du type de lieu. Ne pas confondre avec les caractéristiques de la salle, qui doivent être documentées dans un objet de la classe Salle.                                                                                             | object          | [Term](../term )                                                       |
| + [identifier](#inSeries_items_hasOffer_items_inPlace_identifier )                 | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.                                                                                                                  | array           | [identifier](../identifier )                                           |
| + [name](#inSeries_items_hasOffer_items_inPlace_name )                             | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)                                                                                                                                                        | array of object | [Texte court multilingue](../datatypes/text_short_multilingual )       |
| - [description](#inSeries_items_hasOffer_items_inPlace_description )               | Énumération de textes longs associés à un code de langue au standard ISO 639-1.                                                                                                                                                                    | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )         |
| + [virtualPlace](#inSeries_items_hasOffer_items_inPlace_virtualPlace )             | -                                                                                                                                                                                                                                                  | boolean         | -                                                                                 |
| - [inRoom](#inSeries_items_hasOffer_items_inPlace_inRoom )                         | Énumération des salles présentes dans le lieu. Recommandé pour les lieux contenant plusieurs salles, ou pour documenter des informations associés à la classe Salle (par exemple, les configurations possibles) dans un lieu avec une seule salle. | array           | [Voir les détails](#inSeries_items_hasOffer_items_inPlace_inRoom )                |
| - [address](#inSeries_items_hasOffer_items_inPlace_address )                       | Coordonnées complètes du lieu.                                                                                                                                                                                                                     | object          | [Postal Address](../postal_address )                                   |
| - [mainEntityOfPage](#inSeries_items_hasOffer_items_inPlace_mainEntityOfPage )     | URL vers des pages web donnant plus d'information sur le lieu.                                                                                                                                                                                     | array           | [Voir les détails](#inSeries_items_hasOffer_items_inPlace_mainEntityOfPage )      |
| - [placeAccessibility](#inSeries_items_hasOffer_items_inPlace_placeAccessibility ) | Caractéristiques d'accessibilité universelle pour le lieu. Des caractéristiques supplémentaires pourraient être documentées pour la ou les salles.                                                                                                 | array           | [Voir les détails](#inSeries_items_hasOffer_items_inPlace_placeAccessibility )    |
| - [geoCoordinates](#inSeries_items_hasOffer_items_inPlace_geoCoordinates )         | Coordonnées géographiques                                                                                                                                                                                                                          | object          | [Coordonnées géographiques d'un point.](../datatypes/geo_coordinates ) |

###### <a name="autogenerated_heading_4"></a>16.1.12.1.3.1. If (virtualPlace = false)

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

###### <a name="autogenerated_heading_5"></a>16.1.12.1.3.1.1. Les propriétés suivantes sont obligatoires
* type
* address

###### <a name="inSeries_items_hasOffer_items_inPlace_type"></a>16.1.12.1.3.2. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Place"`

###### <a name="inSeries_items_hasOffer_items_inPlace_additionalType"></a>16.1.12.1.3.3. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > additionalType`

**Nom:** Term

|                               |                                                                 |
| ----------------------------- | --------------------------------------------------------------- |
| **Type**                      | `object`                                                        |
| **Requis**                    | Non                                                             |
| **Propriétés additionnelles** | Tout type permis                                                |
| **Même définition que**       | [Term](#hasAdditionalContribution_items_contributionType_items) |

**Description:** Identification du type de lieu. Ne pas confondre avec les caractéristiques de la salle, qui doivent être documentées dans un objet de la classe Salle.

###### <a name="inSeries_items_hasOffer_items_inPlace_identifier"></a>16.1.12.1.3.4. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > identifier`

**Nom:** identifier

|                         |                           |
| ----------------------- | ------------------------- |
| **Type**                | `array`                   |
| **Requis**              | Oui                       |
| **Même définition que** | [identifier](#identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

###### <a name="inSeries_items_hasOffer_items_inPlace_name"></a>16.1.12.1.3.5. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > name`

**Nom:** Texte court multilingue

|                         |                                                       |
| ----------------------- | ----------------------------------------------------- |
| **Type**                | `array of object`                                     |
| **Requis**              | Oui                                                   |
| **Même définition que** | [Texte court multilingue](#media_items_license_items) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

###### <a name="inSeries_items_hasOffer_items_inPlace_description"></a>16.1.12.1.3.6. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > description`

**Nom:** Texte long multilingue

|                 |                                                               |
| --------------- | ------------------------------------------------------------- |
| **Type**        | `array of object`                                             |
| **Requis**      | Non                                                           |
| **Défini dans** | [description](../datatypes/text_long_multilingual) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | 1                      |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Vrai                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être        | Description |
| --------------------------------------- | ----------- |
| [description items](#description_items) | -           |

###### <a name="description_items"></a>16.1.12.1.3.6.1. Représentation (Performance) > description > description items

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                            | Description                                                                                                                                                | Type de donnée | Définition                                         |
| ------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [lang](#description_items_lang )   | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). | string         | [Code de langue](../datatypes/partials/language ) |
| + [value](#description_items_value ) | Texte long avec formatage, incluant des paragraphes et des balises HTML autorisées b, i, u, sup et sub.                                                    | string         | [](../datatypes/partials/authorized_html )        |

###### <a name="description_items_lang"></a>16.1.12.1.3.6.1.1. Propriété `Représentation (Performance) > description > description items > lang`

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

###### <a name="description_items_value"></a>16.1.12.1.3.6.1.2. Propriété `Représentation (Performance) > description > description items > value`

**Nom:** Texte long

|                 |                                                 |
| --------------- | ----------------------------------------------- |
| **Type**        | `string`                                        |
| **Requis**      | Oui                                             |
| **Défini dans** | [value](../datatypes/partials/authorized_html) |

**Description:** Texte long avec formatage, incluant des paragraphes et des balises HTML autorisées b, i, u, sup et sub.

**Exemples:**

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

| Restrictions                                   |                                                                                                                                                                                                                                                                                                 |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Longueur maximale**                          | 6000                                                                                                                                                                                                                                                                                            |
| **Doit correspondre à l'expression régulière** | ```^(?!.*<[^bius][^>]*>)(?!.*</?(?!b\|i\|u\|sup\|sub)[^>]*>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5Ebius%5D%5B%5E%3E%5D%2A%3E%29%28%3F%21.%2A%3C%2F%3F%28%3F%21b%7Ci%7Cu%7Csup%7Csub%29%5B%5E%3E%5D%2A%3E%29.%2A%24&testString=%22%3Cb%3ETexte+en+gras%3C%2Fb%3E%22) |

###### <a name="inSeries_items_hasOffer_items_inPlace_virtualPlace"></a>16.1.12.1.3.7. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > virtualPlace`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom"></a>16.1.12.1.3.8. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Énumération des salles présentes dans le lieu. Recommandé pour les lieux contenant plusieurs salles, ou pour documenter des informations associés à la classe Salle (par exemple, les configurations possibles) dans un lieu avec une seule salle.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                                    | Description                                                                                                                                             |
| ------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Salle (Room)](#inSeries_items_hasOffer_items_inPlace_inRoom_items) | Certains lieux contiennent plusieurs salles. Cette classe permet de préciser et décrire la salle utilisée dans le contexte d’une représentation donnée. |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items"></a>16.1.12.1.3.8.1. Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room)

**Nom:** Salle (Room)

|                               |                                    |
| ----------------------------- | ---------------------------------- |
| **Type**                      | `object`                           |
| **Requis**                    | Non                                |
| **Propriétés additionnelles** | Tout type permis                   |
| **Défini dans**               | [Salle (Room)](../room) |

**Description:** Certains lieux contiennent plusieurs salles. Cette classe permet de préciser et décrire la salle utilisée dans le contexte d’une représentation donnée.

| Propriété                                                                                     | Description                                                                                                                                                      | Type de donnée  | Définition                                                                                 |
| --------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | ------------------------------------------------------------------------------------------ |
| + [type](#inSeries_items_hasOffer_items_inPlace_inRoom_items_type )                           | -                                                                                                                                                                | const           | -                                                                                          |
| + [identifier](#inSeries_items_hasOffer_items_inPlace_inRoom_items_identifier )               | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.                                | array           | [identifier](../identifier )                                                    |
| - [name](#inSeries_items_hasOffer_items_inPlace_inRoom_items_name )                           | Nom de la salle, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. | array of object | [Texte court multilingue](../datatypes/text_short_multilingual )                |
| + [nameSameAsPlace](#inSeries_items_hasOffer_items_inPlace_inRoom_items_nameSameAsPlace )     | -                                                                                                                                                                | boolean         | -                                                                                          |
| - [description](#inSeries_items_hasOffer_items_inPlace_inRoom_items_description )             | Énumération de textes longs associés à un code de langue au standard ISO 639-1.                                                                                  | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )                  |
| - [shortDescription](#inSeries_items_hasOffer_items_inPlace_inRoom_items_shortDescription )   | Description résumée de la salle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.                   | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )                  |
| - [media](#inSeries_items_hasOffer_items_inPlace_inRoom_items_media )                         | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au lieux.                                                                        | array           | [Voir les détails](#inSeries_items_hasOffer_items_inPlace_inRoom_items_media )             |
| - [inPlace](#inSeries_items_hasOffer_items_inPlace_inRoom_items_inPlace )                     | Lieu associé à l'offre (physique ou virtuel).                                                                                                                    | object          | [Lieu (Place)](../place )                                                       |
| - [address](#inSeries_items_hasOffer_items_inPlace_inRoom_items_address )                     | Coordonnées complètes de la salle, lorsque les coordonnées de la salle sont différentes ou plus précises que celles du lieu.                                     | object          | [Postal Address](../postal_address )                                            |
| - [roomAccessibility](#inSeries_items_hasOffer_items_inPlace_inRoom_items_roomAccessibility ) | Caractéristiques d'accessibilité universelle pour la salle.                                                                                                      | array           | [Voir les détails](#inSeries_items_hasOffer_items_inPlace_inRoom_items_roomAccessibility ) |
| - [roomConfiguration](#inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration ) | Précisions sur les configurations possibles de la salle.                                                                                                         | array           | [Voir les détails](#inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration ) |

###### <a name="autogenerated_heading_6"></a>16.1.12.1.3.8.1.1. If (nameSameAsPlace = false)

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

###### <a name="autogenerated_heading_7"></a>16.1.12.1.3.8.1.1.1. Les propriétés suivantes sont obligatoires
* name

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_type"></a>16.1.12.1.3.8.1.2. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Room"`

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_identifier"></a>16.1.12.1.3.8.1.3. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > identifier`

**Nom:** identifier

|                         |                           |
| ----------------------- | ------------------------- |
| **Type**                | `array`                   |
| **Requis**              | Oui                       |
| **Même définition que** | [identifier](#identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_name"></a>16.1.12.1.3.8.1.4. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > name`

**Nom:** Texte court multilingue

|                         |                                                       |
| ----------------------- | ----------------------------------------------------- |
| **Type**                | `array of object`                                     |
| **Requis**              | Non                                                   |
| **Même définition que** | [Texte court multilingue](#media_items_license_items) |

**Description:** Nom de la salle, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels.

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_nameSameAsPlace"></a>16.1.12.1.3.8.1.5. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > nameSameAsPlace`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_description"></a>16.1.12.1.3.8.1.6. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > description`

**Nom:** Texte long multilingue

|                         |                             |
| ----------------------- | --------------------------- |
| **Type**                | `array of object`           |
| **Requis**              | Non                         |
| **Même définition que** | [description](#description) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_shortDescription"></a>16.1.12.1.3.8.1.7. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > shortDescription`

**Nom:** Texte long multilingue

|                         |                             |
| ----------------------- | --------------------------- |
| **Type**                | `array of object`           |
| **Requis**              | Non                         |
| **Même définition que** | [description](#description) |

**Description:** Description résumée de la salle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_media"></a>16.1.12.1.3.8.1.8. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > media`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au lieux.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                                         | Description                                                                                          |
| ------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------- |
| [Média](#inSeries_items_hasOffer_items_inPlace_inRoom_items_media_items) | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_media_items"></a>16.1.12.1.3.8.1.8.1. Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média

**Nom:** Média

|                               |                       |
| ----------------------------- | --------------------- |
| **Type**                      | `object`              |
| **Requis**                    | Non                   |
| **Propriétés additionnelles** | Tout type permis      |
| **Même définition que**       | [Média](#media_items) |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_inPlace"></a>16.1.12.1.3.8.1.9. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > inPlace`

**Nom:** Lieu (Place)

|                               |                                                   |
| ----------------------------- | ------------------------------------------------- |
| **Type**                      | `object`                                          |
| **Requis**                    | Non                                               |
| **Propriétés additionnelles** | Tout type permis                                  |
| **Même définition que**       | [inPlace](#inSeries_items_hasOffer_items_inPlace) |

**Description:** Lieu associé à l'offre (physique ou virtuel).

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_address"></a>16.1.12.1.3.8.1.10. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address`

**Nom:** Postal Address

|                               |                                         |
| ----------------------------- | --------------------------------------- |
| **Type**                      | `object`                                |
| **Requis**                    | Non                                     |
| **Propriétés additionnelles** | Tout type permis                        |
| **Défini dans**               | [address](../postal_address) |

**Description:** Coordonnées complètes de la salle, lorsque les coordonnées de la salle sont différentes ou plus précises que celles du lieu.

| Propriété                                                                                         | Description                                                                                                                                   | Type de donnée | Définition                                                          |
| ------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | ------------------------------------------------------------------- |
| + [type](#inSeries_items_hasOffer_items_inPlace_inRoom_items_address_type )                       | -                                                                                                                                             | const          | -                                                                   |
| + [streetAddress](#inSeries_items_hasOffer_items_inPlace_inRoom_items_address_streetAddress )     | Unité, numéro municipal, type de rue, nom de rue, direction de rue. Peut aussi contenir d'autres informations.                                | string         | [Texte court](../datatypes/text_short )                  |
| + [addressLocality](#inSeries_items_hasOffer_items_inPlace_inRoom_items_address_addressLocality ) | Nom de la ville. Peut aussi contenir le nom de la municipalité ou de la localité.                                                             | string         | [Texte court](../datatypes/text_short )                  |
| + [addressRegion](#inSeries_items_hasOffer_items_inPlace_inRoom_items_address_addressRegion )     | Abréviation des noms de provinces recommandés par Postes Canada, ou une région dans un autre pays.                                            | string         | -                                                                   |
| + [addressCountry](#inSeries_items_hasOffer_items_inPlace_inRoom_items_address_addressCountry )   | Code de pays à 3 caractères selon le standard ISO 3166-1                                                                                      | string         | [Code Pays](../datatypes/country_code )                  |
| + [postalCode](#inSeries_items_hasOffer_items_inPlace_inRoom_items_address_postalCode )           | Code postal, en majuscules. Séparer les trois premiers caractères du code postal des trois derniers. On ne doit pas utiliser le trait d’union | string         | [Code Postal Canadien](../datatypes/canada_postal_code ) |

###### <a name="autogenerated_heading_8"></a>16.1.12.1.3.8.1.10.1. If (addressCountry = "CAN")

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Propriété                                                                                          | Description | Type de donnée   | Définition |
| -------------------------------------------------------------------------------------------------- | ----------- | ---------------- | ---------- |
| - [addressRegion](#inSeries_items_hasOffer_items_inPlace_inRoom_items_address_then_addressRegion ) | -           | enum (of string) | -          |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_address_then_addressRegion"></a>16.1.12.1.3.8.1.10.1.1. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > then > addressRegion`

|            |                    |
| ---------- | ------------------ |
| **Type**   | `enum (of string)` |
| **Requis** | Non                |

Doit être un de:
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

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Propriété                                                                                          | Description                                                                                                | Type de donnée | Définition |
| -------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- | -------------- | ---------- |
| - [addressRegion](#inSeries_items_hasOffer_items_inPlace_inRoom_items_address_else_addressRegion ) | Nom de la région, province ou état. Peut être un code de pays à 2 caractères selon le standard ISO 3166-1. | string         | -          |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_address_else_addressRegion"></a>16.1.12.1.3.8.1.10.2.1. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > else > addressRegion`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Non      |

**Description:** Nom de la région, province ou état. Peut être un code de pays à 2 caractères selon le standard ISO 3166-1.

| Restrictions                                   |                                                                             |
| ---------------------------------------------- | --------------------------------------------------------------------------- |
| **Doit correspondre à l'expression régulière** | ```^[A-Z]{2}$``` [Test](https://regex101.com/?regex=%5E%5BA-Z%5D%7B2%7D%24) |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_address_type"></a>16.1.12.1.3.8.1.10.3. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"PostalAddress"`

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_address_streetAddress"></a>16.1.12.1.3.8.1.10.4. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > streetAddress`

**Nom:** Texte court

|                         |                                     |
| ----------------------- | ----------------------------------- |
| **Type**                | `string`                            |
| **Requis**              | Oui                                 |
| **Même définition que** | [usageNote](#media_items_usageNote) |

**Description:** Unité, numéro municipal, type de rue, nom de rue, direction de rue. Peut aussi contenir d'autres informations.

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_address_addressLocality"></a>16.1.12.1.3.8.1.10.5. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > addressLocality`

**Nom:** Texte court

|                         |                                     |
| ----------------------- | ----------------------------------- |
| **Type**                | `string`                            |
| **Requis**              | Oui                                 |
| **Même définition que** | [usageNote](#media_items_usageNote) |

**Description:** Nom de la ville. Peut aussi contenir le nom de la municipalité ou de la localité.

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_address_addressRegion"></a>16.1.12.1.3.8.1.10.6. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > addressRegion`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |

**Description:** Abréviation des noms de provinces recommandés par Postes Canada, ou une région dans un autre pays.

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_address_addressCountry"></a>16.1.12.1.3.8.1.10.7. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > addressCountry`

**Nom:** Code Pays

|                         |                                                                                                            |
| ----------------------- | ---------------------------------------------------------------------------------------------------------- |
| **Type**                | `string`                                                                                                   |
| **Requis**              | Oui                                                                                                        |
| **Même définition que** | [addressCountry](#hasAdditionalContribution_items_contributeur_hasGeographicRelation_items_addressCountry) |

**Description:** Code de pays à 3 caractères selon le standard ISO 3166-1

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_address_postalCode"></a>16.1.12.1.3.8.1.10.8. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > postalCode`

**Nom:** Code Postal Canadien

|                 |                                                          |
| --------------- | -------------------------------------------------------- |
| **Type**        | `string`                                                 |
| **Requis**      | Oui                                                      |
| **Défini dans** | [postalCode](../datatypes/canada_postal_code) |

**Description:** Code postal, en majuscules. Séparer les trois premiers caractères du code postal des trois derniers. On ne doit pas utiliser le trait d’union

| Restrictions                                   |                                                                                                                                     |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| **Doit correspondre à l'expression régulière** | ```^[A-Za-z]\d[A-Za-z] \d[A-Za-z]\d$``` [Test](https://regex101.com/?regex=%5E%5BA-Za-z%5D%5Cd%5BA-Za-z%5D+%5Cd%5BA-Za-z%5D%5Cd%24) |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_roomAccessibility"></a>16.1.12.1.3.8.1.11. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > roomAccessibility`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Caractéristiques d'accessibilité universelle pour la salle. 

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                                                    | Description                                                                             |
| ----------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#inSeries_items_hasOffer_items_inPlace_inRoom_items_roomAccessibility_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_roomAccessibility_items"></a>16.1.12.1.3.8.1.11.1. Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > roomAccessibility > Term

**Nom:** Term

|                               |                                                                 |
| ----------------------------- | --------------------------------------------------------------- |
| **Type**                      | `object`                                                        |
| **Requis**                    | Non                                                             |
| **Propriétés additionnelles** | Tout type permis                                                |
| **Même définition que**       | [Term](#hasAdditionalContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration"></a>16.1.12.1.3.8.1.12. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Précisions sur les configurations possibles de la salle.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                                                                      | Description                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------- |
| [Configuration de salle](#inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items) | Précisions sur un configuration possible de la salle. |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items"></a>16.1.12.1.3.8.1.12.1. Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration > Configuration de salle

**Nom:** Configuration de salle

|                               |                                                            |
| ----------------------------- | ---------------------------------------------------------- |
| **Type**                      | `object`                                                   |
| **Requis**                    | Non                                                        |
| **Propriétés additionnelles** | Tout type permis                                           |
| **Défini dans**               | [Configuration de salle](../room_specification) |

**Description:** Précisions sur un configuration possible de la salle.

| Propriété                                                                                           | Description                                                                             | Type de donnée | Définition                  |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | -------------- | --------------------------- |
| + [type](#inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items_type )         | -                                                                                       | const          | -                           |
| + [layout](#inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items_layout )     | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. | object         | [Term](../term ) |
| - [capacity](#inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items_capacity ) | Capacité, en nombre de spectacteurs.                                                    | integer        | -                           |

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items_type"></a>16.1.12.1.3.8.1.12.1.1. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration > Configuration de salle > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"RoomConfiguration"`

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items_layout"></a>16.1.12.1.3.8.1.12.1.2. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration > Configuration de salle > layout`

**Nom:** Term

|                               |                                                                 |
| ----------------------------- | --------------------------------------------------------------- |
| **Type**                      | `object`                                                        |
| **Requis**                    | Oui                                                             |
| **Propriétés additionnelles** | Tout type permis                                                |
| **Même définition que**       | [Term](#hasAdditionalContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

###### <a name="inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items_capacity"></a>16.1.12.1.3.8.1.12.1.3. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration > Configuration de salle > capacity`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Non       |

**Description:** Capacité, en nombre de spectacteurs.

###### <a name="inSeries_items_hasOffer_items_inPlace_address"></a>16.1.12.1.3.9. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > address`

**Nom:** Postal Address

|                               |                                                                        |
| ----------------------------- | ---------------------------------------------------------------------- |
| **Type**                      | `object`                                                               |
| **Requis**                    | Non                                                                    |
| **Propriétés additionnelles** | Tout type permis                                                       |
| **Même définition que**       | [address](#inSeries_items_hasOffer_items_inPlace_inRoom_items_address) |

**Description:** Coordonnées complètes du lieu.

###### <a name="inSeries_items_hasOffer_items_inPlace_mainEntityOfPage"></a>16.1.12.1.3.10. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > mainEntityOfPage`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** URL vers des pages web donnant plus d'information sur le lieu.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                                         | Description |
| ------------------------------------------------------------------------ | ----------- |
| [WebPage](#inSeries_items_hasOffer_items_inPlace_mainEntityOfPage_items) | -           |

###### <a name="inSeries_items_hasOffer_items_inPlace_mainEntityOfPage_items"></a>16.1.12.1.3.10.1. Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > mainEntityOfPage > WebPage

**Nom:** WebPage

|                               |                                    |
| ----------------------------- | ---------------------------------- |
| **Type**                      | `object`                           |
| **Requis**                    | Non                                |
| **Propriétés additionnelles** | Tout type permis                   |
| **Même définition que**       | [WebPage](#mainEntityOfPage_items) |

###### <a name="inSeries_items_hasOffer_items_inPlace_placeAccessibility"></a>16.1.12.1.3.11. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > placeAccessibility`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Caractéristiques d'accessibilité universelle pour le lieu. Des caractéristiques supplémentaires pourraient être documentées pour la ou les salles.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                                        | Description                                                                             |
| ----------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#inSeries_items_hasOffer_items_inPlace_placeAccessibility_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

###### <a name="inSeries_items_hasOffer_items_inPlace_placeAccessibility_items"></a>16.1.12.1.3.11.1. Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > placeAccessibility > Term

**Nom:** Term

|                               |                                                                 |
| ----------------------------- | --------------------------------------------------------------- |
| **Type**                      | `object`                                                        |
| **Requis**                    | Non                                                             |
| **Propriétés additionnelles** | Tout type permis                                                |
| **Même définition que**       | [Term](#hasAdditionalContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

###### <a name="inSeries_items_hasOffer_items_inPlace_geoCoordinates"></a>16.1.12.1.3.12. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > geoCoordinates`

**Nom:** Coordonnées géographiques d'un point.

|                               |                                                           |
| ----------------------------- | --------------------------------------------------------- |
| **Type**                      | `object`                                                  |
| **Requis**                    | Non                                                       |
| **Propriétés additionnelles** | Tout type permis                                          |
| **Défini dans**               | [geoCoordinates](../datatypes/geo_coordinates) |

**Description:** Coordonnées géographiques

| Propriété                                                                       | Description | Type de donnée | Définition |
| ------------------------------------------------------------------------------- | ----------- | -------------- | ---------- |
| + [longitude](#inSeries_items_hasOffer_items_inPlace_geoCoordinates_longitude ) | -           | number         | -          |
| + [latitude](#inSeries_items_hasOffer_items_inPlace_geoCoordinates_latitude )   | -           | number         | -          |

###### <a name="inSeries_items_hasOffer_items_inPlace_geoCoordinates_longitude"></a>16.1.12.1.3.12.1. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > geoCoordinates > longitude`

|            |          |
| ---------- | -------- |
| **Type**   | `number` |
| **Requis** | Oui      |

###### <a name="inSeries_items_hasOffer_items_inPlace_geoCoordinates_latitude"></a>16.1.12.1.3.12.2. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > geoCoordinates > latitude`

|            |          |
| ---------- | -------- |
| **Type**   | `number` |
| **Requis** | Oui      |

###### <a name="inSeries_items_hasOffer_items_inRoom"></a>16.1.12.1.4. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inRoom`

**Nom:** Salle (Room)

|                               |                                                                     |
| ----------------------------- | ------------------------------------------------------------------- |
| **Type**                      | `object`                                                            |
| **Requis**                    | Non                                                                 |
| **Propriétés additionnelles** | Tout type permis                                                    |
| **Même définition que**       | [Salle (Room)](#inSeries_items_hasOffer_items_inPlace_inRoom_items) |

**Description:** Salle associée à l'offre. La salle fait partie du lieu indiqué à la propriété Lieu.

###### <a name="inSeries_items_hasOffer_items_roomConfiguration"></a>16.1.12.1.5. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > roomConfiguration`

**Nom:** Configuration de salle

|                               |                                                                                                       |
| ----------------------------- | ----------------------------------------------------------------------------------------------------- |
| **Type**                      | `object`                                                                                              |
| **Requis**                    | Non                                                                                                   |
| **Propriétés additionnelles** | Tout type permis                                                                                      |
| **Même définition que**       | [Configuration de salle](#inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items) |

**Description:** Configuration de la salle dans le contexte de cette offre.

###### <a name="inSeries_items_hasOffer_items_isSoldout"></a>16.1.12.1.6. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > isSoldout`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Permet d'indiquer si cette offre est complète (toutes les places disponibles sont comblées). Peut-être complété par la propriété Complet depuis pour préciser à quelle date l'offre est devenue complète.

###### <a name="inSeries_items_hasOffer_items_soldoutSince"></a>16.1.12.1.7. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > soldoutSince`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date depuis laquelle l'offre est complète. La propriété Complet doit avoir la valeur vrai pour que Complet depuis puisse être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times

###### <a name="inSeries_items_hasOffer_items_offerStatus"></a>16.1.12.1.8. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > offerStatus`

**Nom:** Statut de l'Offre

|                 |                                                        |
| --------------- | ------------------------------------------------------ |
| **Type**        | `enum (of string)`                                     |
| **Requis**      | Oui                                                    |
| **Défini dans** | [offerStatus](../vocabularies/event_status) |

**Description:** Statut de l'offre. La valeur doit être choisie parmi les valeurs du vocabulaire contrôlé Statut de l'offre.

Doit être un de:
* "EventScheduled"
* "EventCancelled"
* "EventRescheduled"
* "EventPostponed"
* "EventMovedOnline"

###### <a name="inSeries_items_hasOffer_items_price"></a>16.1.12.1.9. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > price`

**Nom:** Montant Monétaire

|                 |                                           |
| --------------- | ----------------------------------------- |
| **Type**        | `string`                                  |
| **Requis**      | Non                                       |
| **Défini dans** | [price](../datatypes/currency) |

**Description:** Prix de départ en dollars canadiens.

| Restrictions                                   |                                                                                                                                                   |
| ---------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Doit correspondre à l'expression régulière** | ```^\d{1,3}(,\d{3})*(\.\d{1,2})?$``` [Test](https://regex101.com/?regex=%5E%5Cd%7B1%2C3%7D%28%2C%5Cd%7B3%7D%29%2A%28%5C.%5Cd%7B1%2C2%7D%29%3F%24) |

###### <a name="inSeries_items_hasOffer_items_isAccessibleForFree"></a>16.1.12.1.10. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > isAccessibleForFree`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Indique que la présente offre est gratuite.

###### <a name="inSeries_items_hasOffer_items_isAccessibleFromAnotherOffer"></a>16.1.12.1.11. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > isAccessibleFromAnotherOffer`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Indique que la présente offre est accessible seulement lorsque le consommateur a souscrit à une autre offre.

###### <a name="inSeries_items_hasOffer_items_preSaleStart"></a>16.1.12.1.12. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > preSaleStart`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date et heure du début de la prévente. Si la propriété n'est pas documentée, la date de début de disponibilité générale doit être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times

###### <a name="inSeries_items_hasOffer_items_generalSaleStart"></a>16.1.12.1.13. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > generalSaleStart`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date et heure du début de la disponibilité générale. Si la propriété n'est pas documentée, il faut considérer que l'offre est disponible en tout temps, jusqu'à la date de début et l'heure de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times

###### <a name="inSeries_items_hasOffer_items_ticketLinkNotAvailable"></a>16.1.12.1.14. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > ticketLinkNotAvailable`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Indication à l'effet qu'il n'existe pas de lien permettant d'obtenir, par le web, un accès à la représentation.

###### <a name="inSeries_items_hasOffer_items_ticketLink"></a>16.1.12.1.15. Propriété `Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > ticketLink`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Non      |
| **Format** | `uri`    |

**Description:** URL d'une page permettant de souscire à l'offre, par exemple un lien vers la page de la plateforme de billetterie.

## <a name="hasOffer"></a>17. Propriété `Représentation (Performance) > hasOffer`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Oui     |

**Description:** Description des différentes modalités pour assister à la représentation. Il peut y avoir des modalités pour le présentiel et/ou le virtuel. Les modalités pour le présentiel et le virtuel doivent être documentées pour un spectacle hybride. Une représentation contient donc au maximum deux offres.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | 1                      |
| **Nombre d'items maximum** | 2                      |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être | Description                                                                                                                       |
| -------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| [Offre (Offer)](#hasOffer_items) | Permet de décrire les propriétés d’une offre associée à une représentation ou une série, par exemple le prix et la disponibilité. |

### <a name="hasOffer_items"></a>17.1. Représentation (Performance) > hasOffer > Offre (Offer)

**Nom:** Offre (Offer)

|                               |                                                 |
| ----------------------------- | ----------------------------------------------- |
| **Type**                      | `object`                                        |
| **Requis**                    | Non                                             |
| **Propriétés additionnelles** | Tout type permis                                |
| **Même définition que**       | [Offre (Offer)](#inSeries_items_hasOffer_items) |

**Description:** Permet de décrire les propriétés d’une offre associée à une représentation ou une série, par exemple le prix et la disponibilité.

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2025-12-16 at 12:20:16 -0500
