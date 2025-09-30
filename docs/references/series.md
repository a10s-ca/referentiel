# Série de représentations (Series)

**Nom:** Série de représentations (Series)

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

**Description:** cette classe permet de regrouper des représentations n’étant pas nécessairement toutes associées à un même spectacle, mais liées entre elles par des éléments de commercialisation ou de modalités d’accès. Un festival est un exemple de série.

| Propriété                                | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | Type de donnée  | Définition                                                                  |
| ---------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------- | --------------------------------------------------------------------------- |
| + [type](#type )                         | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | const           | -                                                                           |
| + [identifier](#identifier )             | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.                                                                                                                                                                                                                                                                                                                                                                            | array           | [identifier](../identifier )                                     |
| + [name](#name )                         | Nom de la série, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels.                                                                                                                                                                                                                                                                                                                                             | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| - [alternateName](#alternateName )       | Élément qui ne fait pas partie du nom, mais qui le complète, sans toutefois relever de la description elle-même.<br /><br />Par exemple, le Festival de musique émergente en Abitibi-Témiscamingue est aussi connu sous son acronyme FME.                                                                                                                                                                                                                                                                    | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| + [description](#description )           | Description de la série.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )   |
| - [shortDescription](#shortDescription ) | Description résumée de la série. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.                                                                                                                                                                                                                                                                                                                                                               | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )   |
| - [media](#media )                       | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé à la série.                                                                                                                                                                                                                                                                                                                                                                                                                  | array           | [Voir les détails](#media )                                                 |
| - [hasContribution](#hasContribution )   | Énumération des contributions spécifiques à la série, et non pas aux représentations. Il s'agit typiquement de contributions de production, d'organisation ou de commandite. Les contributions artistiques seront typiquement associées aux spectacles et aux représentations.<br /><br />Exemple: un commanditaire d'un festival a une contribution à la série.<br /><br />Contre-exemple: un artiste sur scène lors d'un spectacle dans le cadre de la série n'a pas de contribution à la série elle-même. | array           | [Voir les détails](#hasContribution )                                       |
| - [mainEntityOfPage](#mainEntityOfPage ) | Pages web donnant plus d'information sur la série.<br /><br />Pour des besoins plus précis, par exemple des URL de critiques du spectacle, la propriété Médias, qui permet d'inclure des notes d'usage, peut être utilisée.                                                                                                                                                                                                                                                                                  | array           | [Voir les détails](#mainEntityOfPage )                                      |
| + [startDateTime](#startDateTime )       | Date de début de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                                                                                                                                                                                                                                                                                                                            | string          | -                                                                           |
| - [endDateTime](#endDateTime )           | Date de fin de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                                                                                                                                                                                                                                                                                                                              | string          | -                                                                           |
| - [hasOffer](#hasOffer )                 | Description des différentes modalités pour assister à la série. Il peut y avoir des modalités pour le présentiel et/ou le virtuel. Les modalités pour le présentiel et le virtuel doivent être documentées pour une série hybride. Une série contient donc au maximum deux offres.                                                                                                                                                                                                                           | array           | [Voir les détails](#hasOffer )                                              |

## <a name="type"></a>1. Propriété `Série de représentations (Series) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Series"`

## <a name="identifier"></a>2. Propriété `Série de représentations (Series) > identifier`

**Nom:** identifier

|                 |                                        |
| --------------- | -------------------------------------- |
| **Type**        | `array`                                |
| **Requis**      | Oui                                    |
| **Défini dans** | [identifier](../identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

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

### <a name="identifier_items"></a>2.1. Série de représentations (Series) > identifier > identifier items

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `combinaison`    |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Any of(Option)                       |
| ------------------------------------ |
| [item 0](#identifier_items_anyOf_i0) |
| [item 1](#identifier_items_anyOf_i1) |

#### <a name="identifier_items_anyOf_i0"></a>2.1.1. Propriété `Série de représentations (Series) > identifier > identifier items > anyOf > item 0`

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

##### <a name="identifier_items_anyOf_i0_type"></a>2.1.1.1. Propriété `Série de représentations (Series) > identifier > identifier items > anyOf > item 0 > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"PropertyValue"`

##### <a name="identifier_items_anyOf_i0_propertyID"></a>2.1.1.2. Propriété `Série de représentations (Series) > identifier > identifier items > anyOf > item 0 > propertyID`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |

**Description:** Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles.

| Restrictions          |   |
| --------------------- | - |
| **Longueur minimale** | 1 |

##### <a name="identifier_items_anyOf_i0_value"></a>2.1.1.3. Propriété `Série de représentations (Series) > identifier > identifier items > anyOf > item 0 > value`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |

**Description:** L'identifiant lui-même

| Restrictions          |   |
| --------------------- | - |
| **Longueur minimale** | 1 |

#### <a name="identifier_items_anyOf_i1"></a>2.1.2. Propriété `Série de représentations (Series) > identifier > identifier items > anyOf > item 1`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Non      |
| **Format** | `uri`    |

**Description:** Un identifiant URI sous forme de chaîne de caractères.

## <a name="name"></a>3. Propriété `Série de représentations (Series) > name`

**Nom:** Texte court multilingue

|                 |                                                         |
| --------------- | ------------------------------------------------------- |
| **Type**        | `array of object`                                       |
| **Requis**      | Oui                                                     |
| **Défini dans** | [name](../datatypes/text_short_multilingual) |

**Description:** Nom de la série, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Vrai                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être | Description |
| -------------------------------- | ----------- |
| [name items](#name_items)        | -           |

### <a name="name_items"></a>3.1. Série de représentations (Series) > name > name items

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                     | Description                                                                                                                                                | Type de donnée | Définition                                         |
| ----------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [lang](#name_items_lang )   | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). | string         | [Code de langue](../partials/language ) |
| + [value](#name_items_value ) | HTML non-autorisées                                                                                                                                        | string         | [](../partials/no_html )                |

#### <a name="name_items_lang"></a>3.1.1. Propriété `Série de représentations (Series) > name > name items > lang`

**Nom:** Code de langue

|                 |                                         |
| --------------- | --------------------------------------- |
| **Type**        | `string`                                |
| **Requis**      | Oui                                     |
| **Défini dans** | [lang](../partials/language) |

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

#### <a name="name_items_value"></a>3.1.2. Propriété `Série de représentations (Series) > name > name items > value`

**Nom:** Texte court

|                 |                                         |
| --------------- | --------------------------------------- |
| **Type**        | `string`                                |
| **Requis**      | Oui                                     |
| **Défini dans** | [value](../partials/no_html) |

**Description:** HTML non-autorisées

| Restrictions                                   |                                                                                                             |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Longueur minimale**                          | 1                                                                                                           |
| **Longueur maximale**                          | 500                                                                                                         |
| **Doit correspondre à l'expression régulière** | ```^(?!.*<[^>]+>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5E%3E%5D%2B%3E%29.%2A%24) |

## <a name="alternateName"></a>4. Propriété `Série de représentations (Series) > alternateName`

**Nom:** Texte court multilingue

|                         |                   |
| ----------------------- | ----------------- |
| **Type**                | `array of object` |
| **Requis**              | Non               |
| **Même définition que** | [name](#name)     |

**Description:** Élément qui ne fait pas partie du nom, mais qui le complète, sans toutefois relever de la description elle-même.

Par exemple, le Festival de musique émergente en Abitibi-Témiscamingue est aussi connu sous son acronyme FME.

## <a name="description"></a>5. Propriété `Série de représentations (Series) > description`

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

### <a name="description_items"></a>5.1. Série de représentations (Series) > description > description items

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                            | Description                                                                                                                                                | Type de donnée | Définition                                         |
| ------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [lang](#description_items_lang )   | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). | string         | [Code de langue](../partials/language ) |
| + [value](#description_items_value ) | Texte long avec formatage, incluant des paragraphes et des balises HTML autorisées b, i, u, sup et sub.                                                    | string         | [](../partials/authorized_html )        |

#### <a name="description_items_lang"></a>5.1.1. Propriété `Série de représentations (Series) > description > description items > lang`

**Nom:** Code de langue

|                         |                          |
| ----------------------- | ------------------------ |
| **Type**                | `string`                 |
| **Requis**              | Oui                      |
| **Même définition que** | [lang](#name_items_lang) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

#### <a name="description_items_value"></a>5.1.2. Propriété `Série de représentations (Series) > description > description items > value`

**Nom:** Texte long

|                 |                                                 |
| --------------- | ----------------------------------------------- |
| **Type**        | `string`                                        |
| **Requis**      | Oui                                             |
| **Défini dans** | [value](../partials/authorized_html) |

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

## <a name="shortDescription"></a>6. Propriété `Série de représentations (Series) > shortDescription`

**Nom:** Texte long multilingue

|                         |                             |
| ----------------------- | --------------------------- |
| **Type**                | `array of object`           |
| **Requis**              | Non                         |
| **Même définition que** | [description](#description) |

**Description:** Description résumée de la série. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.

## <a name="media"></a>7. Propriété `Série de représentations (Series) > media`

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

| Chaque item du tableau doit être | Description                                                                                          |
| -------------------------------- | ---------------------------------------------------------------------------------------------------- |
| [Média](#media_items)            | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

### <a name="media_items"></a>7.1. Série de représentations (Series) > media > Média

**Nom:** Média

|                               |                              |
| ----------------------------- | ---------------------------- |
| **Type**                      | `object`                     |
| **Requis**                    | Non                          |
| **Propriétés additionnelles** | Tout type permis             |
| **Défini dans**               | [Média](../media) |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

| Propriété                                          | Description                                                                                                                                                                                                                                    | Type de donnée | Définition                                            |
| -------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | ----------------------------------------------------- |
| + [type](#media_items_type )                       | -                                                                                                                                                                                                                                              | const          | -                                                     |
| - [sequenceNumber](#media_items_sequenceNumber )   | Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                       | integer        | -                                                     |
| - [usageNote](#media_items_usageNote )             | Texte libre permettant d'identifier les usages possibles du média (à l'intention des opérateurs des systèmes, pas du grand public, et donc pas pour publication).                                                                              | object         | [](../datatypes/text_short )              |
| + [url](#media_items_url )                         | URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible                                                                                     | string         | -                                                     |
| - [inLanguage](#media_items_inLanguage )           | Langue au format ISO 639-1.                                                                                                                                                                                                                    | object         | [](../datatypes/partials/language )       |
| - [license](#media_items_license )                 | Licence d'utilisation du média. Une valeur vide ou non définie correspond à un média libre de droits. Si des conditions s'appliquent, elles doivent être définies dans cette propriété, ou sur le web à une URL intégrée dans cette propriété. | array          | [Voir les détails](#media_items_license )             |
| - [creditText](#media_items_creditText )           | Crédits associés au média.                                                                                                                                                                                                                     | array          | [Voir les détails](#media_items_creditText )          |
| - [copyrightHolder](#media_items_copyrightHolder ) | Personne ou organisation détenant les droits d'auteur du média.                                                                                                                                                                                | object         | [](../datatypes/text_short_multilingual ) |
| - [description](#media_items_description )         | Description courte (pouvant par exemple servir de «alt description» sur le web).                                                                                                                                                               | array          | [Voir les détails](#media_items_description )         |

#### <a name="media_items_type"></a>7.1.1. Propriété `Série de représentations (Series) > media > Média > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Media"`

#### <a name="media_items_sequenceNumber"></a>7.1.2. Propriété `Série de représentations (Series) > media > Média > sequenceNumber`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Non       |

**Description:** Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).

#### <a name="media_items_usageNote"></a>7.1.3. Propriété `Série de représentations (Series) > media > Média > usageNote`

|                               |                                                  |
| ----------------------------- | ------------------------------------------------ |
| **Type**                      | `object`                                         |
| **Requis**                    | Non                                              |
| **Propriétés additionnelles** | Tout type permis                                 |
| **Défini dans**               | [usageNote](../datatypes/text_short) |

**Description:** Texte libre permettant d'identifier les usages possibles du média (à l'intention des opérateurs des systèmes, pas du grand public, et donc pas pour publication).

#### <a name="media_items_url"></a>7.1.4. Propriété `Série de représentations (Series) > media > Média > url`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |
| **Format** | `uri`    |

**Description:** URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible

#### <a name="media_items_inLanguage"></a>7.1.5. Propriété `Série de représentations (Series) > media > Média > inLanguage`

|                               |                                                          |
| ----------------------------- | -------------------------------------------------------- |
| **Type**                      | `object`                                                 |
| **Requis**                    | Non                                                      |
| **Propriétés additionnelles** | Tout type permis                                         |
| **Défini dans**               | [inLanguage](../datatypes/partials/language) |

**Description:** Langue au format ISO 639-1.

#### <a name="media_items_license"></a>7.1.6. Propriété `Série de représentations (Series) > media > Média > license`

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

| Chaque item du tableau doit être                                  | Description                                                                                                   |
| ----------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| [text_short_multilingual](#media_items_license_items) | 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️ |

##### <a name="media_items_license_items"></a>7.1.6.1. Série de représentations (Series) > media > Média > license > text_short_multilingual

|                               |                                                                               |
| ----------------------------- | ----------------------------------------------------------------------------- |
| **Type**                      | `object`                                                                      |
| **Requis**                    | Non                                                                           |
| **Propriétés additionnelles** | Tout type permis                                                              |
| **Défini dans**               | [media_items_license_items](../datatypes/text_short_multilingual) |

**Description:** 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️

#### <a name="media_items_creditText"></a>7.1.7. Propriété `Série de représentations (Series) > media > Média > creditText`

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

| Chaque item du tableau doit être                                     | Description                                                                                                   |
| -------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| [text_short_multilingual](#media_items_creditText_items) | 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️ |

##### <a name="media_items_creditText_items"></a>7.1.7.1. Série de représentations (Series) > media > Média > creditText > text_short_multilingual

|                               |                                                                                  |
| ----------------------------- | -------------------------------------------------------------------------------- |
| **Type**                      | `object`                                                                         |
| **Requis**                    | Non                                                                              |
| **Propriétés additionnelles** | Tout type permis                                                                 |
| **Défini dans**               | [media_items_creditText_items](../datatypes/text_short_multilingual) |

**Description:** 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️

#### <a name="media_items_copyrightHolder"></a>7.1.8. Propriété `Série de représentations (Series) > media > Média > copyrightHolder`

|                               |                                                                     |
| ----------------------------- | ------------------------------------------------------------------- |
| **Type**                      | `object`                                                            |
| **Requis**                    | Non                                                                 |
| **Propriétés additionnelles** | Tout type permis                                                    |
| **Défini dans**               | [copyrightHolder](../datatypes/text_short_multilingual) |

**Description:** Personne ou organisation détenant les droits d'auteur du média.

#### <a name="media_items_description"></a>7.1.9. Propriété `Série de représentations (Series) > media > Média > description`

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

| Chaque item du tableau doit être                                     | Description                                                                                                   |
| -------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| [text_long_multilingual](#media_items_description_items) | 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️ |

##### <a name="media_items_description_items"></a>7.1.9.1. Série de représentations (Series) > media > Média > description > text_long_multilingual

|                               |                                                                                  |
| ----------------------------- | -------------------------------------------------------------------------------- |
| **Type**                      | `object`                                                                         |
| **Requis**                    | Non                                                                              |
| **Propriétés additionnelles** | Tout type permis                                                                 |
| **Défini dans**               | [media_items_description_items](../datatypes/text_long_multilingual) |

**Description:** 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️

## <a name="hasContribution"></a>8. Propriété `Série de représentations (Series) > hasContribution`

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

| Chaque item du tableau doit être       | Description                                                                                                                                                                 |
| -------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contribution](#hasContribution_items) | Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné. |

### <a name="hasContribution_items"></a>8.1. Série de représentations (Series) > hasContribution > Contribution

**Nom:** Contribution

|                               |                                            |
| ----------------------------- | ------------------------------------------ |
| **Type**                      | `object`                                   |
| **Requis**                    | Non                                        |
| **Propriétés additionnelles** | Tout type permis                           |
| **Défini dans**               | [Contribution](../contribution) |

**Description:** Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

| Propriété                                                      | Description                                                                                                                                                                                                                                                                                                                                                          | Type de donnée | Définition                                                   |
| -------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | ------------------------------------------------------------ |
| + [type](#hasContribution_items_type )                         | -                                                                                                                                                                                                                                                                                                                                                                    | const          | -                                                            |
| + [contributionType](#hasContribution_items_contributionType ) | Identification des types de contribution.                                                                                                                                                                                                                                                                                                                            | array          | [Voir les détails](#hasContribution_items_contributionType ) |
| + [contributeur](#hasContribution_items_contributeur )         | Identification du contributeur                                                                                                                                                                                                                                                                                                                                       | object         | [](../contributor )                              |
| - [sequenceNumber](#hasContribution_items_sequenceNumber )     | Précision sur l'ordre de présentation des contributions (les nombres plus petits correspondent à des contributions qui doivent être présentées en premier).                                                                                                                                                                                                          | integer        | -                                                            |
| - [usageNote](#hasContribution_items_usageNote )               | Note concernant la contribution, à l'intention des exploitants des systèmes d'information (et donc pas du grand public). Il peut s'agir d'une précision sur le type de contribution, qui ne pourrait pas être exprimée à travers la propriété Types. Les informations compilées dans les notes pourraient être utilisées pour améliorer les vocabulaires contrôllés. | object         | [](../datatypes/text_short )                     |

#### <a name="hasContribution_items_type"></a>8.1.1. Propriété `Série de représentations (Series) > hasContribution > Contribution > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Contribution"`

#### <a name="hasContribution_items_contributionType"></a>8.1.2. Propriété `Série de représentations (Series) > hasContribution > Contribution > contributionType`

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

| Chaque item du tableau doit être                      | Description                                                                             |
| ----------------------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#hasContribution_items_contributionType_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

##### <a name="hasContribution_items_contributionType_items"></a>8.1.2.1. Série de représentations (Series) > hasContribution > Contribution > contributionType > Term

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

| Propriété                                                                         | Description                                                                                                                                                                                                                                                                      | Type de donnée | Définition                                            |
| --------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | ----------------------------------------------------- |
| + [type](#hasContribution_items_contributionType_items_type )                     | -                                                                                                                                                                                                                                                                                | const          | -                                                     |
| + [vocabulary](#hasContribution_items_contributionType_items_vocabulary )         | Identification du vocabulaire duquel est tiré le term.<br /><br />Typiquement, cette identification correspond à l'appellation du vocabulaire dont l'usage est le plus fréquent, tout en minuscules, sans accents, et avec les espaces remplacés par des barres de soulignement. | object         | [](../datatypes/text_short )              |
| - [version](#hasContribution_items_contributionType_items_version )               | Version du vocabulaire utilisé, lorsque c'est applicable                                                                                                                                                                                                                         | object         | [](../datatypes/text_short )              |
| + [code](#hasContribution_items_contributionType_items_code )                     | Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.                                                                                                                     | object         | [](../datatypes/text_short )              |
| - [label](#hasContribution_items_contributionType_items_label )                   | Version textuelle du terme tiré du vocabulaire choisi                                                                                                                                                                                                                            | object         | [](../datatypes/text_short_multilingual ) |
| + [sequenceNumber](#hasContribution_items_contributionType_items_sequenceNumber ) | Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                                                         | integer        | -                                                     |

###### <a name="hasContribution_items_contributionType_items_type"></a>8.1.2.1.1. Propriété `Série de représentations (Series) > hasContribution > Contribution > contributionType > Term > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Term"`

###### <a name="hasContribution_items_contributionType_items_vocabulary"></a>8.1.2.1.2. Propriété `Série de représentations (Series) > hasContribution > Contribution > contributionType > Term > vocabulary`

|                               |                                                   |
| ----------------------------- | ------------------------------------------------- |
| **Type**                      | `object`                                          |
| **Requis**                    | Oui                                               |
| **Propriétés additionnelles** | Tout type permis                                  |
| **Défini dans**               | [vocabulary](../datatypes/text_short) |

**Description:** Identification du vocabulaire duquel est tiré le term.

Typiquement, cette identification correspond à l'appellation du vocabulaire dont l'usage est le plus fréquent, tout en minuscules, sans accents, et avec les espaces remplacés par des barres de soulignement.

###### <a name="hasContribution_items_contributionType_items_version"></a>8.1.2.1.3. Propriété `Série de représentations (Series) > hasContribution > Contribution > contributionType > Term > version`

|                               |                                                |
| ----------------------------- | ---------------------------------------------- |
| **Type**                      | `object`                                       |
| **Requis**                    | Non                                            |
| **Propriétés additionnelles** | Tout type permis                               |
| **Défini dans**               | [version](../datatypes/text_short) |

**Description:** Version du vocabulaire utilisé, lorsque c'est applicable

###### <a name="hasContribution_items_contributionType_items_code"></a>8.1.2.1.4. Propriété `Série de représentations (Series) > hasContribution > Contribution > contributionType > Term > code`

|                               |                                             |
| ----------------------------- | ------------------------------------------- |
| **Type**                      | `object`                                    |
| **Requis**                    | Oui                                         |
| **Propriétés additionnelles** | Tout type permis                            |
| **Défini dans**               | [code](../datatypes/text_short) |

**Description:** Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.

###### <a name="hasContribution_items_contributionType_items_label"></a>8.1.2.1.5. Propriété `Série de représentations (Series) > hasContribution > Contribution > contributionType > Term > label`

|                               |                                                           |
| ----------------------------- | --------------------------------------------------------- |
| **Type**                      | `object`                                                  |
| **Requis**                    | Non                                                       |
| **Propriétés additionnelles** | Tout type permis                                          |
| **Défini dans**               | [label](../datatypes/text_short_multilingual) |

**Description:** Version textuelle du terme tiré du vocabulaire choisi

###### <a name="hasContribution_items_contributionType_items_sequenceNumber"></a>8.1.2.1.6. Propriété `Série de représentations (Series) > hasContribution > Contribution > contributionType > Term > sequenceNumber`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Oui       |

**Description:** Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).

#### <a name="hasContribution_items_contributeur"></a>8.1.3. Propriété `Série de représentations (Series) > hasContribution > Contribution > contributeur`

|                               |                                            |
| ----------------------------- | ------------------------------------------ |
| **Type**                      | `object`                                   |
| **Requis**                    | Oui                                        |
| **Propriétés additionnelles** | Tout type permis                           |
| **Défini dans**               | [contributeur](../contributor) |

**Description:** Identification du contributeur

#### <a name="hasContribution_items_sequenceNumber"></a>8.1.4. Propriété `Série de représentations (Series) > hasContribution > Contribution > sequenceNumber`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Non       |

**Description:** Précision sur l'ordre de présentation des contributions (les nombres plus petits correspondent à des contributions qui doivent être présentées en premier).

#### <a name="hasContribution_items_usageNote"></a>8.1.5. Propriété `Série de représentations (Series) > hasContribution > Contribution > usageNote`

|                               |                                                  |
| ----------------------------- | ------------------------------------------------ |
| **Type**                      | `object`                                         |
| **Requis**                    | Non                                              |
| **Propriétés additionnelles** | Tout type permis                                 |
| **Défini dans**               | [usageNote](../datatypes/text_short) |

**Description:** Note concernant la contribution, à l'intention des exploitants des systèmes d'information (et donc pas du grand public). Il peut s'agir d'une précision sur le type de contribution, qui ne pourrait pas être exprimée à travers la propriété Types. Les informations compilées dans les notes pourraient être utilisées pour améliorer les vocabulaires contrôllés.

## <a name="mainEntityOfPage"></a>9. Propriété `Série de représentations (Series) > mainEntityOfPage`

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

| Chaque item du tableau doit être   | Description |
| ---------------------------------- | ----------- |
| [WebPage](#mainEntityOfPage_items) | -           |

### <a name="mainEntityOfPage_items"></a>9.1. Série de représentations (Series) > mainEntityOfPage > WebPage

**Nom:** WebPage

|                               |                                   |
| ----------------------------- | --------------------------------- |
| **Type**                      | `object`                          |
| **Requis**                    | Non                               |
| **Propriétés additionnelles** | Tout type permis                  |
| **Défini dans**               | [WebPage](../web_page) |

| Propriété                                           | Description                                 | Type de donnée | Définition                                      |
| --------------------------------------------------- | ------------------------------------------- | -------------- | ----------------------------------------------- |
| + [type](#mainEntityOfPage_items_type )             | -                                           | const          | -                                               |
| + [url](#mainEntityOfPage_items_url )               | -                                           | string         | -                                               |
| - [inLanguage](#mainEntityOfPage_items_inLanguage ) | Langue de la page Web, au format ISO 639-1. | object         | [](../datatypes/partials/language ) |

#### <a name="mainEntityOfPage_items_type"></a>9.1.1. Propriété `Série de représentations (Series) > mainEntityOfPage > WebPage > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"WebPage"`

#### <a name="mainEntityOfPage_items_url"></a>9.1.2. Propriété `Série de représentations (Series) > mainEntityOfPage > WebPage > url`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |
| **Format** | `uri`    |

#### <a name="mainEntityOfPage_items_inLanguage"></a>9.1.3. Propriété `Série de représentations (Series) > mainEntityOfPage > WebPage > inLanguage`

|                               |                                                          |
| ----------------------------- | -------------------------------------------------------- |
| **Type**                      | `object`                                                 |
| **Requis**                    | Non                                                      |
| **Propriétés additionnelles** | Tout type permis                                         |
| **Défini dans**               | [inLanguage](../datatypes/partials/language) |

**Description:** Langue de la page Web, au format ISO 639-1.

## <a name="startDateTime"></a>10. Propriété `Série de représentations (Series) > startDateTime`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Oui         |
| **Format** | `date-time` |

**Description:** Date de début de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

## <a name="endDateTime"></a>11. Propriété `Série de représentations (Series) > endDateTime`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date de fin de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

## <a name="hasOffer"></a>12. Propriété `Série de représentations (Series) > hasOffer`

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

| Chaque item du tableau doit être | Description                                                                                                                       |
| -------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| [Offre (Offer)](#hasOffer_items) | Permet de décrire les propriétés d’une offre associée à une représentation ou une série, par exemple le prix et la disponibilité. |

### <a name="hasOffer_items"></a>12.1. Série de représentations (Series) > hasOffer > Offre (Offer)

**Nom:** Offre (Offer)

|                               |                                      |
| ----------------------------- | ------------------------------------ |
| **Type**                      | `object`                             |
| **Requis**                    | Non                                  |
| **Propriétés additionnelles** | Tout type permis                     |
| **Défini dans**               | [Offre (Offer)](../offer) |

**Description:** Permet de décrire les propriétés d’une offre associée à une représentation ou une série, par exemple le prix et la disponibilité.

| Propriété                                                                       | Description                                                                                                                                                                                                                                                                                             | Type de donnée | Définition                                                  |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | ----------------------------------------------------------- |
| + [type](#hasOffer_items_type )                                                 | -                                                                                                                                                                                                                                                                                                       | const          | -                                                           |
| + [inPlace](#hasOffer_items_inPlace )                                           | Lieu associé à l'offre (physique ou virtuel).                                                                                                                                                                                                                                                           | object         | [](../place )                                   |
| - [inRoom](#hasOffer_items_inRoom )                                             | Salle associée à l'offre. La salle fait partie du lieu indiqué à la propriété Lieu.                                                                                                                                                                                                                     | object         | [](../room )                                    |
| - [roomConfiguration](#hasOffer_items_roomConfiguration )                       | Configuration de la salle dans le contexte de cette offre.                                                                                                                                                                                                                                              | object         | [Configuration de salle](../room_specification ) |
| + [isSoldout](#hasOffer_items_isSoldout )                                       | Permet d'indiquer si cette offre est complète (toutes les places disponibles sont comblées). Peut-être complété par la propriété Complet depuis pour préciser à quelle date l'offre est devenue complète.                                                                                               | boolean        | -                                                           |
| - [soldoutSince](#hasOffer_items_soldoutSince )                                 | Date depuis laquelle l'offre est complète. La propriété Complet doit avoir la valeur vrai pour que Complet depuis puisse être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times                                                                           | string         | -                                                           |
| + [offerStatus](#hasOffer_items_offerStatus )                                   | Statut de l'offre. La valeur doit être choisie parmi les valeurs du vocabulaire contrôlé Statut de l'offre.                                                                                                                                                                                             | object         | [](../vocabularies/event_status )               |
| - [price](#hasOffer_items_price )                                               | Prix de départ en dollars canadiens.                                                                                                                                                                                                                                                                    | object         | [](../datatypes/currency )                      |
| + [isAccessibleForFree](#hasOffer_items_isAccessibleForFree )                   | Indique que la présente offre est gratuite.                                                                                                                                                                                                                                                             | boolean        | -                                                           |
| + [isAccessibleFromAnotherOffer](#hasOffer_items_isAccessibleFromAnotherOffer ) | Indique que la présente offre est accessible seulement lorsque le consommateur a souscrit à une autre offre.                                                                                                                                                                                            | boolean        | -                                                           |
| - [preSaleStart](#hasOffer_items_preSaleStart )                                 | Date et heure du début de la prévente. Si la propriété n'est pas documentée, la date de début de disponibilité générale doit être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times                                                                       | string         | -                                                           |
| - [generalSaleStart](#hasOffer_items_generalSaleStart )                         | Date et heure du début de la disponibilité générale. Si la propriété n'est pas documentée, il faut considérer que l'offre est disponible en tout temps, jusqu'à la date de début et l'heure de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times | string         | -                                                           |
| + [ticketLinkNotAvailable](#hasOffer_items_ticketLinkNotAvailable )             | Indication à l'effet qu'il n'existe pas de lien permettant d'obtenir, par le web, un accès à la représentation.                                                                                                                                                                                         | boolean        | -                                                           |
| - [ticketLink](#hasOffer_items_ticketLink )                                     | URL d'une page permettant de souscire à l'offre, par exemple un lien vers la page de la plateforme de billetterie.                                                                                                                                                                                      | string         | -                                                           |

#### <a name="autogenerated_heading_2"></a>12.1.1. If (isAccessibleForFree = false)

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

##### <a name="autogenerated_heading_3"></a>12.1.1.1. Les propriétés suivantes sont obligatoires
* ticketLink

#### <a name="hasOffer_items_type"></a>12.1.2. Propriété `Série de représentations (Series) > hasOffer > Offre (Offer) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Offer"`

#### <a name="hasOffer_items_inPlace"></a>12.1.3. Propriété `Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace`

|                               |                                 |
| ----------------------------- | ------------------------------- |
| **Type**                      | `object`                        |
| **Requis**                    | Oui                             |
| **Propriétés additionnelles** | Tout type permis                |
| **Défini dans**               | [inPlace](../place) |

**Description:** Lieu associé à l'offre (physique ou virtuel).

#### <a name="hasOffer_items_inRoom"></a>12.1.4. Propriété `Série de représentations (Series) > hasOffer > Offre (Offer) > inRoom`

|                               |                               |
| ----------------------------- | ----------------------------- |
| **Type**                      | `object`                      |
| **Requis**                    | Non                           |
| **Propriétés additionnelles** | Tout type permis              |
| **Défini dans**               | [inRoom](../room) |

**Description:** Salle associée à l'offre. La salle fait partie du lieu indiqué à la propriété Lieu.

#### <a name="hasOffer_items_roomConfiguration"></a>12.1.5. Propriété `Série de représentations (Series) > hasOffer > Offre (Offer) > roomConfiguration`

**Nom:** Configuration de salle

|                               |                                                       |
| ----------------------------- | ----------------------------------------------------- |
| **Type**                      | `object`                                              |
| **Requis**                    | Non                                                   |
| **Propriétés additionnelles** | Tout type permis                                      |
| **Défini dans**               | [roomConfiguration](../room_specification) |

**Description:** Configuration de la salle dans le contexte de cette offre.

| Propriété                                                 | Description                                                                             | Type de donnée | Définition                  |
| --------------------------------------------------------- | --------------------------------------------------------------------------------------- | -------------- | --------------------------- |
| + [type](#hasOffer_items_roomConfiguration_type )         | -                                                                                       | const          | -                           |
| + [layout](#hasOffer_items_roomConfiguration_layout )     | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. | object         | [Term](../term ) |
| - [capacity](#hasOffer_items_roomConfiguration_capacity ) | Capacité, en nombre de spectacteurs.                                                    | integer        | -                           |

##### <a name="hasOffer_items_roomConfiguration_type"></a>12.1.5.1. Propriété `Série de représentations (Series) > hasOffer > Offre (Offer) > roomConfiguration > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"RoomConfiguration"`

##### <a name="hasOffer_items_roomConfiguration_layout"></a>12.1.5.2. Propriété `Série de représentations (Series) > hasOffer > Offre (Offer) > roomConfiguration > layout`

**Nom:** Term

|                               |                                                       |
| ----------------------------- | ----------------------------------------------------- |
| **Type**                      | `object`                                              |
| **Requis**                    | Oui                                                   |
| **Propriétés additionnelles** | Tout type permis                                      |
| **Même définition que**       | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

##### <a name="hasOffer_items_roomConfiguration_capacity"></a>12.1.5.3. Propriété `Série de représentations (Series) > hasOffer > Offre (Offer) > roomConfiguration > capacity`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Non       |

**Description:** Capacité, en nombre de spectacteurs.

#### <a name="hasOffer_items_isSoldout"></a>12.1.6. Propriété `Série de représentations (Series) > hasOffer > Offre (Offer) > isSoldout`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Permet d'indiquer si cette offre est complète (toutes les places disponibles sont comblées). Peut-être complété par la propriété Complet depuis pour préciser à quelle date l'offre est devenue complète.

#### <a name="hasOffer_items_soldoutSince"></a>12.1.7. Propriété `Série de représentations (Series) > hasOffer > Offre (Offer) > soldoutSince`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date depuis laquelle l'offre est complète. La propriété Complet doit avoir la valeur vrai pour que Complet depuis puisse être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times

#### <a name="hasOffer_items_offerStatus"></a>12.1.8. Propriété `Série de représentations (Series) > hasOffer > Offre (Offer) > offerStatus`

|                               |                                                         |
| ----------------------------- | ------------------------------------------------------- |
| **Type**                      | `object`                                                |
| **Requis**                    | Oui                                                     |
| **Propriétés additionnelles** | Tout type permis                                        |
| **Défini dans**               | [offerStatus](../vocabularies/event_status) |

**Description:** Statut de l'offre. La valeur doit être choisie parmi les valeurs du vocabulaire contrôlé Statut de l'offre.

#### <a name="hasOffer_items_price"></a>12.1.9. Propriété `Série de représentations (Series) > hasOffer > Offre (Offer) > price`

|                               |                                            |
| ----------------------------- | ------------------------------------------ |
| **Type**                      | `object`                                   |
| **Requis**                    | Non                                        |
| **Propriétés additionnelles** | Tout type permis                           |
| **Défini dans**               | [price](../datatypes/currency) |

**Description:** Prix de départ en dollars canadiens.

#### <a name="hasOffer_items_isAccessibleForFree"></a>12.1.10. Propriété `Série de représentations (Series) > hasOffer > Offre (Offer) > isAccessibleForFree`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Indique que la présente offre est gratuite.

#### <a name="hasOffer_items_isAccessibleFromAnotherOffer"></a>12.1.11. Propriété `Série de représentations (Series) > hasOffer > Offre (Offer) > isAccessibleFromAnotherOffer`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Indique que la présente offre est accessible seulement lorsque le consommateur a souscrit à une autre offre.

#### <a name="hasOffer_items_preSaleStart"></a>12.1.12. Propriété `Série de représentations (Series) > hasOffer > Offre (Offer) > preSaleStart`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date et heure du début de la prévente. Si la propriété n'est pas documentée, la date de début de disponibilité générale doit être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times

#### <a name="hasOffer_items_generalSaleStart"></a>12.1.13. Propriété `Série de représentations (Series) > hasOffer > Offre (Offer) > generalSaleStart`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date et heure du début de la disponibilité générale. Si la propriété n'est pas documentée, il faut considérer que l'offre est disponible en tout temps, jusqu'à la date de début et l'heure de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times

#### <a name="hasOffer_items_ticketLinkNotAvailable"></a>12.1.14. Propriété `Série de représentations (Series) > hasOffer > Offre (Offer) > ticketLinkNotAvailable`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Indication à l'effet qu'il n'existe pas de lien permettant d'obtenir, par le web, un accès à la représentation.

#### <a name="hasOffer_items_ticketLink"></a>12.1.15. Propriété `Série de représentations (Series) > hasOffer > Offre (Offer) > ticketLink`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Non      |
| **Format** | `uri`    |

**Description:** URL d'une page permettant de souscire à l'offre, par exemple un lien vers la page de la plateforme de billetterie.

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2025-09-30 at 17:17:56 -0400
