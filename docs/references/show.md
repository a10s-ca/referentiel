# Spectacle (Show)

**Nom:** Spectacle (Show)

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

**Description:** la classe centrale du référentiel. Elle permet de documenter ce qui relève du spectacle au sens d'œuvre mise en scène. Par contraste, cela exclut donc les éléments descriptifs des représentations.

| Propriété                                              | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | Type de donnée  | Définition                                                                  |
| ------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------------------------- |
| + [@context](#@context )                               | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | const           | -                                                                           |
| + [type](#type )                                       | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | const           | -                                                                           |
| + [identifier](#identifier )                           | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | array           | [identifier](../identifier )                                     |
| + [name](#name )                                       | Nom du spectacle                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| - [alternateName](#alternateName )                     | Élément qui ne fait pas partie du nom, mais qui le complète, sans toutefois relever de la description elle-même.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| + [description](#description )                         | Description du spectacle                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )   |
| - [shortDescription](#shortDescription )               | Description résumée du spectacle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )   |
| - [media](#media )                                     | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au spectacle.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | array           | [Voir les détails](#media )                                                 |
| - [hasContribution](#hasContribution )                 | Énumération des contributions. Il peut s'agir de contribution à la création (ex: auteur.trice, metteur.se en scène), de contributions à l'exécution (ex: comédien.en, musicien.ne).<br /><br />Le contributeur peut être une personne ou une organisation.<br /><br />Il s'agit de contributeurs qui sont associés à toutes les représentations du spectacle. Pour les contributions spécifiques à une représentation, utiliser le champ correspondant dans la classe Représentation.<br /><br />Si un même contributeur a plusieurs contributions pour un même spectacle, il est suggéré de répéter plusieurs objets de la classe Contribution.                                                                                                                                                      | array           | [Voir les détails](#hasContribution )                                       |
| - [mainEntityOfPage](#mainEntityOfPage )               | Vers des pages web donnant plus d'information sur le spectacle.<br /><br />Pour des besoins plus précis, par exemple des URL de critiques du spectacle, la propriété Médias, qui permet d'inclure des notes d'usage, peut être utilisée.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | array           | [Voir les détails](#mainEntityOfPage )                                      |
| - [hasRelatedWork](#hasRelatedWork )                   | Énumérations d'oeuvres, de la même discipline ou pas, qui sont associées au spectacle. Il peut s'agir du texte d'une pièce de théâtre, d'un album musical associé à un spectacle, etc. Il doit s'agir d'associations avec des oeuvres qui ne peuvent pas être identifiées aisément à travers d'autres propriétés.<br /><br />Exemple 1: les données d'une pièce de théâtre peuvent pointer vers le texte de la pièce, disponible en librairie.<br /><br />Exemple 2: les données d'un spectacle musical peuvent énumérer des enregistrements des pièces jouées lors du spectacle.<br /><br />Contre exemple: il n'est pas utile que les données d'un spectacle d'humour énumère les autres spectacles du même humoriste, car il est possible d'obtenir cette information à travers les contributeurs. | array           | [Voir les détails](#hasRelatedWork )                                        |
| + [discipline](#discipline )                           | Identification des disciplines artistiques du spectacle.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | array           | [Voir les détails](#discipline )                                            |
| + [audience](#audience )                               | Identification des publics cibles du spectacle.<br /><br />Lorsque le vocabulaire utilisé contient un terme équivalent à « tout public », il est préférable de l'utiliser, que d'énumérer tous les types de publics.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | array           | [Voir les détails](#audience )                                              |
| - [inLanguage](#inLanguage )                           | Langues utilisées dans le spectacle, en ordre décroissant d'importance. La langue principale doit donc être mentionnée en premier.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | array           | [Voir les détails](#inLanguage )                                            |
| - [supportMaterialLanguage](#supportMaterialLanguage ) | Langues pour lesquelles des artéfacts d'aide à la compréhension du spectacle sont disponibles (surtitrage, programmes, traduction simultannée...)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | array           | [Voir les détails](#supportMaterialLanguage )                               |
| + [showWithoutWords](#showWithoutWords )               | Indication à l'effet que le spectacle ne contient pas de paroles.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | boolean         | -                                                                           |
| - [contentType](#contentType )                         | Permet d'identifier certains type de contenus qui sont présents dans le spectacle.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | array           | [Voir les détails](#contentType )                                           |
| - [contentWarning](#contentWarning )                   | Permet d'identifier des avertissements associés au spectacle.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | array           | [Voir les détails](#contentWarning )                                        |
| - [hasPerformance](#hasPerformance )                   | Énumération des représentations du spectacle, qu'elles soient passées ou futures.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | array           | [Voir les détails](#hasPerformance )                                        |

## <a name="autogenerated_heading_2"></a>1. If (showWithoutWords = false)

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

### <a name="autogenerated_heading_3"></a>1.1. Les propriétés suivantes sont obligatoires
* inLanguage

## <a name="@context"></a>2. Propriété `Spectacle (Show) > @context`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"https://datascence.ca/context.jsonld"`

## <a name="type"></a>3. Propriété `Spectacle (Show) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Show"`

## <a name="identifier"></a>4. Propriété `Spectacle (Show) > identifier`

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

### <a name="identifier_items"></a>4.1. Spectacle (Show) > identifier > identifier items

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `combinaison`    |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Any of(Option)                       |
| ------------------------------------ |
| [item 0](#identifier_items_anyOf_i0) |
| [item 1](#identifier_items_anyOf_i1) |

#### <a name="identifier_items_anyOf_i0"></a>4.1.1. Propriété `Spectacle (Show) > identifier > identifier items > anyOf > item 0`

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

##### <a name="identifier_items_anyOf_i0_type"></a>4.1.1.1. Propriété `Spectacle (Show) > identifier > identifier items > anyOf > item 0 > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"PropertyValue"`

##### <a name="identifier_items_anyOf_i0_propertyID"></a>4.1.1.2. Propriété `Spectacle (Show) > identifier > identifier items > anyOf > item 0 > propertyID`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |

**Description:** Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles.

| Restrictions          |   |
| --------------------- | - |
| **Longueur minimale** | 1 |

##### <a name="identifier_items_anyOf_i0_value"></a>4.1.1.3. Propriété `Spectacle (Show) > identifier > identifier items > anyOf > item 0 > value`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |

**Description:** L'identifiant lui-même

| Restrictions          |   |
| --------------------- | - |
| **Longueur minimale** | 1 |

#### <a name="identifier_items_anyOf_i1"></a>4.1.2. Propriété `Spectacle (Show) > identifier > identifier items > anyOf > item 1`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Non      |
| **Format** | `uri`    |

**Description:** Un identifiant URI sous forme de chaîne de caractères.

## <a name="name"></a>5. Propriété `Spectacle (Show) > name`

**Nom:** Texte court multilingue

|                 |                                                         |
| --------------- | ------------------------------------------------------- |
| **Type**        | `array of object`                                       |
| **Requis**      | Oui                                                     |
| **Défini dans** | [name](../datatypes/text_short_multilingual) |

**Description:** Nom du spectacle

**Exemple:**

```json
"Une Carmen pour tout le Québec"
```

**Exemple:**

```json
"Une Carmen pour tout le Québec"
```

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

### <a name="name_items"></a>5.1. Spectacle (Show) > name > name items

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                     | Description                                                                                                                                                | Type de donnée | Définition                                         |
| ----------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [lang](#name_items_lang )   | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). | string         | [Code de langue](../datatypes/partials/language ) |
| + [value](#name_items_value ) | HTML non-autorisées                                                                                                                                        | string         | [](../datatypes/partials/no_html )                |

#### <a name="name_items_lang"></a>5.1.1. Propriété `Spectacle (Show) > name > name items > lang`

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

#### <a name="name_items_value"></a>5.1.2. Propriété `Spectacle (Show) > name > name items > value`

**Nom:** Texte court

|                 |                                         |
| --------------- | --------------------------------------- |
| **Type**        | `string`                                |
| **Requis**      | Oui                                     |
| **Défini dans** | [value](../datatypes/partials/no_html) |

**Description:** HTML non-autorisées

| Restrictions                                   |                                                                                                             |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Longueur minimale**                          | 1                                                                                                           |
| **Longueur maximale**                          | 500                                                                                                         |
| **Doit correspondre à l'expression régulière** | ```^(?!.*<[^>]+>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5E%3E%5D%2B%3E%29.%2A%24) |

## <a name="alternateName"></a>6. Propriété `Spectacle (Show) > alternateName`

**Nom:** Texte court multilingue

|                 |                                                         |
| --------------- | ------------------------------------------------------- |
| **Type**        | `array of object`                                       |
| **Requis**      | Non                                                     |
| **Défini dans** | [name](../datatypes/text_short_multilingual) |

**Description:** Élément qui ne fait pas partie du nom, mais qui le complète, sans toutefois relever de la description elle-même.

**Exemple:**

```json
"Carmen au grand écran"
```

**Exemple:**

```json
"Carmen au grand écran"
```

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

### <a name="name_items"></a>6.1. Spectacle (Show) > name > name items

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                     | Description                                                                                                                                                | Type de donnée | Définition                                         |
| ----------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [lang](#name_items_lang )   | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). | string         | [Code de langue](../datatypes/partials/language ) |
| + [value](#name_items_value ) | HTML non-autorisées                                                                                                                                        | string         | [](../datatypes/partials/no_html )                |

#### <a name="name_items_lang"></a>6.1.1. Propriété `Spectacle (Show) > name > name items > lang`

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

#### <a name="name_items_value"></a>6.1.2. Propriété `Spectacle (Show) > name > name items > value`

**Nom:** Texte court

|                 |                                         |
| --------------- | --------------------------------------- |
| **Type**        | `string`                                |
| **Requis**      | Oui                                     |
| **Défini dans** | [value](../datatypes/partials/no_html) |

**Description:** HTML non-autorisées

| Restrictions                                   |                                                                                                             |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Longueur minimale**                          | 1                                                                                                           |
| **Longueur maximale**                          | 500                                                                                                         |
| **Doit correspondre à l'expression régulière** | ```^(?!.*<[^>]+>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5E%3E%5D%2B%3E%29.%2A%24) |

## <a name="description"></a>7. Propriété `Spectacle (Show) > description`

**Nom:** Texte long multilingue

|                 |                                                               |
| --------------- | ------------------------------------------------------------- |
| **Type**        | `array of object`                                             |
| **Requis**      | Oui                                                           |
| **Défini dans** | [description](../datatypes/text_long_multilingual) |

**Description:** Description du spectacle

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

### <a name="description_items"></a>7.1. Spectacle (Show) > description > description items

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                            | Description                                                                                                                                                | Type de donnée | Définition                                         |
| ------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [lang](#description_items_lang )   | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). | string         | [Code de langue](../datatypes/partials/language ) |
| + [value](#description_items_value ) | Texte long avec formatage, incluant des paragraphes et des balises HTML autorisées b, i, u, sup et sub.                                                    | string         | [](../datatypes/partials/authorized_html )        |

#### <a name="description_items_lang"></a>7.1.1. Propriété `Spectacle (Show) > description > description items > lang`

**Nom:** Code de langue

|                         |                          |
| ----------------------- | ------------------------ |
| **Type**                | `string`                 |
| **Requis**              | Oui                      |
| **Même définition que** | [lang](#name_items_lang) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

#### <a name="description_items_value"></a>7.1.2. Propriété `Spectacle (Show) > description > description items > value`

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

## <a name="shortDescription"></a>8. Propriété `Spectacle (Show) > shortDescription`

**Nom:** Texte long multilingue

|                         |                             |
| ----------------------- | --------------------------- |
| **Type**                | `array of object`           |
| **Requis**              | Non                         |
| **Même définition que** | [description](#description) |

**Description:** Description résumée du spectacle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage.

## <a name="media"></a>9. Propriété `Spectacle (Show) > media`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au spectacle.

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

### <a name="media_items"></a>9.1. Spectacle (Show) > media > Média

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

#### <a name="media_items_type"></a>9.1.1. Propriété `Spectacle (Show) > media > Média > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Media"`

#### <a name="media_items_sequenceNumber"></a>9.1.2. Propriété `Spectacle (Show) > media > Média > sequenceNumber`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Non       |

**Description:** Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).

#### <a name="media_items_usageNote"></a>9.1.3. Propriété `Spectacle (Show) > media > Média > usageNote`

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

#### <a name="media_items_url"></a>9.1.4. Propriété `Spectacle (Show) > media > Média > url`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |
| **Format** | `uri`    |

**Description:** URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible

#### <a name="media_items_inLanguage"></a>9.1.5. Propriété `Spectacle (Show) > media > Média > inLanguage`

**Nom:** Code de langue

|                         |                          |
| ----------------------- | ------------------------ |
| **Type**                | `string`                 |
| **Requis**              | Non                      |
| **Même définition que** | [lang](#name_items_lang) |

**Description:** Langue au format ISO 639-1.

#### <a name="media_items_license"></a>9.1.6. Propriété `Spectacle (Show) > media > Média > license`

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

##### <a name="media_items_license_items"></a>9.1.6.1. Spectacle (Show) > media > Média > license > Texte court multilingue

**Nom:** Texte court multilingue

|                         |                   |
| ----------------------- | ----------------- |
| **Type**                | `array of object` |
| **Requis**              | Non               |
| **Même définition que** | [name](#name)     |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

#### <a name="media_items_creditText"></a>9.1.7. Propriété `Spectacle (Show) > media > Média > creditText`

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

##### <a name="media_items_creditText_items"></a>9.1.7.1. Spectacle (Show) > media > Média > creditText > Texte court multilingue

**Nom:** Texte court multilingue

|                         |                   |
| ----------------------- | ----------------- |
| **Type**                | `array of object` |
| **Requis**              | Non               |
| **Même définition que** | [name](#name)     |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

#### <a name="media_items_copyrightHolder"></a>9.1.8. Propriété `Spectacle (Show) > media > Média > copyrightHolder`

**Nom:** Texte court multilingue

|                         |                   |
| ----------------------- | ----------------- |
| **Type**                | `array of object` |
| **Requis**              | Non               |
| **Même définition que** | [name](#name)     |

**Description:** Personne ou organisation détenant les droits d'auteur du média.

#### <a name="media_items_description"></a>9.1.9. Propriété `Spectacle (Show) > media > Média > description`

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

##### <a name="media_items_description_items"></a>9.1.9.1. Spectacle (Show) > media > Média > description > Texte long multilingue

**Nom:** Texte long multilingue

|                         |                             |
| ----------------------- | --------------------------- |
| **Type**                | `array of object`           |
| **Requis**              | Non                         |
| **Même définition que** | [description](#description) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

## <a name="hasContribution"></a>10. Propriété `Spectacle (Show) > hasContribution`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Énumération des contributions. Il peut s'agir de contribution à la création (ex: auteur.trice, metteur.se en scène), de contributions à l'exécution (ex: comédien.en, musicien.ne).

Le contributeur peut être une personne ou une organisation.

Il s'agit de contributeurs qui sont associés à toutes les représentations du spectacle. Pour les contributions spécifiques à une représentation, utiliser le champ correspondant dans la classe Représentation.

Si un même contributeur a plusieurs contributions pour un même spectacle, il est suggéré de répéter plusieurs objets de la classe Contribution.

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

### <a name="hasContribution_items"></a>10.1. Spectacle (Show) > hasContribution > Contribution

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
| + [contributeur](#hasContribution_items_contributeur )         | Identification du contributeur                                                                                                                                                                                                                                                                                                                                       | object         | [Contributor](../contributor )                    |
| - [sequenceNumber](#hasContribution_items_sequenceNumber )     | Précision sur l'ordre de présentation des contributions (les nombres plus petits correspondent à des contributions qui doivent être présentées en premier).                                                                                                                                                                                                          | integer        | -                                                            |
| - [usageNote](#hasContribution_items_usageNote )               | Note concernant la contribution, à l'intention des exploitants des systèmes d'information (et donc pas du grand public). Il peut s'agir d'une précision sur le type de contribution, qui ne pourrait pas être exprimée à travers la propriété Types. Les informations compilées dans les notes pourraient être utilisées pour améliorer les vocabulaires contrôllés. | string         | [Texte court](../datatypes/text_short )           |

#### <a name="hasContribution_items_type"></a>10.1.1. Propriété `Spectacle (Show) > hasContribution > Contribution > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Contribution"`

#### <a name="hasContribution_items_contributionType"></a>10.1.2. Propriété `Spectacle (Show) > hasContribution > Contribution > contributionType`

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

##### <a name="hasContribution_items_contributionType_items"></a>10.1.2.1. Spectacle (Show) > hasContribution > Contribution > contributionType > Term

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

| Propriété                                                                         | Description                                                                                                                                                                                                                                                                      | Type de donnée  | Définition                                                                  |
| --------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------------------------- |
| + [type](#hasContribution_items_contributionType_items_type )                     | -                                                                                                                                                                                                                                                                                | const           | -                                                                           |
| + [vocabulary](#hasContribution_items_contributionType_items_vocabulary )         | Identification du vocabulaire duquel est tiré le term.<br /><br />Typiquement, cette identification correspond à l'appellation du vocabulaire dont l'usage est le plus fréquent, tout en minuscules, sans accents, et avec les espaces remplacés par des barres de soulignement. | string          | [Texte court](../datatypes/text_short )                          |
| - [version](#hasContribution_items_contributionType_items_version )               | Version du vocabulaire utilisé, lorsque c'est applicable                                                                                                                                                                                                                         | string          | [Texte court](../datatypes/text_short )                          |
| + [code](#hasContribution_items_contributionType_items_code )                     | Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.                                                                                                                     | string          | [Texte court](../datatypes/text_short )                          |
| - [label](#hasContribution_items_contributionType_items_label )                   | Version textuelle du terme tiré du vocabulaire choisi                                                                                                                                                                                                                            | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| + [sequenceNumber](#hasContribution_items_contributionType_items_sequenceNumber ) | Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                                                         | integer         | -                                                                           |

###### <a name="hasContribution_items_contributionType_items_type"></a>10.1.2.1.1. Propriété `Spectacle (Show) > hasContribution > Contribution > contributionType > Term > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Term"`

###### <a name="hasContribution_items_contributionType_items_vocabulary"></a>10.1.2.1.2. Propriété `Spectacle (Show) > hasContribution > Contribution > contributionType > Term > vocabulary`

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

###### <a name="hasContribution_items_contributionType_items_version"></a>10.1.2.1.3. Propriété `Spectacle (Show) > hasContribution > Contribution > contributionType > Term > version`

**Nom:** Texte court

|                         |                                     |
| ----------------------- | ----------------------------------- |
| **Type**                | `string`                            |
| **Requis**              | Non                                 |
| **Même définition que** | [usageNote](#media_items_usageNote) |

**Description:** Version du vocabulaire utilisé, lorsque c'est applicable

###### <a name="hasContribution_items_contributionType_items_code"></a>10.1.2.1.4. Propriété `Spectacle (Show) > hasContribution > Contribution > contributionType > Term > code`

**Nom:** Texte court

|                         |                                     |
| ----------------------- | ----------------------------------- |
| **Type**                | `string`                            |
| **Requis**              | Oui                                 |
| **Même définition que** | [usageNote](#media_items_usageNote) |

**Description:** Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.

###### <a name="hasContribution_items_contributionType_items_label"></a>10.1.2.1.5. Propriété `Spectacle (Show) > hasContribution > Contribution > contributionType > Term > label`

**Nom:** Texte court multilingue

|                         |                   |
| ----------------------- | ----------------- |
| **Type**                | `array of object` |
| **Requis**              | Non               |
| **Même définition que** | [name](#name)     |

**Description:** Version textuelle du terme tiré du vocabulaire choisi

###### <a name="hasContribution_items_contributionType_items_sequenceNumber"></a>10.1.2.1.6. Propriété `Spectacle (Show) > hasContribution > Contribution > contributionType > Term > sequenceNumber`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Oui       |

**Description:** Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).

#### <a name="hasContribution_items_contributeur"></a>10.1.3. Propriété `Spectacle (Show) > hasContribution > Contribution > contributeur`

**Nom:** Contributor

|                               |                                           |
| ----------------------------- | ----------------------------------------- |
| **Type**                      | `object`                                  |
| **Requis**                    | Oui                                       |
| **Propriétés additionnelles** | Tout type permis                          |
| **Défini dans**               | [contributeur](../contributor) |

**Description:** Identification du contributeur

| Propriété                                                                                 | Description                                                                                                                                                                                                                                                                                                                                                                                                                                 | Type de donnée   | Définition                                                                       |
| ----------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- | -------------------------------------------------------------------------------- |
| + [type](#hasContribution_items_contributeur_type )                                       | -                                                                                                                                                                                                                                                                                                                                                                                                                                           | const            | -                                                                                |
| + [contributorType](#hasContribution_items_contributeur_contributorType )                 | Indication à l'effet qu'il s'agit d'une personne physique ou d'une personne morale.                                                                                                                                                                                                                                                                                                                                                         | enum (of string) | [Type de contributeur](../vocabularies/contributor_type )             |
| + [identifier](#hasContribution_items_contributeur_identifier )                           | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.                                                                                                                                                                                                                                                                                                           | array            | [identifier](../identifier )                                          |
| + [name](#hasContribution_items_contributeur_name )                                       | Nom complet du contributeur, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. Le prénom et le nom de sont pas traités dans des propriétés distinctes à cause de la diversité des appellations de contributions, qui sont parfois des personnes morales.<br /><br />Exemples: Michel Rivard, Les Trois Accords, Koriass, Desjardins, Spectra. | array of object  | [Texte court multilingue](../datatypes/text_short_multilingual )      |
| - [alternateName](#hasContribution_items_contributeur_alternateName )                     | Autres appellations parfois utilisées pour le contributeur.<br /><br />Exemple: «Béatrice Martin» comme nom alternatif de «Cœur de pirate».<br />Exemple: «Compagnie Jean-Duceppe» comme nom alternatif de «Duceppe».                                                                                                                                                                                                                       | array            | [Voir les détails](#hasContribution_items_contributeur_alternateName )           |
| - [description](#hasContribution_items_contributeur_description )                         | Énumération de textes longs associés à un code de langue au standard ISO 639-1.                                                                                                                                                                                                                                                                                                                                                             | array of object  | [Texte long multilingue](../datatypes/text_long_multilingual )        |
| - [shortDescription](#hasContribution_items_contributeur_shortDescription )               | Description résumée du contributeur. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage.                                                                                                                                                                                                                                                                                                            | array of object  | [Texte long multilingue](../datatypes/text_long_multilingual )        |
| - [media](#hasContribution_items_contributeur_media )                                     | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au contributeur.                                                                                                                                                                                                                                                                                                                                            | array            | [Voir les détails](#hasContribution_items_contributeur_media )                   |
| - [typicalContributionType](#hasContribution_items_contributeur_typicalContributionType ) | Énumération des types de contributions habituellement faites par le contributeur.                                                                                                                                                                                                                                                                                                                                                           | array            | [Voir les détails](#hasContribution_items_contributeur_typicalContributionType ) |
| - [hasGeographicRelation](#hasContribution_items_contributeur_hasGeographicRelation )     | Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.                                                                                                                                                                                                                                                                                                        | array            | [Voir les détails](#hasContribution_items_contributeur_hasGeographicRelation )   |
| - [hasMembers](#hasContribution_items_contributeur_hasMembers )                           | Énumération des membres des groupes, troupes et collectifs, etc.                                                                                                                                                                                                                                                                                                                                                                            | array            | [Voir les détails](#hasContribution_items_contributeur_hasMembers )              |

##### <a name="hasContribution_items_contributeur_type"></a>10.1.3.1. Propriété `Spectacle (Show) > hasContribution > Contribution > contributeur > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Contributor"`

##### <a name="hasContribution_items_contributeur_contributorType"></a>10.1.3.2. Propriété `Spectacle (Show) > hasContribution > Contribution > contributeur > contributorType`

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

##### <a name="hasContribution_items_contributeur_identifier"></a>10.1.3.3. Propriété `Spectacle (Show) > hasContribution > Contribution > contributeur > identifier`

**Nom:** identifier

|                         |                           |
| ----------------------- | ------------------------- |
| **Type**                | `array`                   |
| **Requis**              | Oui                       |
| **Même définition que** | [identifier](#identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

##### <a name="hasContribution_items_contributeur_name"></a>10.1.3.4. Propriété `Spectacle (Show) > hasContribution > Contribution > contributeur > name`

**Nom:** Texte court multilingue

|                         |                   |
| ----------------------- | ----------------- |
| **Type**                | `array of object` |
| **Requis**              | Oui               |
| **Même définition que** | [name](#name)     |

**Description:** Nom complet du contributeur, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. Le prénom et le nom de sont pas traités dans des propriétés distinctes à cause de la diversité des appellations de contributions, qui sont parfois des personnes morales.

Exemples: Michel Rivard, Les Trois Accords, Koriass, Desjardins, Spectra.

##### <a name="hasContribution_items_contributeur_alternateName"></a>10.1.3.5. Propriété `Spectacle (Show) > hasContribution > Contribution > contributeur > alternateName`

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

| Chaque item du tableau doit être                                                   | Description                                                                                 |
| ---------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#hasContribution_items_contributeur_alternateName_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

###### <a name="hasContribution_items_contributeur_alternateName_items"></a>10.1.3.5.1. Spectacle (Show) > hasContribution > Contribution > contributeur > alternateName > Texte court multilingue

**Nom:** Texte court multilingue

|                         |                   |
| ----------------------- | ----------------- |
| **Type**                | `array of object` |
| **Requis**              | Non               |
| **Même définition que** | [name](#name)     |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

##### <a name="hasContribution_items_contributeur_description"></a>10.1.3.6. Propriété `Spectacle (Show) > hasContribution > Contribution > contributeur > description`

**Nom:** Texte long multilingue

|                         |                             |
| ----------------------- | --------------------------- |
| **Type**                | `array of object`           |
| **Requis**              | Non                         |
| **Même définition que** | [description](#description) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

##### <a name="hasContribution_items_contributeur_shortDescription"></a>10.1.3.7. Propriété `Spectacle (Show) > hasContribution > Contribution > contributeur > shortDescription`

**Nom:** Texte long multilingue

|                         |                             |
| ----------------------- | --------------------------- |
| **Type**                | `array of object`           |
| **Requis**              | Non                         |
| **Même définition que** | [description](#description) |

**Description:** Description résumée du contributeur. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage.

##### <a name="hasContribution_items_contributeur_media"></a>10.1.3.8. Propriété `Spectacle (Show) > hasContribution > Contribution > contributeur > media`

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

| Chaque item du tableau doit être                         | Description                                                                                          |
| -------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| [Média](#hasContribution_items_contributeur_media_items) | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

###### <a name="hasContribution_items_contributeur_media_items"></a>10.1.3.8.1. Spectacle (Show) > hasContribution > Contribution > contributeur > media > Média

**Nom:** Média

|                               |                       |
| ----------------------------- | --------------------- |
| **Type**                      | `object`              |
| **Requis**                    | Non                   |
| **Propriétés additionnelles** | Tout type permis      |
| **Même définition que**       | [Média](#media_items) |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

##### <a name="hasContribution_items_contributeur_typicalContributionType"></a>10.1.3.9. Propriété `Spectacle (Show) > hasContribution > Contribution > contributeur > typicalContributionType`

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

| Chaque item du tableau doit être                                          | Description                                                                             |
| ------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#hasContribution_items_contributeur_typicalContributionType_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

###### <a name="hasContribution_items_contributeur_typicalContributionType_items"></a>10.1.3.9.1. Spectacle (Show) > hasContribution > Contribution > contributeur > typicalContributionType > Term

**Nom:** Term

|                               |                                                       |
| ----------------------------- | ----------------------------------------------------- |
| **Type**                      | `object`                                              |
| **Requis**                    | Non                                                   |
| **Propriétés additionnelles** | Tout type permis                                      |
| **Même définition que**       | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

##### <a name="hasContribution_items_contributeur_hasGeographicRelation"></a>10.1.3.10. Propriété `Spectacle (Show) > hasContribution > Contribution > contributeur > hasGeographicRelation`

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

| Chaque item du tableau doit être                                                                                 | Description                                                                                                                          |
| ---------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| [Association Géographique (GeographicRelation)](#hasContribution_items_contributeur_hasGeographicRelation_items) | Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc. |

###### <a name="hasContribution_items_contributeur_hasGeographicRelation_items"></a>10.1.3.10.1. Spectacle (Show) > hasContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation)

**Nom:** Association Géographique (GeographicRelation)

|                               |                                                                                    |
| ----------------------------- | ---------------------------------------------------------------------------------- |
| **Type**                      | `object`                                                                           |
| **Requis**                    | Non                                                                                |
| **Propriétés additionnelles** | Pas permis                                                                         |
| **Défini dans**               | [Association Géographique (GeographicRelation)](../geographic_relation) |

**Description:** Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.

| Propriété                                                                                             | Description                                                                                             | Type de donnée | Définition                                         |
| ----------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [type](#hasContribution_items_contributeur_hasGeographicRelation_items_type )                       | -                                                                                                       | const          | -                                                  |
| - [relationType](#hasContribution_items_contributeur_hasGeographicRelation_items_relationType )       | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.                 | object         | [Term](term )                          |
| - [addressCountry](#hasContribution_items_contributeur_hasGeographicRelation_items_addressCountry )   | Code ISO 3166-1 alpha-3 à 3 caractères représentant un pays.                                            | string         | [Code Pays](../datatypes/country_code ) |
| - [addressRegion](#hasContribution_items_contributeur_hasGeographicRelation_items_addressRegion )     | Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne) | string         | [Texte court](../datatypes/text_short ) |
| - [addressLocality](#hasContribution_items_contributeur_hasGeographicRelation_items_addressLocality ) | Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne) | string         | [Texte court](../datatypes/text_short ) |

###### <a name="hasContribution_items_contributeur_hasGeographicRelation_items_type"></a>10.1.3.10.1.1. Propriété `Spectacle (Show) > hasContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"GeographicRelation"`

###### <a name="hasContribution_items_contributeur_hasGeographicRelation_items_relationType"></a>10.1.3.10.1.2. Propriété `Spectacle (Show) > hasContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > relationType`

**Nom:** Term

|                               |                                                       |
| ----------------------------- | ----------------------------------------------------- |
| **Type**                      | `object`                                              |
| **Requis**                    | Non                                                   |
| **Propriétés additionnelles** | Tout type permis                                      |
| **Même définition que**       | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

###### <a name="hasContribution_items_contributeur_hasGeographicRelation_items_addressCountry"></a>10.1.3.10.1.3. Propriété `Spectacle (Show) > hasContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > addressCountry`

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

###### <a name="hasContribution_items_contributeur_hasGeographicRelation_items_addressRegion"></a>10.1.3.10.1.4. Propriété `Spectacle (Show) > hasContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > addressRegion`

**Nom:** Texte court

|                         |                                     |
| ----------------------- | ----------------------------------- |
| **Type**                | `string`                            |
| **Requis**              | Non                                 |
| **Même définition que** | [usageNote](#media_items_usageNote) |

**Description:** Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne)

###### <a name="hasContribution_items_contributeur_hasGeographicRelation_items_addressLocality"></a>10.1.3.10.1.5. Propriété `Spectacle (Show) > hasContribution > Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > addressLocality`

**Nom:** Texte court

|                         |                                     |
| ----------------------- | ----------------------------------- |
| **Type**                | `string`                            |
| **Requis**              | Non                                 |
| **Même définition que** | [usageNote](#media_items_usageNote) |

**Description:** Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne)

##### <a name="hasContribution_items_contributeur_hasMembers"></a>10.1.3.11. Propriété `Spectacle (Show) > hasContribution > Contribution > contributeur > hasMembers`

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

| Chaque item du tableau doit être                                    | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contributor](#hasContribution_items_contributeur_hasMembers_items) | les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre). |

###### <a name="hasContribution_items_contributeur_hasMembers_items"></a>10.1.3.11.1. Spectacle (Show) > hasContribution > Contribution > contributeur > hasMembers > Contributor

**Nom:** Contributor

|                               |                                                     |
| ----------------------------- | --------------------------------------------------- |
| **Type**                      | `object`                                            |
| **Requis**                    | Non                                                 |
| **Propriétés additionnelles** | Tout type permis                                    |
| **Même définition que**       | [contributeur](#hasContribution_items_contributeur) |

**Description:** les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre).

#### <a name="hasContribution_items_sequenceNumber"></a>10.1.4. Propriété `Spectacle (Show) > hasContribution > Contribution > sequenceNumber`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Non       |

**Description:** Précision sur l'ordre de présentation des contributions (les nombres plus petits correspondent à des contributions qui doivent être présentées en premier).

#### <a name="hasContribution_items_usageNote"></a>10.1.5. Propriété `Spectacle (Show) > hasContribution > Contribution > usageNote`

**Nom:** Texte court

|                         |                                     |
| ----------------------- | ----------------------------------- |
| **Type**                | `string`                            |
| **Requis**              | Non                                 |
| **Même définition que** | [usageNote](#media_items_usageNote) |

**Description:** Note concernant la contribution, à l'intention des exploitants des systèmes d'information (et donc pas du grand public). Il peut s'agir d'une précision sur le type de contribution, qui ne pourrait pas être exprimée à travers la propriété Types. Les informations compilées dans les notes pourraient être utilisées pour améliorer les vocabulaires contrôllés.

## <a name="mainEntityOfPage"></a>11. Propriété `Spectacle (Show) > mainEntityOfPage`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Vers des pages web donnant plus d'information sur le spectacle.

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

### <a name="mainEntityOfPage_items"></a>11.1. Spectacle (Show) > mainEntityOfPage > WebPage

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

#### <a name="mainEntityOfPage_items_type"></a>11.1.1. Propriété `Spectacle (Show) > mainEntityOfPage > WebPage > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"WebPage"`

#### <a name="mainEntityOfPage_items_url"></a>11.1.2. Propriété `Spectacle (Show) > mainEntityOfPage > WebPage > url`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |
| **Format** | `uri`    |

#### <a name="mainEntityOfPage_items_inLanguage"></a>11.1.3. Propriété `Spectacle (Show) > mainEntityOfPage > WebPage > inLanguage`

**Nom:** Code de langue

|                         |                          |
| ----------------------- | ------------------------ |
| **Type**                | `string`                 |
| **Requis**              | Non                      |
| **Même définition que** | [lang](#name_items_lang) |

**Description:** Langue de la page Web, au format ISO 639-1.

## <a name="hasRelatedWork"></a>12. Propriété `Spectacle (Show) > hasRelatedWork`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Énumérations d'oeuvres, de la même discipline ou pas, qui sont associées au spectacle. Il peut s'agir du texte d'une pièce de théâtre, d'un album musical associé à un spectacle, etc. Il doit s'agir d'associations avec des oeuvres qui ne peuvent pas être identifiées aisément à travers d'autres propriétés.

Exemple 1: les données d'une pièce de théâtre peuvent pointer vers le texte de la pièce, disponible en librairie.

Exemple 2: les données d'un spectacle musical peuvent énumérer des enregistrements des pièces jouées lors du spectacle.

Contre exemple: il n'est pas utile que les données d'un spectacle d'humour énumère les autres spectacles du même humoriste, car il est possible d'obtenir cette information à travers les contributeurs.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être         | Description                        |
| ---------------------------------------- | ---------------------------------- |
| [Oeuvre Associée](#hasRelatedWork_items) | Objets d'association à une oeuvre. |

### <a name="hasRelatedWork_items"></a>12.1. Spectacle (Show) > hasRelatedWork > Oeuvre Associée

**Nom:** Oeuvre Associée

|                               |                                               |
| ----------------------------- | --------------------------------------------- |
| **Type**                      | `object`                                      |
| **Requis**                    | Non                                           |
| **Propriétés additionnelles** | Tout type permis                              |
| **Défini dans**               | [Oeuvre Associée](#/definitions/WorkRelation) |

**Description:** Objets d'association à une oeuvre.

| Propriété                                       | Description                                      | Type de donnée  | Définition                                                                  |
| ----------------------------------------------- | ------------------------------------------------ | --------------- | --------------------------------------------------------------------------- |
| + [type](#hasRelatedWork_items_type )           | -                                                | const           | -                                                                           |
| + [work](#hasRelatedWork_items_work )           | Identification de l'oeuvre.                      | object          | [Oeuvre (Work)](../work )                                        |
| - [usageNote](#hasRelatedWork_items_usageNote ) | Notes sur le lien entre l'oeuvre et le spectacle | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |

#### <a name="hasRelatedWork_items_type"></a>12.1.1. Propriété `Spectacle (Show) > hasRelatedWork > Oeuvre Associée > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"WorkRelation"`

#### <a name="hasRelatedWork_items_work"></a>12.1.2. Propriété `Spectacle (Show) > hasRelatedWork > Oeuvre Associée > work`

**Nom:** Oeuvre (Work)

|                               |                            |
| ----------------------------- | -------------------------- |
| **Type**                      | `object`                   |
| **Requis**                    | Oui                        |
| **Propriétés additionnelles** | Tout type permis           |
| **Défini dans**               | [work](../work) |

**Description:** Identification de l'oeuvre.

| Propriété                                              | Description                                                                                                                       | Type de donnée  | Définition                                                                  |
| ------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------------------------- |
| + [type](#hasRelatedWork_items_work_type )             | -                                                                                                                                 | const           | -                                                                           |
| + [identifier](#hasRelatedWork_items_work_identifier ) | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois. | array           | [identifier](../identifier )                                     |
| + [name](#hasRelatedWork_items_work_name )             | Nom de l'oeuvre.                                                                                                                  | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |

##### <a name="hasRelatedWork_items_work_type"></a>12.1.2.1. Propriété `Spectacle (Show) > hasRelatedWork > Oeuvre Associée > work > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Work"`

##### <a name="hasRelatedWork_items_work_identifier"></a>12.1.2.2. Propriété `Spectacle (Show) > hasRelatedWork > Oeuvre Associée > work > identifier`

**Nom:** identifier

|                         |                           |
| ----------------------- | ------------------------- |
| **Type**                | `array`                   |
| **Requis**              | Oui                       |
| **Même définition que** | [identifier](#identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

##### <a name="hasRelatedWork_items_work_name"></a>12.1.2.3. Propriété `Spectacle (Show) > hasRelatedWork > Oeuvre Associée > work > name`

**Nom:** Texte court multilingue

|                         |                   |
| ----------------------- | ----------------- |
| **Type**                | `array of object` |
| **Requis**              | Oui               |
| **Même définition que** | [name](#name)     |

**Description:** Nom de l'oeuvre.

#### <a name="hasRelatedWork_items_usageNote"></a>12.1.3. Propriété `Spectacle (Show) > hasRelatedWork > Oeuvre Associée > usageNote`

**Nom:** Texte court multilingue

|                         |                   |
| ----------------------- | ----------------- |
| **Type**                | `array of object` |
| **Requis**              | Non               |
| **Même définition que** | [name](#name)     |

**Description:** Notes sur le lien entre l'oeuvre et le spectacle

## <a name="discipline"></a>13. Propriété `Spectacle (Show) > discipline`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Oui     |

**Description:** Identification des disciplines artistiques du spectacle.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être | Description                                                                             |
| -------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#discipline_items)        | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="discipline_items"></a>13.1. Spectacle (Show) > discipline > Term

**Nom:** Term

|                               |                                                       |
| ----------------------------- | ----------------------------------------------------- |
| **Type**                      | `object`                                              |
| **Requis**                    | Non                                                   |
| **Propriétés additionnelles** | Tout type permis                                      |
| **Même définition que**       | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

## <a name="audience"></a>14. Propriété `Spectacle (Show) > audience`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Oui     |

**Description:** Identification des publics cibles du spectacle.

Lorsque le vocabulaire utilisé contient un terme équivalent à « tout public », il est préférable de l'utiliser, que d'énumérer tous les types de publics.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être | Description                                                                             |
| -------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#audience_items)          | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="audience_items"></a>14.1. Spectacle (Show) > audience > Term

**Nom:** Term

|                               |                                                       |
| ----------------------------- | ----------------------------------------------------- |
| **Type**                      | `object`                                              |
| **Requis**                    | Non                                                   |
| **Propriétés additionnelles** | Tout type permis                                      |
| **Même définition que**       | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

## <a name="inLanguage"></a>15. Propriété `Spectacle (Show) > inLanguage`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Langues utilisées dans le spectacle, en ordre décroissant d'importance. La langue principale doit donc être mentionnée en premier.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être    | Description                                                                                                                                                |
| ----------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Code de langue](#inLanguage_items) | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). |

### <a name="inLanguage_items"></a>15.1. Spectacle (Show) > inLanguage > Code de langue

**Nom:** Code de langue

|                         |                          |
| ----------------------- | ------------------------ |
| **Type**                | `string`                 |
| **Requis**              | Non                      |
| **Même définition que** | [lang](#name_items_lang) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

## <a name="supportMaterialLanguage"></a>16. Propriété `Spectacle (Show) > supportMaterialLanguage`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Langues pour lesquelles des artéfacts d'aide à la compréhension du spectacle sont disponibles (surtitrage, programmes, traduction simultannée...)

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                 | Description                                                                                                                                                |
| ------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Code de langue](#supportMaterialLanguage_items) | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). |

### <a name="supportMaterialLanguage_items"></a>16.1. Spectacle (Show) > supportMaterialLanguage > Code de langue

**Nom:** Code de langue

|                         |                          |
| ----------------------- | ------------------------ |
| **Type**                | `string`                 |
| **Requis**              | Non                      |
| **Même définition que** | [lang](#name_items_lang) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

## <a name="showWithoutWords"></a>17. Propriété `Spectacle (Show) > showWithoutWords`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Indication à l'effet que le spectacle ne contient pas de paroles.

## <a name="contentType"></a>18. Propriété `Spectacle (Show) > contentType`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Permet d'identifier certains type de contenus qui sont présents dans le spectacle.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être | Description                                                                             |
| -------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#contentType_items)       | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="contentType_items"></a>18.1. Spectacle (Show) > contentType > Term

**Nom:** Term

|                               |                                                       |
| ----------------------------- | ----------------------------------------------------- |
| **Type**                      | `object`                                              |
| **Requis**                    | Non                                                   |
| **Propriétés additionnelles** | Tout type permis                                      |
| **Même définition que**       | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

## <a name="contentWarning"></a>19. Propriété `Spectacle (Show) > contentWarning`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Permet d'identifier des avertissements associés au spectacle.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être | Description                                                                             |
| -------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#contentWarning_items)    | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="contentWarning_items"></a>19.1. Spectacle (Show) > contentWarning > Term

**Nom:** Term

|                               |                                                       |
| ----------------------------- | ----------------------------------------------------- |
| **Type**                      | `object`                                              |
| **Requis**                    | Non                                                   |
| **Propriétés additionnelles** | Tout type permis                                      |
| **Même définition que**       | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

## <a name="hasPerformance"></a>20. Propriété `Spectacle (Show) > hasPerformance`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Énumération des représentations du spectacle, qu'elles soient passées ou futures.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                      | Description                                                                                                                                                                                                    |
| ----------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Représentation (Performance)](#hasPerformance_items) | Décrit une représentation, qui est un événement unique associé à un lieu, une date et une heure, et qui peut inclure des informations sur les artistes, les œuvres présentées, et d'autres détails pertinents. |

### <a name="hasPerformance_items"></a>20.1. Spectacle (Show) > hasPerformance > Représentation (Performance)

**Nom:** Représentation (Performance)

|                               |                                                           |
| ----------------------------- | --------------------------------------------------------- |
| **Type**                      | `object`                                                  |
| **Requis**                    | Non                                                       |
| **Propriétés additionnelles** | Tout type permis                                          |
| **Défini dans**               | [Représentation (Performance)](../performance) |

**Description:** Décrit une représentation, qui est un événement unique associé à un lieu, une date et une heure, et qui peut inclure des informations sur les artistes, les œuvres présentées, et d'autres détails pertinents.

| Propriété                                                                       | Description                                                                                                                                                                                                                                                                                             | Type de donnée  | Définition                                                                  |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------------------------- |
| + [type](#hasPerformance_items_type )                                           | -                                                                                                                                                                                                                                                                                                       | const           | -                                                                           |
| + [identifier](#hasPerformance_items_identifier )                               | Énumération des identifiants connus.                                                                                                                                                                                                                                                                    | array           | [identifier](../identifier )                                     |
| + [startDateTime](#hasPerformance_items_startDateTime )                         | Date et heure de début de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                                                                                                     | string          | -                                                                           |
| - [endDateTime](#hasPerformance_items_endDateTime )                             | Date et heure de fin de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                                                                                                       | string          | -                                                                           |
| - [duration](#hasPerformance_items_duration )                                   | Durée de la représentation en format ISO-8601                                                                                                                                                                                                                                                           | string          | -                                                                           |
| - [previousStartDateTime](#hasPerformance_items_previousStartDateTime )         | Date et heure de début initialement prévus pour la représentation, dans le cas où il s'agit d'une représentation reportée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                       | string          | -                                                                           |
| - [hasIntermission](#hasPerformance_items_hasIntermission )                     | Indique la présence d'une ou plusieurs entractes                                                                                                                                                                                                                                                        | boolean         | -                                                                           |
| - [isExtra](#hasPerformance_items_isExtra )                                     | Indique si la représentation est une représentation supplémentaire                                                                                                                                                                                                                                      | boolean         | -                                                                           |
| - [description](#hasPerformance_items_description )                             | Propriété utilisée seulement si la description de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle s'appliquent.                                                 | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )   |
| - [shortDescription](#hasPerformance_items_shortDescription )                   | Propriété utilisée seulement si la description courte de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle s'appliquent.                                          | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )   |
| - [media](#hasPerformance_items_media )                                         | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) supplémentaires associés à la représentation, lorsqu'ils sont disponibles et qu'il n'est pas possible de les associer au spectacle. Les consignes d'utilisation de la classe Spectacle s'appliquent.                            | array           | [Voir les détails](#hasPerformance_items_media )                            |
| - [alternateName](#hasPerformance_items_alternateName )                         | Propriété utilisée seulement si l'autre nom de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle] s'appliquent                                                    | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| - [mainEntityOfPage](#hasPerformance_items_mainEntityOfPage )                   | Propriété utilisée seulement si l'URL du PageWeb associée à la représentation est différente de celle du spectacle. Ne pas confondre à l'URL de billetterie de la section concernant les offres. Les consignes d'utilisation de la classe Spectacle s'appliquent.                                       | array           | [Voir les détails](#hasPerformance_items_mainEntityOfPage )                 |
| - [hasAdditionalContribution](#hasPerformance_items_hasAdditionalContribution ) | Contributions à la représentation qui ne sont pas documentées dans le spectacle. Les contributions de la représentation sont donc l'ajout des contributions du spectacle et des contributions supplémentaires, desquelles ont retire les contributions retirées.                                        | array           | [Voir les détails](#hasPerformance_items_hasAdditionalContribution )        |
| - [hasRemovedContribution](#hasPerformance_items_hasRemovedContribution )       | Contributions documentées dans le spectacle qui ne s'appliquent pas à la représentation. Les contributions de la représentation sont donc l'ajout des contributions du spectacle et des contributions supplémentaires, desquelles ont retire les contributions retirées                                 | array           | [Voir les détails](#hasPerformance_items_hasRemovedContribution )           |
| - [inSeries](#hasPerformance_items_inSeries )                                   | Identification des séries dont la représentation fait partie.                                                                                                                                                                                                                                           | array           | [Voir les détails](#hasPerformance_items_inSeries )                         |
| + [hasOffer](#hasPerformance_items_hasOffer )                                   | Description des différentes modalités pour assister à la représentation. Il peut y avoir des modalités pour le présentiel et/ou le virtuel. Les modalités pour le présentiel et le virtuel doivent être documentées pour un spectacle hybride. Une représentation contient donc au maximum deux offres. | array           | [Voir les détails](#hasPerformance_items_hasOffer )                         |

#### <a name="hasPerformance_items_type"></a>20.1.1. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Performance"`

#### <a name="hasPerformance_items_identifier"></a>20.1.2. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > identifier`

**Nom:** identifier

|                         |                           |
| ----------------------- | ------------------------- |
| **Type**                | `array`                   |
| **Requis**              | Oui                       |
| **Même définition que** | [identifier](#identifier) |

**Description:** Énumération des identifiants connus.

#### <a name="hasPerformance_items_startDateTime"></a>20.1.3. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > startDateTime`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Oui         |
| **Format** | `date-time` |

**Description:** Date et heure de début de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

#### <a name="hasPerformance_items_endDateTime"></a>20.1.4. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > endDateTime`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date et heure de fin de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

#### <a name="hasPerformance_items_duration"></a>20.1.5. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > duration`

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

#### <a name="hasPerformance_items_previousStartDateTime"></a>20.1.6. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > previousStartDateTime`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date et heure de début initialement prévus pour la représentation, dans le cas où il s'agit d'une représentation reportée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

#### <a name="hasPerformance_items_hasIntermission"></a>20.1.7. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > hasIntermission`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Non       |

**Description:** Indique la présence d'une ou plusieurs entractes

#### <a name="hasPerformance_items_isExtra"></a>20.1.8. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > isExtra`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Non       |

**Description:** Indique si la représentation est une représentation supplémentaire

#### <a name="hasPerformance_items_description"></a>20.1.9. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > description`

**Nom:** Texte long multilingue

|                         |                             |
| ----------------------- | --------------------------- |
| **Type**                | `array of object`           |
| **Requis**              | Non                         |
| **Même définition que** | [description](#description) |

**Description:** Propriété utilisée seulement si la description de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle s'appliquent.

#### <a name="hasPerformance_items_shortDescription"></a>20.1.10. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > shortDescription`

**Nom:** Texte long multilingue

|                         |                             |
| ----------------------- | --------------------------- |
| **Type**                | `array of object`           |
| **Requis**              | Non                         |
| **Même définition que** | [description](#description) |

**Description:** Propriété utilisée seulement si la description courte de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle s'appliquent.

#### <a name="hasPerformance_items_media"></a>20.1.11. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > media`

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

| Chaque item du tableau doit être           | Description                                                                                          |
| ------------------------------------------ | ---------------------------------------------------------------------------------------------------- |
| [Média](#hasPerformance_items_media_items) | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

##### <a name="hasPerformance_items_media_items"></a>20.1.11.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > media > Média

**Nom:** Média

|                               |                       |
| ----------------------------- | --------------------- |
| **Type**                      | `object`              |
| **Requis**                    | Non                   |
| **Propriétés additionnelles** | Tout type permis      |
| **Même définition que**       | [Média](#media_items) |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

#### <a name="hasPerformance_items_alternateName"></a>20.1.12. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > alternateName`

**Nom:** Texte court multilingue

|                         |                   |
| ----------------------- | ----------------- |
| **Type**                | `array of object` |
| **Requis**              | Non               |
| **Même définition que** | [name](#name)     |

**Description:** Propriété utilisée seulement si l'autre nom de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle] s'appliquent

#### <a name="hasPerformance_items_mainEntityOfPage"></a>20.1.13. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > mainEntityOfPage`

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

| Chaque item du tableau doit être                        | Description |
| ------------------------------------------------------- | ----------- |
| [WebPage](#hasPerformance_items_mainEntityOfPage_items) | -           |

##### <a name="hasPerformance_items_mainEntityOfPage_items"></a>20.1.13.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > mainEntityOfPage > WebPage

**Nom:** WebPage

|                               |                                    |
| ----------------------------- | ---------------------------------- |
| **Type**                      | `object`                           |
| **Requis**                    | Non                                |
| **Propriétés additionnelles** | Tout type permis                   |
| **Même définition que**       | [WebPage](#mainEntityOfPage_items) |

#### <a name="hasPerformance_items_hasAdditionalContribution"></a>20.1.14. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > hasAdditionalContribution`

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

| Chaque item du tableau doit être                                      | Description                                                                                                                                                                 |
| --------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contribution](#hasPerformance_items_hasAdditionalContribution_items) | Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné. |

##### <a name="hasPerformance_items_hasAdditionalContribution_items"></a>20.1.14.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > hasAdditionalContribution > Contribution

**Nom:** Contribution

|                               |                                        |
| ----------------------------- | -------------------------------------- |
| **Type**                      | `object`                               |
| **Requis**                    | Non                                    |
| **Propriétés additionnelles** | Tout type permis                       |
| **Même définition que**       | [Contribution](#hasContribution_items) |

**Description:** Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

#### <a name="hasPerformance_items_hasRemovedContribution"></a>20.1.15. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > hasRemovedContribution`

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

| Chaque item du tableau doit être                                   | Description                                                                                                                                                                 |
| ------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contribution](#hasPerformance_items_hasRemovedContribution_items) | Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné. |

##### <a name="hasPerformance_items_hasRemovedContribution_items"></a>20.1.15.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > hasRemovedContribution > Contribution

**Nom:** Contribution

|                               |                                        |
| ----------------------------- | -------------------------------------- |
| **Type**                      | `object`                               |
| **Requis**                    | Non                                    |
| **Propriétés additionnelles** | Tout type permis                       |
| **Même définition que**       | [Contribution](#hasContribution_items) |

**Description:** Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

#### <a name="hasPerformance_items_inSeries"></a>20.1.16. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries`

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

| Chaque item du tableau doit être                                          | Description                                                                                                                                                                                                                                      |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [Série de représentations (Series)](#hasPerformance_items_inSeries_items) | cette classe permet de regrouper des représentations n’étant pas nécessairement toutes associées à un même spectacle, mais liées entre elles par des éléments de commercialisation ou de modalités d’accès. Un festival est un exemple de série. |

##### <a name="hasPerformance_items_inSeries_items"></a>20.1.16.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series)

**Nom:** Série de représentations (Series)

|                               |                                                           |
| ----------------------------- | --------------------------------------------------------- |
| **Type**                      | `object`                                                  |
| **Requis**                    | Non                                                       |
| **Propriétés additionnelles** | Tout type permis                                          |
| **Défini dans**               | [Série de représentations (Series)](../series) |

**Description:** cette classe permet de regrouper des représentations n’étant pas nécessairement toutes associées à un même spectacle, mais liées entre elles par des éléments de commercialisation ou de modalités d’accès. Un festival est un exemple de série.

| Propriété                                                                    | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | Type de donnée  | Définition                                                                  |
| ---------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------- | --------------------------------------------------------------------------- |
| + [type](#hasPerformance_items_inSeries_items_type )                         | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | const           | -                                                                           |
| + [identifier](#hasPerformance_items_inSeries_items_identifier )             | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.                                                                                                                                                                                                                                                                                                                                                                            | array           | [identifier](../identifier )                                     |
| + [name](#hasPerformance_items_inSeries_items_name )                         | Nom de la série, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels.                                                                                                                                                                                                                                                                                                                                             | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| - [alternateName](#hasPerformance_items_inSeries_items_alternateName )       | Élément qui ne fait pas partie du nom, mais qui le complète, sans toutefois relever de la description elle-même.<br /><br />Par exemple, le Festival de musique émergente en Abitibi-Témiscamingue est aussi connu sous son acronyme FME.                                                                                                                                                                                                                                                                    | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| + [description](#hasPerformance_items_inSeries_items_description )           | Description de la série.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )   |
| - [shortDescription](#hasPerformance_items_inSeries_items_shortDescription ) | Description résumée de la série. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.                                                                                                                                                                                                                                                                                                                                                               | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )   |
| - [media](#hasPerformance_items_inSeries_items_media )                       | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé à la série.                                                                                                                                                                                                                                                                                                                                                                                                                  | array           | [Voir les détails](#hasPerformance_items_inSeries_items_media )             |
| - [hasContribution](#hasPerformance_items_inSeries_items_hasContribution )   | Énumération des contributions spécifiques à la série, et non pas aux représentations. Il s'agit typiquement de contributions de production, d'organisation ou de commandite. Les contributions artistiques seront typiquement associées aux spectacles et aux représentations.<br /><br />Exemple: un commanditaire d'un festival a une contribution à la série.<br /><br />Contre-exemple: un artiste sur scène lors d'un spectacle dans le cadre de la série n'a pas de contribution à la série elle-même. | array           | [Voir les détails](#hasPerformance_items_inSeries_items_hasContribution )   |
| - [mainEntityOfPage](#hasPerformance_items_inSeries_items_mainEntityOfPage ) | Pages web donnant plus d'information sur la série.<br /><br />Pour des besoins plus précis, par exemple des URL de critiques du spectacle, la propriété Médias, qui permet d'inclure des notes d'usage, peut être utilisée.                                                                                                                                                                                                                                                                                  | array           | [Voir les détails](#hasPerformance_items_inSeries_items_mainEntityOfPage )  |
| + [startDateTime](#hasPerformance_items_inSeries_items_startDateTime )       | Date de début de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                                                                                                                                                                                                                                                                                                                            | string          | -                                                                           |
| - [endDateTime](#hasPerformance_items_inSeries_items_endDateTime )           | Date de fin de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.                                                                                                                                                                                                                                                                                                                                                                                              | string          | -                                                                           |
| - [hasOffer](#hasPerformance_items_inSeries_items_hasOffer )                 | Description des différentes modalités pour assister à la série. Il peut y avoir des modalités pour le présentiel et/ou le virtuel. Les modalités pour le présentiel et le virtuel doivent être documentées pour une série hybride. Une série contient donc au maximum deux offres.                                                                                                                                                                                                                           | array           | [Voir les détails](#hasPerformance_items_inSeries_items_hasOffer )          |

###### <a name="hasPerformance_items_inSeries_items_type"></a>20.1.16.1.1. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Series"`

###### <a name="hasPerformance_items_inSeries_items_identifier"></a>20.1.16.1.2. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > identifier`

**Nom:** identifier

|                         |                           |
| ----------------------- | ------------------------- |
| **Type**                | `array`                   |
| **Requis**              | Oui                       |
| **Même définition que** | [identifier](#identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

###### <a name="hasPerformance_items_inSeries_items_name"></a>20.1.16.1.3. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > name`

**Nom:** Texte court multilingue

|                         |                   |
| ----------------------- | ----------------- |
| **Type**                | `array of object` |
| **Requis**              | Oui               |
| **Même définition que** | [name](#name)     |

**Description:** Nom de la série, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels.

###### <a name="hasPerformance_items_inSeries_items_alternateName"></a>20.1.16.1.4. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > alternateName`

**Nom:** Texte court multilingue

|                         |                   |
| ----------------------- | ----------------- |
| **Type**                | `array of object` |
| **Requis**              | Non               |
| **Même définition que** | [name](#name)     |

**Description:** Élément qui ne fait pas partie du nom, mais qui le complète, sans toutefois relever de la description elle-même.

Par exemple, le Festival de musique émergente en Abitibi-Témiscamingue est aussi connu sous son acronyme FME.

###### <a name="hasPerformance_items_inSeries_items_description"></a>20.1.16.1.5. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > description`

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

###### <a name="description_items"></a>20.1.16.1.5.1. Spectacle (Show) > description > description items

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                            | Description                                                                                                                                                | Type de donnée | Définition                                         |
| ------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [lang](#description_items_lang )   | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). | string         | [Code de langue](../datatypes/partials/language ) |
| + [value](#description_items_value ) | Texte long avec formatage, incluant des paragraphes et des balises HTML autorisées b, i, u, sup et sub.                                                    | string         | [](../datatypes/partials/authorized_html )        |

###### <a name="description_items_lang"></a>20.1.16.1.5.1.1. Propriété `Spectacle (Show) > description > description items > lang`

**Nom:** Code de langue

|                         |                          |
| ----------------------- | ------------------------ |
| **Type**                | `string`                 |
| **Requis**              | Oui                      |
| **Même définition que** | [lang](#name_items_lang) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

###### <a name="description_items_value"></a>20.1.16.1.5.1.2. Propriété `Spectacle (Show) > description > description items > value`

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

###### <a name="hasPerformance_items_inSeries_items_shortDescription"></a>20.1.16.1.6. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > shortDescription`

**Nom:** Texte long multilingue

|                         |                             |
| ----------------------- | --------------------------- |
| **Type**                | `array of object`           |
| **Requis**              | Non                         |
| **Même définition que** | [description](#description) |

**Description:** Description résumée de la série. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.

###### <a name="hasPerformance_items_inSeries_items_media"></a>20.1.16.1.7. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > media`

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

| Chaque item du tableau doit être                          | Description                                                                                          |
| --------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| [Média](#hasPerformance_items_inSeries_items_media_items) | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

###### <a name="hasPerformance_items_inSeries_items_media_items"></a>20.1.16.1.7.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > media > Média

**Nom:** Média

|                               |                       |
| ----------------------------- | --------------------- |
| **Type**                      | `object`              |
| **Requis**                    | Non                   |
| **Propriétés additionnelles** | Tout type permis      |
| **Même définition que**       | [Média](#media_items) |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

###### <a name="hasPerformance_items_inSeries_items_hasContribution"></a>20.1.16.1.8. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasContribution`

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

| Chaque item du tableau doit être                                           | Description                                                                                                                                                                 |
| -------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contribution](#hasPerformance_items_inSeries_items_hasContribution_items) | Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné. |

###### <a name="hasPerformance_items_inSeries_items_hasContribution_items"></a>20.1.16.1.8.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasContribution > Contribution

**Nom:** Contribution

|                               |                                        |
| ----------------------------- | -------------------------------------- |
| **Type**                      | `object`                               |
| **Requis**                    | Non                                    |
| **Propriétés additionnelles** | Tout type permis                       |
| **Même définition que**       | [Contribution](#hasContribution_items) |

**Description:** Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

###### <a name="hasPerformance_items_inSeries_items_mainEntityOfPage"></a>20.1.16.1.9. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > mainEntityOfPage`

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

| Chaque item du tableau doit être                                       | Description |
| ---------------------------------------------------------------------- | ----------- |
| [WebPage](#hasPerformance_items_inSeries_items_mainEntityOfPage_items) | -           |

###### <a name="hasPerformance_items_inSeries_items_mainEntityOfPage_items"></a>20.1.16.1.9.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > mainEntityOfPage > WebPage

**Nom:** WebPage

|                               |                                    |
| ----------------------------- | ---------------------------------- |
| **Type**                      | `object`                           |
| **Requis**                    | Non                                |
| **Propriétés additionnelles** | Tout type permis                   |
| **Même définition que**       | [WebPage](#mainEntityOfPage_items) |

###### <a name="hasPerformance_items_inSeries_items_startDateTime"></a>20.1.16.1.10. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > startDateTime`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Oui         |
| **Format** | `date-time` |

**Description:** Date de début de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

###### <a name="hasPerformance_items_inSeries_items_endDateTime"></a>20.1.16.1.11. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > endDateTime`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date de fin de la série. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times.

###### <a name="hasPerformance_items_inSeries_items_hasOffer"></a>20.1.16.1.12. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer`

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

| Chaque item du tableau doit être                                     | Description                                                                                                                       |
| -------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| [Offre (Offer)](#hasPerformance_items_inSeries_items_hasOffer_items) | Permet de décrire les propriétés d’une offre associée à une représentation ou une série, par exemple le prix et la disponibilité. |

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items"></a>20.1.16.1.12.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer)

**Nom:** Offre (Offer)

|                               |                                      |
| ----------------------------- | ------------------------------------ |
| **Type**                      | `object`                             |
| **Requis**                    | Non                                  |
| **Propriétés additionnelles** | Tout type permis                     |
| **Défini dans**               | [Offre (Offer)](../offer) |

**Description:** Permet de décrire les propriétés d’une offre associée à une représentation ou une série, par exemple le prix et la disponibilité.

| Propriété                                                                                                           | Description                                                                                                                                                                                                                                                                                             | Type de donnée   | Définition                                                    |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- | ------------------------------------------------------------- |
| + [type](#hasPerformance_items_inSeries_items_hasOffer_items_type )                                                 | -                                                                                                                                                                                                                                                                                                       | const            | -                                                             |
| + [inPlace](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace )                                           | Lieu associé à l'offre (physique ou virtuel).                                                                                                                                                                                                                                                           | object           | [Lieu (Place)](../place )                          |
| - [inRoom](#hasPerformance_items_inSeries_items_hasOffer_items_inRoom )                                             | Salle associée à l'offre. La salle fait partie du lieu indiqué à la propriété Lieu.                                                                                                                                                                                                                     | object           | [Salle (Room)](../room )                           |
| - [roomConfiguration](#hasPerformance_items_inSeries_items_hasOffer_items_roomConfiguration )                       | Configuration de la salle dans le contexte de cette offre.                                                                                                                                                                                                                                              | object           | [Configuration de salle](../room_specification )   |
| + [isSoldout](#hasPerformance_items_inSeries_items_hasOffer_items_isSoldout )                                       | Permet d'indiquer si cette offre est complète (toutes les places disponibles sont comblées). Peut-être complété par la propriété Complet depuis pour préciser à quelle date l'offre est devenue complète.                                                                                               | boolean          | -                                                             |
| - [soldoutSince](#hasPerformance_items_inSeries_items_hasOffer_items_soldoutSince )                                 | Date depuis laquelle l'offre est complète. La propriété Complet doit avoir la valeur vrai pour que Complet depuis puisse être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times                                                                           | string           | -                                                             |
| + [offerStatus](#hasPerformance_items_inSeries_items_hasOffer_items_offerStatus )                                   | Statut de l'offre. La valeur doit être choisie parmi les valeurs du vocabulaire contrôlé Statut de l'offre.                                                                                                                                                                                             | enum (of string) | [Statut de l'Offre](../vocabularies/event_status ) |
| - [price](#hasPerformance_items_inSeries_items_hasOffer_items_price )                                               | Prix de départ en dollars canadiens.                                                                                                                                                                                                                                                                    | string           | [Montant Monétaire](../datatypes/currency )        |
| + [isAccessibleForFree](#hasPerformance_items_inSeries_items_hasOffer_items_isAccessibleForFree )                   | Indique que la présente offre est gratuite.                                                                                                                                                                                                                                                             | boolean          | -                                                             |
| + [isAccessibleFromAnotherOffer](#hasPerformance_items_inSeries_items_hasOffer_items_isAccessibleFromAnotherOffer ) | Indique que la présente offre est accessible seulement lorsque le consommateur a souscrit à une autre offre.                                                                                                                                                                                            | boolean          | -                                                             |
| - [preSaleStart](#hasPerformance_items_inSeries_items_hasOffer_items_preSaleStart )                                 | Date et heure du début de la prévente. Si la propriété n'est pas documentée, la date de début de disponibilité générale doit être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times                                                                       | string           | -                                                             |
| - [generalSaleStart](#hasPerformance_items_inSeries_items_hasOffer_items_generalSaleStart )                         | Date et heure du début de la disponibilité générale. Si la propriété n'est pas documentée, il faut considérer que l'offre est disponible en tout temps, jusqu'à la date de début et l'heure de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times | string           | -                                                             |
| + [ticketLinkNotAvailable](#hasPerformance_items_inSeries_items_hasOffer_items_ticketLinkNotAvailable )             | Indication à l'effet qu'il n'existe pas de lien permettant d'obtenir, par le web, un accès à la représentation.                                                                                                                                                                                         | boolean          | -                                                             |
| - [ticketLink](#hasPerformance_items_inSeries_items_hasOffer_items_ticketLink )                                     | URL d'une page permettant de souscire à l'offre, par exemple un lien vers la page de la plateforme de billetterie.                                                                                                                                                                                      | string           | -                                                             |

###### <a name="autogenerated_heading_4"></a>20.1.16.1.12.1.1. If (isAccessibleForFree = false)

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

###### <a name="autogenerated_heading_5"></a>20.1.16.1.12.1.1.1. Les propriétés suivantes sont obligatoires
* ticketLink

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_type"></a>20.1.16.1.12.1.2. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Offer"`

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace"></a>20.1.16.1.12.1.3. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace`

**Nom:** Lieu (Place)

|                               |                                |
| ----------------------------- | ------------------------------ |
| **Type**                      | `object`                       |
| **Requis**                    | Oui                            |
| **Propriétés additionnelles** | Tout type permis               |
| **Défini dans**               | [inPlace](../place) |

**Description:** Lieu associé à l'offre (physique ou virtuel).

| Propriété                                                                                               | Description                                                                                                                                                                                                                                        | Type de donnée  | Définition                                                                                          |
| ------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------------------------------------------------- |
| + [type](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_type )                             | -                                                                                                                                                                                                                                                  | const           | -                                                                                                   |
| - [additionalType](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_additionalType )         | Identification du type de lieu. Ne pas confondre avec les caractéristiques de la salle, qui doivent être documentées dans un objet de la classe Salle.                                                                                             | object          | [Term](../term )                                                                         |
| + [identifier](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_identifier )                 | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.                                                                                                                  | array           | [identifier](../identifier )                                                             |
| + [name](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_name )                             | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)                                                                                                                                                        | array of object | [Texte court multilingue](../datatypes/text_short_multilingual )                         |
| - [description](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_description )               | Énumération de textes longs associés à un code de langue au standard ISO 639-1.                                                                                                                                                                    | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )                           |
| + [virtualPlace](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_virtualPlace )             | -                                                                                                                                                                                                                                                  | boolean         | -                                                                                                   |
| - [inRoom](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom )                         | Énumération des salles présentes dans le lieu. Recommandé pour les lieux contenant plusieurs salles, ou pour documenter des informations associés à la classe Salle (par exemple, les configurations possibles) dans un lieu avec une seule salle. | array           | [Voir les détails](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom )             |
| - [address](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_address )                       | Coordonnées complètes du lieu.                                                                                                                                                                                                                     | object          | [Postal Address](../postal_address )                                                     |
| - [mainEntityOfPage](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_mainEntityOfPage )     | URL vers des pages web donnant plus d'information sur le lieu.                                                                                                                                                                                     | array           | [Voir les détails](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_mainEntityOfPage )   |
| - [placeAccessibility](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_placeAccessibility ) | Caractéristiques d'accessibilité universelle pour le lieu. Des caractéristiques supplémentaires pourraient être documentées pour la ou les salles.                                                                                                 | array           | [Voir les détails](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_placeAccessibility ) |
| - [geoCoordinates](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_geoCoordinates )         | Coordonnées géographiques                                                                                                                                                                                                                          | object          | [Coordonnées géographiques d'un point.](../datatypes/geo_coordinates )                   |

###### <a name="autogenerated_heading_6"></a>20.1.16.1.12.1.3.1. If (virtualPlace = false)

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

###### <a name="autogenerated_heading_7"></a>20.1.16.1.12.1.3.1.1. Les propriétés suivantes sont obligatoires
* type
* address

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_type"></a>20.1.16.1.12.1.3.2. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Place"`

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_additionalType"></a>20.1.16.1.12.1.3.3. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > additionalType`

**Nom:** Term

|                               |                                                       |
| ----------------------------- | ----------------------------------------------------- |
| **Type**                      | `object`                                              |
| **Requis**                    | Non                                                   |
| **Propriétés additionnelles** | Tout type permis                                      |
| **Même définition que**       | [Term](#hasContribution_items_contributionType_items) |

**Description:** Identification du type de lieu. Ne pas confondre avec les caractéristiques de la salle, qui doivent être documentées dans un objet de la classe Salle.

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_identifier"></a>20.1.16.1.12.1.3.4. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > identifier`

**Nom:** identifier

|                         |                           |
| ----------------------- | ------------------------- |
| **Type**                | `array`                   |
| **Requis**              | Oui                       |
| **Même définition que** | [identifier](#identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_name"></a>20.1.16.1.12.1.3.5. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > name`

**Nom:** Texte court multilingue

|                         |                   |
| ----------------------- | ----------------- |
| **Type**                | `array of object` |
| **Requis**              | Oui               |
| **Même définition que** | [name](#name)     |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_description"></a>20.1.16.1.12.1.3.6. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > description`

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

###### <a name="description_items"></a>20.1.16.1.12.1.3.6.1. Spectacle (Show) > description > description items

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                            | Description                                                                                                                                                | Type de donnée | Définition                                         |
| ------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [lang](#description_items_lang )   | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). | string         | [Code de langue](../datatypes/partials/language ) |
| + [value](#description_items_value ) | Texte long avec formatage, incluant des paragraphes et des balises HTML autorisées b, i, u, sup et sub.                                                    | string         | [](../datatypes/partials/authorized_html )        |

###### <a name="description_items_lang"></a>20.1.16.1.12.1.3.6.1.1. Propriété `Spectacle (Show) > description > description items > lang`

**Nom:** Code de langue

|                         |                          |
| ----------------------- | ------------------------ |
| **Type**                | `string`                 |
| **Requis**              | Oui                      |
| **Même définition que** | [lang](#name_items_lang) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

###### <a name="description_items_value"></a>20.1.16.1.12.1.3.6.1.2. Propriété `Spectacle (Show) > description > description items > value`

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

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_virtualPlace"></a>20.1.16.1.12.1.3.7. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > virtualPlace`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom"></a>20.1.16.1.12.1.3.8. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom`

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

| Chaque item du tableau doit être                                                         | Description                                                                                                                                             |
| ---------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Salle (Room)](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items) | Certains lieux contiennent plusieurs salles. Cette classe permet de préciser et décrire la salle utilisée dans le contexte d’une représentation donnée. |

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items"></a>20.1.16.1.12.1.3.8.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room)

**Nom:** Salle (Room)

|                               |                                    |
| ----------------------------- | ---------------------------------- |
| **Type**                      | `object`                           |
| **Requis**                    | Non                                |
| **Propriétés additionnelles** | Tout type permis                   |
| **Défini dans**               | [Salle (Room)](../room) |

**Description:** Certains lieux contiennent plusieurs salles. Cette classe permet de préciser et décrire la salle utilisée dans le contexte d’une représentation donnée.

| Propriété                                                                                                          | Description                                                                                                                                                      | Type de donnée  | Définition                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------------------------------------------------------------- |
| + [type](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_type )                           | -                                                                                                                                                                | const           | -                                                                                                               |
| + [identifier](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_identifier )               | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.                                | array           | [identifier](../identifier )                                                                         |
| - [name](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_name )                           | Nom de la salle, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. | array of object | [Texte court multilingue](../datatypes/text_short_multilingual )                                     |
| + [nameSameAsPlace](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_nameSameAsPlace )     | -                                                                                                                                                                | boolean         | -                                                                                                               |
| - [description](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_description )             | Énumération de textes longs associés à un code de langue au standard ISO 639-1.                                                                                  | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )                                       |
| - [shortDescription](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_shortDescription )   | Description résumée de la salle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.                   | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )                                       |
| - [media](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_media )                         | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au lieux.                                                                        | array           | [Voir les détails](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_media )             |
| - [inPlace](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_inPlace )                     | Lieu associé à l'offre (physique ou virtuel).                                                                                                                    | object          | [Lieu (Place)](../place )                                                                            |
| - [address](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_address )                     | Coordonnées complètes de la salle, lorsque les coordonnées de la salle sont différentes ou plus précises que celles du lieu.                                     | object          | [Postal Address](../postal_address )                                                                 |
| - [roomAccessibility](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_roomAccessibility ) | Caractéristiques d'accessibilité universelle pour la salle.                                                                                                      | array           | [Voir les détails](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_roomAccessibility ) |
| - [roomConfiguration](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration ) | Précisions sur les configurations possibles de la salle.                                                                                                         | array           | [Voir les détails](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration ) |

###### <a name="autogenerated_heading_8"></a>20.1.16.1.12.1.3.8.1.1. If (nameSameAsPlace = false)

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

###### <a name="autogenerated_heading_9"></a>20.1.16.1.12.1.3.8.1.1.1. Les propriétés suivantes sont obligatoires
* name

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_type"></a>20.1.16.1.12.1.3.8.1.2. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Room"`

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_identifier"></a>20.1.16.1.12.1.3.8.1.3. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > identifier`

**Nom:** identifier

|                         |                           |
| ----------------------- | ------------------------- |
| **Type**                | `array`                   |
| **Requis**              | Oui                       |
| **Même définition que** | [identifier](#identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_name"></a>20.1.16.1.12.1.3.8.1.4. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > name`

**Nom:** Texte court multilingue

|                         |                   |
| ----------------------- | ----------------- |
| **Type**                | `array of object` |
| **Requis**              | Non               |
| **Même définition que** | [name](#name)     |

**Description:** Nom de la salle, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels.

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_nameSameAsPlace"></a>20.1.16.1.12.1.3.8.1.5. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > nameSameAsPlace`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_description"></a>20.1.16.1.12.1.3.8.1.6. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > description`

**Nom:** Texte long multilingue

|                         |                             |
| ----------------------- | --------------------------- |
| **Type**                | `array of object`           |
| **Requis**              | Non                         |
| **Même définition que** | [description](#description) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_shortDescription"></a>20.1.16.1.12.1.3.8.1.7. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > shortDescription`

**Nom:** Texte long multilingue

|                         |                             |
| ----------------------- | --------------------------- |
| **Type**                | `array of object`           |
| **Requis**              | Non                         |
| **Même définition que** | [description](#description) |

**Description:** Description résumée de la salle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_media"></a>20.1.16.1.12.1.3.8.1.8. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > media`

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

| Chaque item du tableau doit être                                                              | Description                                                                                          |
| --------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| [Média](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_media_items) | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_media_items"></a>20.1.16.1.12.1.3.8.1.8.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média

**Nom:** Média

|                               |                       |
| ----------------------------- | --------------------- |
| **Type**                      | `object`              |
| **Requis**                    | Non                   |
| **Propriétés additionnelles** | Tout type permis      |
| **Même définition que**       | [Média](#media_items) |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_inPlace"></a>20.1.16.1.12.1.3.8.1.9. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > inPlace`

**Nom:** Lieu (Place)

|                               |                                                                        |
| ----------------------------- | ---------------------------------------------------------------------- |
| **Type**                      | `object`                                                               |
| **Requis**                    | Non                                                                    |
| **Propriétés additionnelles** | Tout type permis                                                       |
| **Même définition que**       | [inPlace](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace) |

**Description:** Lieu associé à l'offre (physique ou virtuel).

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_address"></a>20.1.16.1.12.1.3.8.1.10. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address`

**Nom:** Postal Address

|                               |                                         |
| ----------------------------- | --------------------------------------- |
| **Type**                      | `object`                                |
| **Requis**                    | Non                                     |
| **Propriétés additionnelles** | Tout type permis                        |
| **Défini dans**               | [address](../postal_address) |

**Description:** Coordonnées complètes de la salle, lorsque les coordonnées de la salle sont différentes ou plus précises que celles du lieu.

| Propriété                                                                                                              | Description                                                                                                                                   | Type de donnée | Définition                                                          |
| ---------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | ------------------------------------------------------------------- |
| + [type](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_address_type )                       | -                                                                                                                                             | const          | -                                                                   |
| + [streetAddress](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_address_streetAddress )     | Unité, numéro municipal, type de rue, nom de rue, direction de rue. Peut aussi contenir d'autres informations.                                | string         | [Texte court](../datatypes/text_short )                  |
| + [addressLocality](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_address_addressLocality ) | Nom de la ville. Peut aussi contenir le nom de la municipalité ou de la localité.                                                             | string         | [Texte court](../datatypes/text_short )                  |
| + [addressRegion](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_address_addressRegion )     | Abréviation des noms de provinces recommandés par Postes Canada, ou une région dans un autre pays.                                            | string         | -                                                                   |
| + [addressCountry](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_address_addressCountry )   | Code de pays à 3 caractères selon le standard ISO 3166-1                                                                                      | string         | [Code Pays](../datatypes/country_code )                  |
| + [postalCode](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_address_postalCode )           | Code postal, en majuscules. Séparer les trois premiers caractères du code postal des trois derniers. On ne doit pas utiliser le trait d’union | string         | [Code Postal Canadien](../datatypes/canada_postal_code ) |

###### <a name="autogenerated_heading_10"></a>20.1.16.1.12.1.3.8.1.10.1. If (addressCountry = "CAN")

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Propriété                                                                                                               | Description | Type de donnée   | Définition |
| ----------------------------------------------------------------------------------------------------------------------- | ----------- | ---------------- | ---------- |
| - [addressRegion](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_address_then_addressRegion ) | -           | enum (of string) | -          |

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_address_then_addressRegion"></a>20.1.16.1.12.1.3.8.1.10.1.1. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > then > addressRegion`

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

###### <a name="autogenerated_heading_11"></a>20.1.16.1.12.1.3.8.1.10.2. Else (i.e.  addressCountry != "CAN")

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Propriété                                                                                                               | Description                                                                                                | Type de donnée | Définition |
| ----------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- | -------------- | ---------- |
| - [addressRegion](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_address_else_addressRegion ) | Nom de la région, province ou état. Peut être un code de pays à 2 caractères selon le standard ISO 3166-1. | string         | -          |

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_address_else_addressRegion"></a>20.1.16.1.12.1.3.8.1.10.2.1. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > else > addressRegion`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Non      |

**Description:** Nom de la région, province ou état. Peut être un code de pays à 2 caractères selon le standard ISO 3166-1.

| Restrictions                                   |                                                                             |
| ---------------------------------------------- | --------------------------------------------------------------------------- |
| **Doit correspondre à l'expression régulière** | ```^[A-Z]{2}$``` [Test](https://regex101.com/?regex=%5E%5BA-Z%5D%7B2%7D%24) |

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_address_type"></a>20.1.16.1.12.1.3.8.1.10.3. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"PostalAddress"`

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_address_streetAddress"></a>20.1.16.1.12.1.3.8.1.10.4. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > streetAddress`

**Nom:** Texte court

|                         |                                     |
| ----------------------- | ----------------------------------- |
| **Type**                | `string`                            |
| **Requis**              | Oui                                 |
| **Même définition que** | [usageNote](#media_items_usageNote) |

**Description:** Unité, numéro municipal, type de rue, nom de rue, direction de rue. Peut aussi contenir d'autres informations.

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_address_addressLocality"></a>20.1.16.1.12.1.3.8.1.10.5. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > addressLocality`

**Nom:** Texte court

|                         |                                     |
| ----------------------- | ----------------------------------- |
| **Type**                | `string`                            |
| **Requis**              | Oui                                 |
| **Même définition que** | [usageNote](#media_items_usageNote) |

**Description:** Nom de la ville. Peut aussi contenir le nom de la municipalité ou de la localité.

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_address_addressRegion"></a>20.1.16.1.12.1.3.8.1.10.6. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > addressRegion`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |

**Description:** Abréviation des noms de provinces recommandés par Postes Canada, ou une région dans un autre pays.

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_address_addressCountry"></a>20.1.16.1.12.1.3.8.1.10.7. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > addressCountry`

**Nom:** Code Pays

|                         |                                                                                                  |
| ----------------------- | ------------------------------------------------------------------------------------------------ |
| **Type**                | `string`                                                                                         |
| **Requis**              | Oui                                                                                              |
| **Même définition que** | [addressCountry](#hasContribution_items_contributeur_hasGeographicRelation_items_addressCountry) |

**Description:** Code de pays à 3 caractères selon le standard ISO 3166-1

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_address_postalCode"></a>20.1.16.1.12.1.3.8.1.10.8. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > address > postalCode`

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

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_roomAccessibility"></a>20.1.16.1.12.1.3.8.1.11. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > roomAccessibility`

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

| Chaque item du tableau doit être                                                                         | Description                                                                             |
| -------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_roomAccessibility_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_roomAccessibility_items"></a>20.1.16.1.12.1.3.8.1.11.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > roomAccessibility > Term

**Nom:** Term

|                               |                                                       |
| ----------------------------- | ----------------------------------------------------- |
| **Type**                      | `object`                                              |
| **Requis**                    | Non                                                   |
| **Propriétés additionnelles** | Tout type permis                                      |
| **Même définition que**       | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration"></a>20.1.16.1.12.1.3.8.1.12. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration`

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

| Chaque item du tableau doit être                                                                                           | Description                                           |
| -------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------- |
| [Configuration de salle](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items) | Précisions sur un configuration possible de la salle. |

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items"></a>20.1.16.1.12.1.3.8.1.12.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration > Configuration de salle

**Nom:** Configuration de salle

|                               |                                                            |
| ----------------------------- | ---------------------------------------------------------- |
| **Type**                      | `object`                                                   |
| **Requis**                    | Non                                                        |
| **Propriétés additionnelles** | Tout type permis                                           |
| **Défini dans**               | [Configuration de salle](../room_specification) |

**Description:** Précisions sur un configuration possible de la salle.

| Propriété                                                                                                                | Description                                                                             | Type de donnée | Définition                  |
| ------------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------- | -------------- | --------------------------- |
| + [type](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items_type )         | -                                                                                       | const          | -                           |
| + [layout](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items_layout )     | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. | object         | [Term](../term ) |
| - [capacity](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items_capacity ) | Capacité, en nombre de spectacteurs.                                                    | integer        | -                           |

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items_type"></a>20.1.16.1.12.1.3.8.1.12.1.1. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration > Configuration de salle > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"RoomConfiguration"`

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items_layout"></a>20.1.16.1.12.1.3.8.1.12.1.2. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration > Configuration de salle > layout`

**Nom:** Term

|                               |                                                       |
| ----------------------------- | ----------------------------------------------------- |
| **Type**                      | `object`                                              |
| **Requis**                    | Oui                                                   |
| **Propriétés additionnelles** | Tout type permis                                      |
| **Même définition que**       | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items_capacity"></a>20.1.16.1.12.1.3.8.1.12.1.3. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration > Configuration de salle > capacity`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Non       |

**Description:** Capacité, en nombre de spectacteurs.

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_address"></a>20.1.16.1.12.1.3.9. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > address`

**Nom:** Postal Address

|                               |                                                                                             |
| ----------------------------- | ------------------------------------------------------------------------------------------- |
| **Type**                      | `object`                                                                                    |
| **Requis**                    | Non                                                                                         |
| **Propriétés additionnelles** | Tout type permis                                                                            |
| **Même définition que**       | [address](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_address) |

**Description:** Coordonnées complètes du lieu.

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_mainEntityOfPage"></a>20.1.16.1.12.1.3.10. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > mainEntityOfPage`

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

| Chaque item du tableau doit être                                                              | Description |
| --------------------------------------------------------------------------------------------- | ----------- |
| [WebPage](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_mainEntityOfPage_items) | -           |

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_mainEntityOfPage_items"></a>20.1.16.1.12.1.3.10.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > mainEntityOfPage > WebPage

**Nom:** WebPage

|                               |                                    |
| ----------------------------- | ---------------------------------- |
| **Type**                      | `object`                           |
| **Requis**                    | Non                                |
| **Propriétés additionnelles** | Tout type permis                   |
| **Même définition que**       | [WebPage](#mainEntityOfPage_items) |

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_placeAccessibility"></a>20.1.16.1.12.1.3.11. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > placeAccessibility`

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

| Chaque item du tableau doit être                                                             | Description                                                                             |
| -------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_placeAccessibility_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_placeAccessibility_items"></a>20.1.16.1.12.1.3.11.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > placeAccessibility > Term

**Nom:** Term

|                               |                                                       |
| ----------------------------- | ----------------------------------------------------- |
| **Type**                      | `object`                                              |
| **Requis**                    | Non                                                   |
| **Propriétés additionnelles** | Tout type permis                                      |
| **Même définition que**       | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_geoCoordinates"></a>20.1.16.1.12.1.3.12. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > geoCoordinates`

**Nom:** Coordonnées géographiques d'un point.

|                               |                                                           |
| ----------------------------- | --------------------------------------------------------- |
| **Type**                      | `object`                                                  |
| **Requis**                    | Non                                                       |
| **Propriétés additionnelles** | Tout type permis                                          |
| **Défini dans**               | [geoCoordinates](../datatypes/geo_coordinates) |

**Description:** Coordonnées géographiques

| Propriété                                                                                            | Description | Type de donnée | Définition |
| ---------------------------------------------------------------------------------------------------- | ----------- | -------------- | ---------- |
| + [longitude](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_geoCoordinates_longitude ) | -           | number         | -          |
| + [latitude](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_geoCoordinates_latitude )   | -           | number         | -          |

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_geoCoordinates_longitude"></a>20.1.16.1.12.1.3.12.1. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > geoCoordinates > longitude`

|            |          |
| ---------- | -------- |
| **Type**   | `number` |
| **Requis** | Oui      |

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inPlace_geoCoordinates_latitude"></a>20.1.16.1.12.1.3.12.2. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inPlace > geoCoordinates > latitude`

|            |          |
| ---------- | -------- |
| **Type**   | `number` |
| **Requis** | Oui      |

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_inRoom"></a>20.1.16.1.12.1.4. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > inRoom`

**Nom:** Salle (Room)

|                               |                                                                                          |
| ----------------------------- | ---------------------------------------------------------------------------------------- |
| **Type**                      | `object`                                                                                 |
| **Requis**                    | Non                                                                                      |
| **Propriétés additionnelles** | Tout type permis                                                                         |
| **Même définition que**       | [Salle (Room)](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items) |

**Description:** Salle associée à l'offre. La salle fait partie du lieu indiqué à la propriété Lieu.

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_roomConfiguration"></a>20.1.16.1.12.1.5. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > roomConfiguration`

**Nom:** Configuration de salle

|                               |                                                                                                                            |
| ----------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| **Type**                      | `object`                                                                                                                   |
| **Requis**                    | Non                                                                                                                        |
| **Propriétés additionnelles** | Tout type permis                                                                                                           |
| **Même définition que**       | [Configuration de salle](#hasPerformance_items_inSeries_items_hasOffer_items_inPlace_inRoom_items_roomConfiguration_items) |

**Description:** Configuration de la salle dans le contexte de cette offre.

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_isSoldout"></a>20.1.16.1.12.1.6. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > isSoldout`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Permet d'indiquer si cette offre est complète (toutes les places disponibles sont comblées). Peut-être complété par la propriété Complet depuis pour préciser à quelle date l'offre est devenue complète.

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_soldoutSince"></a>20.1.16.1.12.1.7. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > soldoutSince`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date depuis laquelle l'offre est complète. La propriété Complet doit avoir la valeur vrai pour que Complet depuis puisse être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_offerStatus"></a>20.1.16.1.12.1.8. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > offerStatus`

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

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_price"></a>20.1.16.1.12.1.9. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > price`

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

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_isAccessibleForFree"></a>20.1.16.1.12.1.10. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > isAccessibleForFree`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Indique que la présente offre est gratuite.

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_isAccessibleFromAnotherOffer"></a>20.1.16.1.12.1.11. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > isAccessibleFromAnotherOffer`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Indique que la présente offre est accessible seulement lorsque le consommateur a souscrit à une autre offre.

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_preSaleStart"></a>20.1.16.1.12.1.12. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > preSaleStart`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date et heure du début de la prévente. Si la propriété n'est pas documentée, la date de début de disponibilité générale doit être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_generalSaleStart"></a>20.1.16.1.12.1.13. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > generalSaleStart`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date et heure du début de la disponibilité générale. Si la propriété n'est pas documentée, il faut considérer que l'offre est disponible en tout temps, jusqu'à la date de début et l'heure de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_ticketLinkNotAvailable"></a>20.1.16.1.12.1.14. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > ticketLinkNotAvailable`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Indication à l'effet qu'il n'existe pas de lien permettant d'obtenir, par le web, un accès à la représentation.

###### <a name="hasPerformance_items_inSeries_items_hasOffer_items_ticketLink"></a>20.1.16.1.12.1.15. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > inSeries > Série de représentations (Series) > hasOffer > Offre (Offer) > ticketLink`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Non      |
| **Format** | `uri`    |

**Description:** URL d'une page permettant de souscire à l'offre, par exemple un lien vers la page de la plateforme de billetterie.

#### <a name="hasPerformance_items_hasOffer"></a>20.1.17. Propriété `Spectacle (Show) > hasPerformance > Représentation (Performance) > hasOffer`

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

| Chaque item du tableau doit être                      | Description                                                                                                                       |
| ----------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| [Offre (Offer)](#hasPerformance_items_hasOffer_items) | Permet de décrire les propriétés d’une offre associée à une représentation ou une série, par exemple le prix et la disponibilité. |

##### <a name="hasPerformance_items_hasOffer_items"></a>20.1.17.1. Spectacle (Show) > hasPerformance > Représentation (Performance) > hasOffer > Offre (Offer)

**Nom:** Offre (Offer)

|                               |                                                                      |
| ----------------------------- | -------------------------------------------------------------------- |
| **Type**                      | `object`                                                             |
| **Requis**                    | Non                                                                  |
| **Propriétés additionnelles** | Tout type permis                                                     |
| **Même définition que**       | [Offre (Offer)](#hasPerformance_items_inSeries_items_hasOffer_items) |

**Description:** Permet de décrire les propriétés d’une offre associée à une représentation ou une série, par exemple le prix et la disponibilité.

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-01-07 at 12:04:40 -0500
