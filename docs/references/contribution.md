# Contribution

**Nom:** Contribution

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

**Description:** Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

| Propriété                                | Description                                                                                                                                                                                                                                                                                                                                                          | Type de donnée | Définition                                         |
| ---------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [type](#type )                         | -                                                                                                                                                                                                                                                                                                                                                                    | const          | -                                                  |
| + [contributionType](#contributionType ) | Identification des types de contribution.                                                                                                                                                                                                                                                                                                                            | array          | [Voir les détails](#contributionType )             |
| + [contributeur](#contributeur )         | Identification du contributeur                                                                                                                                                                                                                                                                                                                                       | object         | [Contributor](../contributor )          |
| - [sequenceNumber](#sequenceNumber )     | Précision sur l'ordre de présentation des contributions (les nombres plus petits correspondent à des contributions qui doivent être présentées en premier).                                                                                                                                                                                                          | integer        | -                                                  |
| - [usageNote](#usageNote )               | Note concernant la contribution, à l'intention des exploitants des systèmes d'information (et donc pas du grand public). Il peut s'agir d'une précision sur le type de contribution, qui ne pourrait pas être exprimée à travers la propriété Types. Les informations compilées dans les notes pourraient être utilisées pour améliorer les vocabulaires contrôllés. | string         | [Texte court](../datatypes/text_short ) |

## <a name="type"></a>1. Propriété `Contribution > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Contribution"`

## <a name="contributionType"></a>2. Propriété `Contribution > contributionType`

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

| Chaque item du tableau doit être | Description                                                                             |
| -------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#contributionType_items)  | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="contributionType_items"></a>2.1. Contribution > contributionType > Term

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

| Propriété                                                   | Description                                                                                                                                                                                                                                                                      | Type de donnée  | Définition                                                                  |
| ----------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------------------------- |
| + [type](#contributionType_items_type )                     | -                                                                                                                                                                                                                                                                                | const           | -                                                                           |
| + [vocabulary](#contributionType_items_vocabulary )         | Identification du vocabulaire duquel est tiré le term.<br /><br />Typiquement, cette identification correspond à l'appellation du vocabulaire dont l'usage est le plus fréquent, tout en minuscules, sans accents, et avec les espaces remplacés par des barres de soulignement. | string          | [Texte court](../datatypes/text_short )                          |
| - [version](#contributionType_items_version )               | Version du vocabulaire utilisé, lorsque c'est applicable                                                                                                                                                                                                                         | string          | [Texte court](../datatypes/text_short )                          |
| + [code](#contributionType_items_code )                     | Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.                                                                                                                     | string          | [Texte court](../datatypes/text_short )                          |
| - [label](#contributionType_items_label )                   | Version textuelle du terme tiré du vocabulaire choisi                                                                                                                                                                                                                            | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| + [sequenceNumber](#contributionType_items_sequenceNumber ) | Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                                                         | integer         | -                                                                           |

#### <a name="contributionType_items_type"></a>2.1.1. Propriété `Contribution > contributionType > Term > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Term"`

#### <a name="contributionType_items_vocabulary"></a>2.1.2. Propriété `Contribution > contributionType > Term > vocabulary`

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

#### <a name="contributionType_items_version"></a>2.1.3. Propriété `Contribution > contributionType > Term > version`

**Nom:** Texte court

|                         |                                                  |
| ----------------------- | ------------------------------------------------ |
| **Type**                | `string`                                         |
| **Requis**              | Non                                              |
| **Même définition que** | [vocabulary](#contributionType_items_vocabulary) |

**Description:** Version du vocabulaire utilisé, lorsque c'est applicable

#### <a name="contributionType_items_code"></a>2.1.4. Propriété `Contribution > contributionType > Term > code`

**Nom:** Texte court

|                         |                                                  |
| ----------------------- | ------------------------------------------------ |
| **Type**                | `string`                                         |
| **Requis**              | Oui                                              |
| **Même définition que** | [vocabulary](#contributionType_items_vocabulary) |

**Description:** Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.

#### <a name="contributionType_items_label"></a>2.1.5. Propriété `Contribution > contributionType > Term > label`

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

| Chaque item du tableau doit être                   | Description |
| -------------------------------------------------- | ----------- |
| [label items](#contributionType_items_label_items) | -           |

##### <a name="contributionType_items_label_items"></a>2.1.5.1. Contribution > contributionType > Term > label > label items

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                                             | Description                                                                                                                                                | Type de donnée | Définition                                         |
| ----------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [lang](#contributionType_items_label_items_lang )   | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). | string         | [Code de langue](../datatypes/partials/language ) |
| + [value](#contributionType_items_label_items_value ) | HTML non-autorisées                                                                                                                                        | string         | [](../datatypes/partials/no_html )                |

###### <a name="contributionType_items_label_items_lang"></a>2.1.5.1.1. Propriété `Contribution > contributionType > Term > label > label items > lang`

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

###### <a name="contributionType_items_label_items_value"></a>2.1.5.1.2. Propriété `Contribution > contributionType > Term > label > label items > value`

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

#### <a name="contributionType_items_sequenceNumber"></a>2.1.6. Propriété `Contribution > contributionType > Term > sequenceNumber`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Oui       |

**Description:** Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).

## <a name="contributeur"></a>3. Propriété `Contribution > contributeur`

**Nom:** Contributor

|                               |                                           |
| ----------------------------- | ----------------------------------------- |
| **Type**                      | `object`                                  |
| **Requis**                    | Oui                                       |
| **Propriétés additionnelles** | Tout type permis                          |
| **Défini dans**               | [contributeur](../contributor) |

**Description:** Identification du contributeur

| Propriété                                                           | Description                                                                                                                                                                                                                                                                                                                                                                                                                                 | Type de donnée   | Définition                                                                  |
| ------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- | --------------------------------------------------------------------------- |
| + [type](#contributeur_type )                                       | -                                                                                                                                                                                                                                                                                                                                                                                                                                           | const            | -                                                                           |
| + [contributorType](#contributeur_contributorType )                 | Indication à l'effet qu'il s'agit d'une personne physique ou d'une personne morale.                                                                                                                                                                                                                                                                                                                                                         | enum (of string) | [Type de contributeur](../vocabularies/contributor_type )        |
| + [identifier](#contributeur_identifier )                           | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.                                                                                                                                                                                                                                                                                                           | array            | [identifier](../identifier )                                     |
| + [name](#contributeur_name )                                       | Nom complet du contributeur, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. Le prénom et le nom de sont pas traités dans des propriétés distinctes à cause de la diversité des appellations de contributions, qui sont parfois des personnes morales.<br /><br />Exemples: Michel Rivard, Les Trois Accords, Koriass, Desjardins, Spectra. | array of object  | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| - [alternateName](#contributeur_alternateName )                     | Autres appellations parfois utilisées pour le contributeur.<br /><br />Exemple: «Béatrice Martin» comme nom alternatif de «Cœur de pirate».<br />Exemple: «Compagnie Jean-Duceppe» comme nom alternatif de «Duceppe».                                                                                                                                                                                                                       | array            | [Voir les détails](#contributeur_alternateName )                            |
| - [description](#contributeur_description )                         | Énumération de textes longs associés à un code de langue au standard ISO 639-1.                                                                                                                                                                                                                                                                                                                                                             | array of object  | [Texte long multilingue](../datatypes/text_long_multilingual )   |
| - [shortDescription](#contributeur_shortDescription )               | Description résumée du contributeur. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage.                                                                                                                                                                                                                                                                                                            | array of object  | [Texte long multilingue](../datatypes/text_long_multilingual )   |
| - [media](#contributeur_media )                                     | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au contributeur.                                                                                                                                                                                                                                                                                                                                            | array            | [Voir les détails](#contributeur_media )                                    |
| - [typicalContributionType](#contributeur_typicalContributionType ) | Énumération des types de contributions habituellement faites par le contributeur.                                                                                                                                                                                                                                                                                                                                                           | array            | [Voir les détails](#contributeur_typicalContributionType )                  |
| - [hasGeographicRelation](#contributeur_hasGeographicRelation )     | Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.                                                                                                                                                                                                                                                                                                        | array            | [Voir les détails](#contributeur_hasGeographicRelation )                    |
| - [hasMembers](#contributeur_hasMembers )                           | Énumération des membres des groupes, troupes et collectifs, etc.                                                                                                                                                                                                                                                                                                                                                                            | array            | [Voir les détails](#contributeur_hasMembers )                               |

### <a name="contributeur_type"></a>3.1. Propriété `Contribution > contributeur > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Contributor"`

### <a name="contributeur_contributorType"></a>3.2. Propriété `Contribution > contributeur > contributorType`

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

### <a name="contributeur_identifier"></a>3.3. Propriété `Contribution > contributeur > identifier`

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

| Chaque item du tableau doit être                   | Description |
| -------------------------------------------------- | ----------- |
| [identifier items](#contributeur_identifier_items) | -           |

#### <a name="contributeur_identifier_items"></a>3.3.1. Contribution > contributeur > identifier > identifier items

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `combinaison`    |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Any of(Option)                                    |
| ------------------------------------------------- |
| [item 0](#contributeur_identifier_items_anyOf_i0) |
| [item 1](#contributeur_identifier_items_anyOf_i1) |

##### <a name="contributeur_identifier_items_anyOf_i0"></a>3.3.1.1. Propriété `Contribution > contributeur > identifier > identifier items > anyOf > item 0`

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Propriété                                                           | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | Type de donnée | Définition |
| ------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | ---------- |
| + [type](#contributeur_identifier_items_anyOf_i0_type )             | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | const          | -          |
| + [propertyID](#contributeur_identifier_items_anyOf_i0_propertyID ) | Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles. | string         | -          |
| + [value](#contributeur_identifier_items_anyOf_i0_value )           | L'identifiant lui-même                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | string         | -          |

###### <a name="contributeur_identifier_items_anyOf_i0_type"></a>3.3.1.1.1. Propriété `Contribution > contributeur > identifier > identifier items > anyOf > item 0 > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"PropertyValue"`

###### <a name="contributeur_identifier_items_anyOf_i0_propertyID"></a>3.3.1.1.2. Propriété `Contribution > contributeur > identifier > identifier items > anyOf > item 0 > propertyID`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |

**Description:** Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles.

| Restrictions          |   |
| --------------------- | - |
| **Longueur minimale** | 1 |

###### <a name="contributeur_identifier_items_anyOf_i0_value"></a>3.3.1.1.3. Propriété `Contribution > contributeur > identifier > identifier items > anyOf > item 0 > value`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |

**Description:** L'identifiant lui-même

| Restrictions          |   |
| --------------------- | - |
| **Longueur minimale** | 1 |

##### <a name="contributeur_identifier_items_anyOf_i1"></a>3.3.1.2. Propriété `Contribution > contributeur > identifier > identifier items > anyOf > item 1`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Non      |
| **Format** | `uri`    |

**Description:** Un identifiant URI sous forme de chaîne de caractères.

### <a name="contributeur_name"></a>3.4. Propriété `Contribution > contributeur > name`

**Nom:** Texte court multilingue

|                         |                                        |
| ----------------------- | -------------------------------------- |
| **Type**                | `array of object`                      |
| **Requis**              | Oui                                    |
| **Même définition que** | [label](#contributionType_items_label) |

**Description:** Nom complet du contributeur, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. Le prénom et le nom de sont pas traités dans des propriétés distinctes à cause de la diversité des appellations de contributions, qui sont parfois des personnes morales.

Exemples: Michel Rivard, Les Trois Accords, Koriass, Desjardins, Spectra.

### <a name="contributeur_alternateName"></a>3.5. Propriété `Contribution > contributeur > alternateName`

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

| Chaque item du tableau doit être                             | Description                                                                                 |
| ------------------------------------------------------------ | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#contributeur_alternateName_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

#### <a name="contributeur_alternateName_items"></a>3.5.1. Contribution > contributeur > alternateName > Texte court multilingue

**Nom:** Texte court multilingue

|                         |                                        |
| ----------------------- | -------------------------------------- |
| **Type**                | `array of object`                      |
| **Requis**              | Non                                    |
| **Même définition que** | [label](#contributionType_items_label) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

### <a name="contributeur_description"></a>3.6. Propriété `Contribution > contributeur > description`

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

| Chaque item du tableau doit être                     | Description |
| ---------------------------------------------------- | ----------- |
| [description items](#contributeur_description_items) | -           |

#### <a name="contributeur_description_items"></a>3.6.1. Contribution > contributeur > description > description items

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                                         | Description                                                                                                                                                | Type de donnée | Définition                                         |
| ------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [lang](#contributeur_description_items_lang )   | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). | string         | [Code de langue](../datatypes/partials/language ) |
| + [value](#contributeur_description_items_value ) | Texte long avec formatage, incluant des paragraphes et des balises HTML autorisées b, i, u, sup et sub.                                                    | string         | [](../datatypes/partials/authorized_html )        |

##### <a name="contributeur_description_items_lang"></a>3.6.1.1. Propriété `Contribution > contributeur > description > description items > lang`

**Nom:** Code de langue

|                         |                                                  |
| ----------------------- | ------------------------------------------------ |
| **Type**                | `string`                                         |
| **Requis**              | Oui                                              |
| **Même définition que** | [lang](#contributionType_items_label_items_lang) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

##### <a name="contributeur_description_items_value"></a>3.6.1.2. Propriété `Contribution > contributeur > description > description items > value`

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

### <a name="contributeur_shortDescription"></a>3.7. Propriété `Contribution > contributeur > shortDescription`

**Nom:** Texte long multilingue

|                         |                                          |
| ----------------------- | ---------------------------------------- |
| **Type**                | `array of object`                        |
| **Requis**              | Non                                      |
| **Même définition que** | [description](#contributeur_description) |

**Description:** Description résumée du contributeur. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage.

### <a name="contributeur_media"></a>3.8. Propriété `Contribution > contributeur > media`

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

| Chaque item du tableau doit être   | Description                                                                                          |
| ---------------------------------- | ---------------------------------------------------------------------------------------------------- |
| [Média](#contributeur_media_items) | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

#### <a name="contributeur_media_items"></a>3.8.1. Contribution > contributeur > media > Média

**Nom:** Média

|                               |                              |
| ----------------------------- | ---------------------------- |
| **Type**                      | `object`                     |
| **Requis**                    | Non                          |
| **Propriétés additionnelles** | Tout type permis             |
| **Défini dans**               | [Média](../media) |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

| Propriété                                                       | Description                                                                                                                                                                                                                                    | Type de donnée  | Définition                                                                  |
| --------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------------------------- |
| + [type](#contributeur_media_items_type )                       | -                                                                                                                                                                                                                                              | const           | -                                                                           |
| - [sequenceNumber](#contributeur_media_items_sequenceNumber )   | Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                       | integer         | -                                                                           |
| - [usageNote](#contributeur_media_items_usageNote )             | Texte libre permettant d'identifier les usages possibles du média (à l'intention des opérateurs des systèmes, pas du grand public, et donc pas pour publication).                                                                              | string          | [Texte court](../datatypes/text_short )                          |
| + [url](#contributeur_media_items_url )                         | URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible                                                                                     | string          | -                                                                           |
| - [inLanguage](#contributeur_media_items_inLanguage )           | Langue au format ISO 639-1.                                                                                                                                                                                                                    | string          | [Code de langue](../datatypes/partials/language )                |
| - [license](#contributeur_media_items_license )                 | Licence d'utilisation du média. Une valeur vide ou non définie correspond à un média libre de droits. Si des conditions s'appliquent, elles doivent être définies dans cette propriété, ou sur le web à une URL intégrée dans cette propriété. | array           | [Voir les détails](#contributeur_media_items_license )                      |
| - [creditText](#contributeur_media_items_creditText )           | Crédits associés au média.                                                                                                                                                                                                                     | array           | [Voir les détails](#contributeur_media_items_creditText )                   |
| - [copyrightHolder](#contributeur_media_items_copyrightHolder ) | Personne ou organisation détenant les droits d'auteur du média.                                                                                                                                                                                | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| - [description](#contributeur_media_items_description )         | Description courte (pouvant par exemple servir de «alt description» sur le web).                                                                                                                                                               | array           | [Voir les détails](#contributeur_media_items_description )                  |

##### <a name="contributeur_media_items_type"></a>3.8.1.1. Propriété `Contribution > contributeur > media > Média > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Media"`

##### <a name="contributeur_media_items_sequenceNumber"></a>3.8.1.2. Propriété `Contribution > contributeur > media > Média > sequenceNumber`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Non       |

**Description:** Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).

##### <a name="contributeur_media_items_usageNote"></a>3.8.1.3. Propriété `Contribution > contributeur > media > Média > usageNote`

**Nom:** Texte court

|                         |                                                  |
| ----------------------- | ------------------------------------------------ |
| **Type**                | `string`                                         |
| **Requis**              | Non                                              |
| **Même définition que** | [vocabulary](#contributionType_items_vocabulary) |

**Description:** Texte libre permettant d'identifier les usages possibles du média (à l'intention des opérateurs des systèmes, pas du grand public, et donc pas pour publication).

##### <a name="contributeur_media_items_url"></a>3.8.1.4. Propriété `Contribution > contributeur > media > Média > url`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |
| **Format** | `uri`    |

**Description:** URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible

##### <a name="contributeur_media_items_inLanguage"></a>3.8.1.5. Propriété `Contribution > contributeur > media > Média > inLanguage`

**Nom:** Code de langue

|                         |                                                  |
| ----------------------- | ------------------------------------------------ |
| **Type**                | `string`                                         |
| **Requis**              | Non                                              |
| **Même définition que** | [lang](#contributionType_items_label_items_lang) |

**Description:** Langue au format ISO 639-1.

##### <a name="contributeur_media_items_license"></a>3.8.1.6. Propriété `Contribution > contributeur > media > Média > license`

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

| Chaque item du tableau doit être                                   | Description                                                                                 |
| ------------------------------------------------------------------ | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#contributeur_media_items_license_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

###### <a name="contributeur_media_items_license_items"></a>3.8.1.6.1. Contribution > contributeur > media > Média > license > Texte court multilingue

**Nom:** Texte court multilingue

|                         |                                        |
| ----------------------- | -------------------------------------- |
| **Type**                | `array of object`                      |
| **Requis**              | Non                                    |
| **Même définition que** | [label](#contributionType_items_label) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

##### <a name="contributeur_media_items_creditText"></a>3.8.1.7. Propriété `Contribution > contributeur > media > Média > creditText`

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

| Chaque item du tableau doit être                                      | Description                                                                                 |
| --------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#contributeur_media_items_creditText_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

###### <a name="contributeur_media_items_creditText_items"></a>3.8.1.7.1. Contribution > contributeur > media > Média > creditText > Texte court multilingue

**Nom:** Texte court multilingue

|                         |                                        |
| ----------------------- | -------------------------------------- |
| **Type**                | `array of object`                      |
| **Requis**              | Non                                    |
| **Même définition que** | [label](#contributionType_items_label) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

##### <a name="contributeur_media_items_copyrightHolder"></a>3.8.1.8. Propriété `Contribution > contributeur > media > Média > copyrightHolder`

**Nom:** Texte court multilingue

|                         |                                        |
| ----------------------- | -------------------------------------- |
| **Type**                | `array of object`                      |
| **Requis**              | Non                                    |
| **Même définition que** | [label](#contributionType_items_label) |

**Description:** Personne ou organisation détenant les droits d'auteur du média.

##### <a name="contributeur_media_items_description"></a>3.8.1.9. Propriété `Contribution > contributeur > media > Média > description`

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

| Chaque item du tableau doit être                                      | Description                                                                     |
| --------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| [Texte long multilingue](#contributeur_media_items_description_items) | Énumération de textes longs associés à un code de langue au standard ISO 639-1. |

###### <a name="contributeur_media_items_description_items"></a>3.8.1.9.1. Contribution > contributeur > media > Média > description > Texte long multilingue

**Nom:** Texte long multilingue

|                         |                                          |
| ----------------------- | ---------------------------------------- |
| **Type**                | `array of object`                        |
| **Requis**              | Non                                      |
| **Même définition que** | [description](#contributeur_description) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

### <a name="contributeur_typicalContributionType"></a>3.9. Propriété `Contribution > contributeur > typicalContributionType`

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

| Chaque item du tableau doit être                    | Description                                                                             |
| --------------------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#contributeur_typicalContributionType_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

#### <a name="contributeur_typicalContributionType_items"></a>3.9.1. Contribution > contributeur > typicalContributionType > Term

**Nom:** Term

|                               |                                 |
| ----------------------------- | ------------------------------- |
| **Type**                      | `object`                        |
| **Requis**                    | Non                             |
| **Propriétés additionnelles** | Tout type permis                |
| **Même définition que**       | [Term](#contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

### <a name="contributeur_hasGeographicRelation"></a>3.10. Propriété `Contribution > contributeur > hasGeographicRelation`

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

| Chaque item du tableau doit être                                                           | Description                                                                                                                          |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ |
| [Association Géographique (GeographicRelation)](#contributeur_hasGeographicRelation_items) | Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc. |

#### <a name="contributeur_hasGeographicRelation_items"></a>3.10.1. Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation)

**Nom:** Association Géographique (GeographicRelation)

|                               |                                                                                    |
| ----------------------------- | ---------------------------------------------------------------------------------- |
| **Type**                      | `object`                                                                           |
| **Requis**                    | Non                                                                                |
| **Propriétés additionnelles** | Pas permis                                                                         |
| **Défini dans**               | [Association Géographique (GeographicRelation)](../geographic_relation) |

**Description:** Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.

| Propriété                                                                       | Description                                                                                             | Type de donnée | Définition                                         |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [type](#contributeur_hasGeographicRelation_items_type )                       | -                                                                                                       | const          | -                                                  |
| - [relationType](#contributeur_hasGeographicRelation_items_relationType )       | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.                 | object         | [Term](term )                          |
| - [addressCountry](#contributeur_hasGeographicRelation_items_addressCountry )   | Code ISO 3166-1 alpha-3 à 3 caractères représentant un pays.                                            | string         | [Code Pays](../datatypes/country_code ) |
| - [addressRegion](#contributeur_hasGeographicRelation_items_addressRegion )     | Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne) | string         | [Texte court](../datatypes/text_short ) |
| - [addressLocality](#contributeur_hasGeographicRelation_items_addressLocality ) | Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne) | string         | [Texte court](../datatypes/text_short ) |

##### <a name="contributeur_hasGeographicRelation_items_type"></a>3.10.1.1. Propriété `Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"GeographicRelation"`

##### <a name="contributeur_hasGeographicRelation_items_relationType"></a>3.10.1.2. Propriété `Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > relationType`

**Nom:** Term

|                               |                                 |
| ----------------------------- | ------------------------------- |
| **Type**                      | `object`                        |
| **Requis**                    | Non                             |
| **Propriétés additionnelles** | Tout type permis                |
| **Même définition que**       | [Term](#contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

##### <a name="contributeur_hasGeographicRelation_items_addressCountry"></a>3.10.1.3. Propriété `Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > addressCountry`

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

##### <a name="contributeur_hasGeographicRelation_items_addressRegion"></a>3.10.1.4. Propriété `Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > addressRegion`

**Nom:** Texte court

|                         |                                                  |
| ----------------------- | ------------------------------------------------ |
| **Type**                | `string`                                         |
| **Requis**              | Non                                              |
| **Même définition que** | [vocabulary](#contributionType_items_vocabulary) |

**Description:** Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne)

##### <a name="contributeur_hasGeographicRelation_items_addressLocality"></a>3.10.1.5. Propriété `Contribution > contributeur > hasGeographicRelation > Association Géographique (GeographicRelation) > addressLocality`

**Nom:** Texte court

|                         |                                                  |
| ----------------------- | ------------------------------------------------ |
| **Type**                | `string`                                         |
| **Requis**              | Non                                              |
| **Même définition que** | [vocabulary](#contributionType_items_vocabulary) |

**Description:** Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne)

### <a name="contributeur_hasMembers"></a>3.11. Propriété `Contribution > contributeur > hasMembers`

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

| Chaque item du tableau doit être              | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| --------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contributor](#contributeur_hasMembers_items) | les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre). |

#### <a name="contributeur_hasMembers_items"></a>3.11.1. Contribution > contributeur > hasMembers > Contributor

**Nom:** Contributor

|                               |                               |
| ----------------------------- | ----------------------------- |
| **Type**                      | `object`                      |
| **Requis**                    | Non                           |
| **Propriétés additionnelles** | Tout type permis              |
| **Même définition que**       | [contributeur](#contributeur) |

**Description:** les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre).

## <a name="sequenceNumber"></a>4. Propriété `Contribution > sequenceNumber`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Non       |

**Description:** Précision sur l'ordre de présentation des contributions (les nombres plus petits correspondent à des contributions qui doivent être présentées en premier).

## <a name="usageNote"></a>5. Propriété `Contribution > usageNote`

**Nom:** Texte court

|                         |                                                  |
| ----------------------- | ------------------------------------------------ |
| **Type**                | `string`                                         |
| **Requis**              | Non                                              |
| **Même définition que** | [vocabulary](#contributionType_items_vocabulary) |

**Description:** Note concernant la contribution, à l'intention des exploitants des systèmes d'information (et donc pas du grand public). Il peut s'agir d'une précision sur le type de contribution, qui ne pourrait pas être exprimée à travers la propriété Types. Les informations compilées dans les notes pourraient être utilisées pour améliorer les vocabulaires contrôllés.

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-01-07 at 12:04:40 -0500
