# Contributor

**Nom:** Contributor

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

**Description:** les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre).

| Propriété                                              | Description                                                                                                                                                                                                                                                                                                                                                                                                                                 | Type de donnée   | Définition                                                                  |
| ------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- | --------------------------------------------------------------------------- |
| + [type](#type )                                       | -                                                                                                                                                                                                                                                                                                                                                                                                                                           | const            | -                                                                           |
| + [contributorType](#contributorType )                 | Indication à l'effet qu'il s'agit d'une personne physique ou d'une personne morale.                                                                                                                                                                                                                                                                                                                                                         | enum (of string) | [Type de contributeur](../vocabularies/contributor_type )        |
| + [identifier](#identifier )                           | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.                                                                                                                                                                                                                                                                                                           | array            | [identifier](../identifier )                                     |
| + [name](#name )                                       | Nom complet du contributeur, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. Le prénom et le nom de sont pas traités dans des propriétés distinctes à cause de la diversité des appellations de contributions, qui sont parfois des personnes morales.<br /><br />Exemples: Michel Rivard, Les Trois Accords, Koriass, Desjardins, Spectra. | array of object  | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| - [alternateName](#alternateName )                     | Autres appellations parfois utilisées pour le contributeur.<br /><br />Exemple: «Béatrice Martin» comme nom alternatif de «Cœur de pirate».<br />Exemple: «Compagnie Jean-Duceppe» comme nom alternatif de «Duceppe».                                                                                                                                                                                                                       | array            | [Voir les détails](#alternateName )                                         |
| - [description](#description )                         | Énumération de textes longs associés à un code de langue au standard ISO 639-1.                                                                                                                                                                                                                                                                                                                                                             | array of object  | [Texte long multilingue](../datatypes/text_long_multilingual )   |
| - [shortDescription](#shortDescription )               | Description résumée du contributeur. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage.                                                                                                                                                                                                                                                                                                            | array of object  | [Texte long multilingue](../datatypes/text_long_multilingual )   |
| - [media](#media )                                     | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au contributeur.                                                                                                                                                                                                                                                                                                                                            | array            | [Voir les détails](#media )                                                 |
| - [typicalContributionType](#typicalContributionType ) | Énumération des types de contributions habituellement faites par le contributeur.                                                                                                                                                                                                                                                                                                                                                           | array            | [Voir les détails](#typicalContributionType )                               |
| - [hasGeographicRelation](#hasGeographicRelation )     | Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.                                                                                                                                                                                                                                                                                                        | array            | [Voir les détails](#hasGeographicRelation )                                 |
| - [hasMembers](#hasMembers )                           | Énumération des membres des groupes, troupes et collectifs, etc.                                                                                                                                                                                                                                                                                                                                                                            | array            | [Voir les détails](#hasMembers )                                            |

## <a name="type"></a>1. Propriété `Contributor > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Contributor"`

## <a name="contributorType"></a>2. Propriété `Contributor > contributorType`

**Nom:** Type de contributeur

|                 |                                                                |
| --------------- | -------------------------------------------------------------- |
| **Type**        | `enum (of string)`                                             |
| **Requis**      | Oui                                                            |
| **Défini dans** | [contributorType](../vocabularies/contributor_type) |

**Description:** Indication à l'effet qu'il s'agit d'une personne physique ou d'une personne morale.

[Voir la documentation de Type de contributeur](../vocabularies/contributor_type)

## <a name="identifier"></a>3. Propriété `Contributor > identifier`

**Nom:** identifier

|                 |                                        |
| --------------- | -------------------------------------- |
| **Type**        | `array`                                |
| **Requis**      | Oui                                    |
| **Défini dans** | [identifier](../identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

[Voir la documentation de identifier](../identifier)

## <a name="name"></a>4. Propriété `Contributor > name`

**Nom:** Texte court multilingue

|                 |                                                         |
| --------------- | ------------------------------------------------------- |
| **Type**        | `array of object`                                       |
| **Requis**      | Oui                                                     |
| **Défini dans** | [name](../datatypes/text_short_multilingual) |

**Description:** Nom complet du contributeur, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. Le prénom et le nom de sont pas traités dans des propriétés distinctes à cause de la diversité des appellations de contributions, qui sont parfois des personnes morales.

Exemples: Michel Rivard, Les Trois Accords, Koriass, Desjardins, Spectra.

[Voir la documentation de Texte court multilingue](../datatypes/text_short_multilingual)

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

[Voir la documentation de Texte long multilingue](../datatypes/text_long_multilingual)

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

[Voir la documentation de Média](../media)

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

[Voir la documentation de Term](../term)

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

[Voir la documentation de Association Géographique (GeographicRelation)](../geographic_relation)

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
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-01-19 at 16:15:47 -0500
