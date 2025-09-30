# Contributor

**Nom:** Contributor

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

**Description:** les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre).

| Propriété                                              | Description                                                                                                                                                                                                                                                                                                                                                                                                                                 | Type de donnée  | Définition                                                                  |
| ------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------------------------- |
| + [type](#type )                                       | -                                                                                                                                                                                                                                                                                                                                                                                                                                           | const           | -                                                                           |
| + [contributorType](#contributorType )                 | Indication à l'effet qu'il s'agit d'une personne physique ou d'une personne morale.                                                                                                                                                                                                                                                                                                                                                         | object          | [](../vocabularies/contributor_type )                            |
| + [identifier](#identifier )                           | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.                                                                                                                                                                                                                                                                                                           | array           | [identifier](../identifier )                                     |
| + [name](#name )                                       | Nom complet du contributeur, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. Le prénom et le nom de sont pas traités dans des propriétés distinctes à cause de la diversité des appellations de contributions, qui sont parfois des personnes morales.<br /><br />Exemples: Michel Rivard, Les Trois Accords, Koriass, Desjardins, Spectra. | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| - [alternateName](#alternateName )                     | Autres appellations parfois utilisées pour le contributeur.<br /><br />Exemple: «Béatrice Martin» comme nom alternatif de «Cœur de pirate».<br />Exemple: «Compagnie Jean-Duceppe» comme nom alternatif de «Duceppe».                                                                                                                                                                                                                       | array           | [Voir les détails](#alternateName )                                         |
| - [description](#description )                         | Énumération de textes longs associés à un code de langue au standard ISO 639-1.                                                                                                                                                                                                                                                                                                                                                             | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )   |
| - [shortDescription](#shortDescription )               | Description résumée du contributeur. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage.                                                                                                                                                                                                                                                                                                            | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )   |
| - [media](#media )                                     | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au contributeur.                                                                                                                                                                                                                                                                                                                                            | array           | [Voir les détails](#media )                                                 |
| - [typicalContributionType](#typicalContributionType ) | Énumération des types de contributions habituellement faites par le contributeur.                                                                                                                                                                                                                                                                                                                                                           | array           | [Voir les détails](#typicalContributionType )                               |
| - [hasGeographicRelation](#hasGeographicRelation )     | Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.                                                                                                                                                                                                                                                                                                        | array           | [Voir les détails](#hasGeographicRelation )                                 |
| - [hasMembers](#hasMembers )                           | Énumération des membres des groupes, troupes et collectifs, etc.                                                                                                                                                                                                                                                                                                                                                                            | array           | [Voir les détails](#hasMembers )                                            |

## <a name="type"></a>1. Propriété `Contributor > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Contributor"`

## <a name="contributorType"></a>2. Propriété `Contributor > contributorType`

|                               |                                                                |
| ----------------------------- | -------------------------------------------------------------- |
| **Type**                      | `object`                                                       |
| **Requis**                    | Oui                                                            |
| **Propriétés additionnelles** | Tout type permis                                               |
| **Défini dans**               | [contributorType](../vocabularies/contributor_type) |

**Description:** Indication à l'effet qu'il s'agit d'une personne physique ou d'une personne morale.

## <a name="identifier"></a>3. Propriété `Contributor > identifier`

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

### <a name="identifier_items"></a>3.1. Contributor > identifier > identifier items

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `combinaison`    |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Any of(Option)                       |
| ------------------------------------ |
| [item 0](#identifier_items_anyOf_i0) |
| [item 1](#identifier_items_anyOf_i1) |

#### <a name="identifier_items_anyOf_i0"></a>3.1.1. Propriété `Contributor > identifier > identifier items > anyOf > item 0`

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

##### <a name="identifier_items_anyOf_i0_type"></a>3.1.1.1. Propriété `Contributor > identifier > identifier items > anyOf > item 0 > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"PropertyValue"`

##### <a name="identifier_items_anyOf_i0_propertyID"></a>3.1.1.2. Propriété `Contributor > identifier > identifier items > anyOf > item 0 > propertyID`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |

**Description:** Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles.

| Restrictions          |   |
| --------------------- | - |
| **Longueur minimale** | 1 |

##### <a name="identifier_items_anyOf_i0_value"></a>3.1.1.3. Propriété `Contributor > identifier > identifier items > anyOf > item 0 > value`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |

**Description:** L'identifiant lui-même

| Restrictions          |   |
| --------------------- | - |
| **Longueur minimale** | 1 |

#### <a name="identifier_items_anyOf_i1"></a>3.1.2. Propriété `Contributor > identifier > identifier items > anyOf > item 1`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Non      |
| **Format** | `uri`    |

**Description:** Un identifiant URI sous forme de chaîne de caractères.

## <a name="name"></a>4. Propriété `Contributor > name`

**Nom:** Texte court multilingue

|                 |                                                         |
| --------------- | ------------------------------------------------------- |
| **Type**        | `array of object`                                       |
| **Requis**      | Oui                                                     |
| **Défini dans** | [name](../datatypes/text_short_multilingual) |

**Description:** Nom complet du contributeur, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. Le prénom et le nom de sont pas traités dans des propriétés distinctes à cause de la diversité des appellations de contributions, qui sont parfois des personnes morales.

Exemples: Michel Rivard, Les Trois Accords, Koriass, Desjardins, Spectra.

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

### <a name="name_items"></a>4.1. Contributor > name > name items

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                     | Description                                                                                                                                                | Type de donnée | Définition                                         |
| ----------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [lang](#name_items_lang )   | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). | string         | [Code de langue](../partials/language ) |
| + [value](#name_items_value ) | HTML non-autorisées                                                                                                                                        | string         | [](../partials/no_html )                |

#### <a name="name_items_lang"></a>4.1.1. Propriété `Contributor > name > name items > lang`

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

#### <a name="name_items_value"></a>4.1.2. Propriété `Contributor > name > name items > value`

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

## <a name="alternateName"></a>5. Propriété `Contributor > alternateName`

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

| Chaque item du tableau doit être                | Description                                                                                 |
| ----------------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#alternateName_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

### <a name="alternateName_items"></a>5.1. Contributor > alternateName > Texte court multilingue

**Nom:** Texte court multilingue

|                         |                   |
| ----------------------- | ----------------- |
| **Type**                | `array of object` |
| **Requis**              | Non               |
| **Même définition que** | [name](#name)     |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

## <a name="description"></a>6. Propriété `Contributor > description`

**Nom:** Texte long multilingue

|                 |                                                               |
| --------------- | ------------------------------------------------------------- |
| **Type**        | `array of object`                                             |
| **Requis**      | Non                                                           |
| **Défini dans** | [description](../datatypes/text_long_multilingual) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

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

### <a name="description_items"></a>6.1. Contributor > description > description items

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                            | Description                                                                                                                                                | Type de donnée | Définition                                         |
| ------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [lang](#description_items_lang )   | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). | string         | [Code de langue](../partials/language ) |
| + [value](#description_items_value ) | Texte long avec formatage, incluant des paragraphes et des balises HTML autorisées b, i, u, sup et sub.                                                    | string         | [](../partials/authorized_html )        |

#### <a name="description_items_lang"></a>6.1.1. Propriété `Contributor > description > description items > lang`

**Nom:** Code de langue

|                         |                          |
| ----------------------- | ------------------------ |
| **Type**                | `string`                 |
| **Requis**              | Oui                      |
| **Même définition que** | [lang](#name_items_lang) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

#### <a name="description_items_value"></a>6.1.2. Propriété `Contributor > description > description items > value`

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

## <a name="shortDescription"></a>7. Propriété `Contributor > shortDescription`

**Nom:** Texte long multilingue

|                         |                             |
| ----------------------- | --------------------------- |
| **Type**                | `array of object`           |
| **Requis**              | Non                         |
| **Même définition que** | [description](#description) |

**Description:** Description résumée du contributeur. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage.

## <a name="media"></a>8. Propriété `Contributor > media`

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

| Chaque item du tableau doit être | Description                                                                                          |
| -------------------------------- | ---------------------------------------------------------------------------------------------------- |
| [Média](#media_items)            | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

### <a name="media_items"></a>8.1. Contributor > media > Média

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

#### <a name="media_items_type"></a>8.1.1. Propriété `Contributor > media > Média > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Media"`

#### <a name="media_items_sequenceNumber"></a>8.1.2. Propriété `Contributor > media > Média > sequenceNumber`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Non       |

**Description:** Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).

#### <a name="media_items_usageNote"></a>8.1.3. Propriété `Contributor > media > Média > usageNote`

|                               |                                                  |
| ----------------------------- | ------------------------------------------------ |
| **Type**                      | `object`                                         |
| **Requis**                    | Non                                              |
| **Propriétés additionnelles** | Tout type permis                                 |
| **Défini dans**               | [usageNote](../datatypes/text_short) |

**Description:** Texte libre permettant d'identifier les usages possibles du média (à l'intention des opérateurs des systèmes, pas du grand public, et donc pas pour publication).

#### <a name="media_items_url"></a>8.1.4. Propriété `Contributor > media > Média > url`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |
| **Format** | `uri`    |

**Description:** URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible

#### <a name="media_items_inLanguage"></a>8.1.5. Propriété `Contributor > media > Média > inLanguage`

|                               |                                                          |
| ----------------------------- | -------------------------------------------------------- |
| **Type**                      | `object`                                                 |
| **Requis**                    | Non                                                      |
| **Propriétés additionnelles** | Tout type permis                                         |
| **Défini dans**               | [inLanguage](../datatypes/partials/language) |

**Description:** Langue au format ISO 639-1.

#### <a name="media_items_license"></a>8.1.6. Propriété `Contributor > media > Média > license`

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

##### <a name="media_items_license_items"></a>8.1.6.1. Contributor > media > Média > license > text_short_multilingual

|                               |                                                                               |
| ----------------------------- | ----------------------------------------------------------------------------- |
| **Type**                      | `object`                                                                      |
| **Requis**                    | Non                                                                           |
| **Propriétés additionnelles** | Tout type permis                                                              |
| **Défini dans**               | [media_items_license_items](../datatypes/text_short_multilingual) |

**Description:** 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️

#### <a name="media_items_creditText"></a>8.1.7. Propriété `Contributor > media > Média > creditText`

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

##### <a name="media_items_creditText_items"></a>8.1.7.1. Contributor > media > Média > creditText > text_short_multilingual

|                               |                                                                                  |
| ----------------------------- | -------------------------------------------------------------------------------- |
| **Type**                      | `object`                                                                         |
| **Requis**                    | Non                                                                              |
| **Propriétés additionnelles** | Tout type permis                                                                 |
| **Défini dans**               | [media_items_creditText_items](../datatypes/text_short_multilingual) |

**Description:** 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️

#### <a name="media_items_copyrightHolder"></a>8.1.8. Propriété `Contributor > media > Média > copyrightHolder`

|                               |                                                                     |
| ----------------------------- | ------------------------------------------------------------------- |
| **Type**                      | `object`                                                            |
| **Requis**                    | Non                                                                 |
| **Propriétés additionnelles** | Tout type permis                                                    |
| **Défini dans**               | [copyrightHolder](../datatypes/text_short_multilingual) |

**Description:** Personne ou organisation détenant les droits d'auteur du média.

#### <a name="media_items_description"></a>8.1.9. Propriété `Contributor > media > Média > description`

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

##### <a name="media_items_description_items"></a>8.1.9.1. Contributor > media > Média > description > text_long_multilingual

|                               |                                                                                  |
| ----------------------------- | -------------------------------------------------------------------------------- |
| **Type**                      | `object`                                                                         |
| **Requis**                    | Non                                                                              |
| **Propriétés additionnelles** | Tout type permis                                                                 |
| **Défini dans**               | [media_items_description_items](../datatypes/text_long_multilingual) |

**Description:** 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️

## <a name="typicalContributionType"></a>9. Propriété `Contributor > typicalContributionType`

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

| Chaque item du tableau doit être       | Description                                                                             |
| -------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#typicalContributionType_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="typicalContributionType_items"></a>9.1. Contributor > typicalContributionType > Term

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

| Propriété                                                          | Description                                                                                                                                                                                                                                                                      | Type de donnée | Définition                                            |
| ------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | ----------------------------------------------------- |
| + [type](#typicalContributionType_items_type )                     | -                                                                                                                                                                                                                                                                                | const          | -                                                     |
| + [vocabulary](#typicalContributionType_items_vocabulary )         | Identification du vocabulaire duquel est tiré le term.<br /><br />Typiquement, cette identification correspond à l'appellation du vocabulaire dont l'usage est le plus fréquent, tout en minuscules, sans accents, et avec les espaces remplacés par des barres de soulignement. | object         | [](../datatypes/text_short )              |
| - [version](#typicalContributionType_items_version )               | Version du vocabulaire utilisé, lorsque c'est applicable                                                                                                                                                                                                                         | object         | [](../datatypes/text_short )              |
| + [code](#typicalContributionType_items_code )                     | Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.                                                                                                                     | object         | [](../datatypes/text_short )              |
| - [label](#typicalContributionType_items_label )                   | Version textuelle du terme tiré du vocabulaire choisi                                                                                                                                                                                                                            | object         | [](../datatypes/text_short_multilingual ) |
| + [sequenceNumber](#typicalContributionType_items_sequenceNumber ) | Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                                                         | integer        | -                                                     |

#### <a name="typicalContributionType_items_type"></a>9.1.1. Propriété `Contributor > typicalContributionType > Term > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Term"`

#### <a name="typicalContributionType_items_vocabulary"></a>9.1.2. Propriété `Contributor > typicalContributionType > Term > vocabulary`

|                               |                                                   |
| ----------------------------- | ------------------------------------------------- |
| **Type**                      | `object`                                          |
| **Requis**                    | Oui                                               |
| **Propriétés additionnelles** | Tout type permis                                  |
| **Défini dans**               | [vocabulary](../datatypes/text_short) |

**Description:** Identification du vocabulaire duquel est tiré le term.

Typiquement, cette identification correspond à l'appellation du vocabulaire dont l'usage est le plus fréquent, tout en minuscules, sans accents, et avec les espaces remplacés par des barres de soulignement.

#### <a name="typicalContributionType_items_version"></a>9.1.3. Propriété `Contributor > typicalContributionType > Term > version`

|                               |                                                |
| ----------------------------- | ---------------------------------------------- |
| **Type**                      | `object`                                       |
| **Requis**                    | Non                                            |
| **Propriétés additionnelles** | Tout type permis                               |
| **Défini dans**               | [version](../datatypes/text_short) |

**Description:** Version du vocabulaire utilisé, lorsque c'est applicable

#### <a name="typicalContributionType_items_code"></a>9.1.4. Propriété `Contributor > typicalContributionType > Term > code`

|                               |                                             |
| ----------------------------- | ------------------------------------------- |
| **Type**                      | `object`                                    |
| **Requis**                    | Oui                                         |
| **Propriétés additionnelles** | Tout type permis                            |
| **Défini dans**               | [code](../datatypes/text_short) |

**Description:** Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.

#### <a name="typicalContributionType_items_label"></a>9.1.5. Propriété `Contributor > typicalContributionType > Term > label`

|                               |                                                           |
| ----------------------------- | --------------------------------------------------------- |
| **Type**                      | `object`                                                  |
| **Requis**                    | Non                                                       |
| **Propriétés additionnelles** | Tout type permis                                          |
| **Défini dans**               | [label](../datatypes/text_short_multilingual) |

**Description:** Version textuelle du terme tiré du vocabulaire choisi

#### <a name="typicalContributionType_items_sequenceNumber"></a>9.1.6. Propriété `Contributor > typicalContributionType > Term > sequenceNumber`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Oui       |

**Description:** Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).

## <a name="hasGeographicRelation"></a>10. Propriété `Contributor > hasGeographicRelation`

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

| Chaque item du tableau doit être                                              | Description                                                                                                                          |
| ----------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| [Association Géographique (GeographicRelation)](#hasGeographicRelation_items) | Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc. |

### <a name="hasGeographicRelation_items"></a>10.1. Contributor > hasGeographicRelation > Association Géographique (GeographicRelation)

**Nom:** Association Géographique (GeographicRelation)

|                               |                                                                                    |
| ----------------------------- | ---------------------------------------------------------------------------------- |
| **Type**                      | `object`                                                                           |
| **Requis**                    | Non                                                                                |
| **Propriétés additionnelles** | Pas permis                                                                         |
| **Défini dans**               | [Association Géographique (GeographicRelation)](../geographic_relation) |

**Description:** Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.

| Propriété                                                          | Description                                                                                                   | Type de donnée | Définition                                 |
| ------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------- | -------------- | ------------------------------------------ |
| + [type](#hasGeographicRelation_items_type )                       | -                                                                                                             | const          | -                                          |
| - [relationType](#hasGeographicRelation_items_relationType )       | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.                       | object         | [Term](term )                  |
| - [addressCountry](#hasGeographicRelation_items_addressCountry )   | 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️ | object         | [](../datatypes/country_code ) |
| - [addressRegion](#hasGeographicRelation_items_addressRegion )     | 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️ | object         | [](../datatypes/text_short )   |
| - [addressLocality](#hasGeographicRelation_items_addressLocality ) | 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️ | object         | [](../datatypes/text_short )   |

#### <a name="hasGeographicRelation_items_type"></a>10.1.1. Propriété `Contributor > hasGeographicRelation > Association Géographique (GeographicRelation) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"GeographicRelation"`

#### <a name="hasGeographicRelation_items_relationType"></a>10.1.2. Propriété `Contributor > hasGeographicRelation > Association Géographique (GeographicRelation) > relationType`

**Nom:** Term

|                               |                                        |
| ----------------------------- | -------------------------------------- |
| **Type**                      | `object`                               |
| **Requis**                    | Non                                    |
| **Propriétés additionnelles** | Tout type permis                       |
| **Même définition que**       | [Term](#typicalContributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

#### <a name="hasGeographicRelation_items_addressCountry"></a>10.1.3. Propriété `Contributor > hasGeographicRelation > Association Géographique (GeographicRelation) > addressCountry`

|                               |                                                         |
| ----------------------------- | ------------------------------------------------------- |
| **Type**                      | `object`                                                |
| **Requis**                    | Non                                                     |
| **Propriétés additionnelles** | Tout type permis                                        |
| **Défini dans**               | [addressCountry](../datatypes/country_code) |

**Description:** 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️

#### <a name="hasGeographicRelation_items_addressRegion"></a>10.1.4. Propriété `Contributor > hasGeographicRelation > Association Géographique (GeographicRelation) > addressRegion`

|                               |                                                      |
| ----------------------------- | ---------------------------------------------------- |
| **Type**                      | `object`                                             |
| **Requis**                    | Non                                                  |
| **Propriétés additionnelles** | Tout type permis                                     |
| **Défini dans**               | [addressRegion](../datatypes/text_short) |

**Description:** 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️

#### <a name="hasGeographicRelation_items_addressLocality"></a>10.1.5. Propriété `Contributor > hasGeographicRelation > Association Géographique (GeographicRelation) > addressLocality`

|                               |                                                        |
| ----------------------------- | ------------------------------------------------------ |
| **Type**                      | `object`                                               |
| **Requis**                    | Non                                                    |
| **Propriétés additionnelles** | Tout type permis                                       |
| **Défini dans**               | [addressLocality](../datatypes/text_short) |

**Description:** 😅 ERROR in schema generation, a referenced schema could not be loaded, no documentation here unfortunately 🏜️

## <a name="hasMembers"></a>11. Propriété `Contributor > hasMembers`

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

| Chaque item du tableau doit être | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| -------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contributor](#hasMembers_items) | les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre). |

### <a name="hasMembers_items"></a>11.1. Contributor > hasMembers > Contributor

**Nom:** Contributor

|                               |                      |
| ----------------------------- | -------------------- |
| **Type**                      | `object`             |
| **Requis**                    | Non                  |
| **Propriétés additionnelles** | Tout type permis     |
| **Même définition que**       | [Contributor](#root) |

**Description:** les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre).

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2025-09-30 at 17:17:56 -0400
