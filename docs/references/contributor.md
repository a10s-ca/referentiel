# Contributeur (contributor)

Les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre).

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Propriété                                                                                 | Description                                                                                                                                                                                                                                                                                                                                                                                                                                 | Priorité           | Type et définition                                                                                           |
| ----------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------ | ------------------------------------------------------------------------------------------------------------ |
| [type](#type )                                                                            | -                                                                                                                                                                                                                                                                                                                                                                                                                                           | Obligatoire        | const                                                                                                        |
| [contributorType](#contributorType )<br/>_Types de contributeur_                          | Indication à l'effet qu'il s'agit d'une personne physique ou d'une personne morale.                                                                                                                                                                                                                                                                                                                                                         | Obligatoire        | [Type de contributeur](../vocabularies/contributor_type )                                         |
| [identifier](#identifier )<br/>_Identifiant_                                              | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.                                                                                                                                                                                                                                                                                                           | Obligatoire (1..N) | [Identifiant (Identifier)](../identifier )                                                        |
| [name](#name )<br/>_Nom_                                                                  | Nom complet du contributeur, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. Le prénom et le nom de sont pas traités dans des propriétés distinctes à cause de la diversité des appellations de contributions, qui sont parfois des personnes morales.<br /><br />Exemples: Michel Rivard, Les Trois Accords, Koriass, Desjardins, Spectra. | Obligatoire        | [Texte court multilingue](../datatypes/text_short_multilingual )                                  |
| [alternateName](#alternateName )<br/>_Nom alternatif_                                     | Autres appellations parfois utilisées pour le contributeur.<br /><br />Exemple: «Béatrice Martin» comme nom alternatif de «Cœur de pirate».<br />Exemple: «Compagnie Jean-Duceppe» comme nom alternatif de «Duceppe».                                                                                                                                                                                                                       | Optionnel (0..N)   | Tableau d'objets de type [name](../datatypes/text_short_multilingual )                            |
| [description](#description )<br/>_Description_                                            | Énumération de textes longs associés à un code de langue au standard ISO 639-1.                                                                                                                                                                                                                                                                                                                                                             | Optionnel          | [Texte long multilingue](../datatypes/text_long_multilingual )                                    |
| [shortDescription](#shortDescription )<br/>_Description courte_                           | Description résumée du contributeur. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage.                                                                                                                                                                                                                                                                                                            | Optionnel          | [Texte long multilingue](../datatypes/text_long_multilingual )                                    |
| [media](#media )<br/>_Médias_                                                             | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au contributeur.                                                                                                                                                                                                                                                                                                                                            | Optionnel (0..N)   | Tableau d'objets de type [Média (Media)](../media )                                               |
| [typicalContributionType](#typicalContributionType )<br/>_Types de contribution typiques_ | Énumération des types de contributions habituellement faites par le contributeur.                                                                                                                                                                                                                                                                                                                                                           | Optionnel (0..N)   | Tableau d'objets de type [Terme (Term)](../term )                                                 |
| [hasGeographicRelation](#hasGeographicRelation )<br/>_Relations géographiques_            | Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.                                                                                                                                                                                                                                                                                                        | Optionnel (0..N)   | Tableau d'objets de type [Association Géographique (GeographicRelation)](../geographic_relation ) |
| [hasMembers](#hasMembers )<br/>_Membres_                                                  | Énumération des membres des groupes, troupes et collectifs, etc.                                                                                                                                                                                                                                                                                                                                                                            | Optionnel (0..N)   | Tableau d'objets de type [Contributeur (contributor)](../contributor )                            |

## <a name="type"></a>1. Propriété `Contributeur (contributor) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Contributor"`

## <a name="contributorType"></a>2. Propriété `Contributeur (contributor) > contributorType` (Types de contributeur)

Indication à l'effet qu'il s'agit d'une personne physique ou d'une personne morale.

|                 |                                                                |
| --------------- | -------------------------------------------------------------- |
| **Type**        | `enum (of string)`                                             |
| **Requis**      | Oui                                                            |
| **Défini dans** | [contributorType](../vocabularies/contributor_type) |

[Voir la documentation de Type de contributeur](../vocabularies/contributor_type)

## <a name="identifier"></a>3. Propriété `Contributeur (contributor) > identifier` (Identifiant)

Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

|                 |                                        |
| --------------- | -------------------------------------- |
| **Type**        | `array`                                |
| **Requis**      | Oui                                    |
| **Défini dans** | [identifier](../identifier) |

[Voir la documentation de Identifiant (Identifier)](../identifier)

## <a name="name"></a>4. Propriété `Contributeur (contributor) > name` (Nom)

Nom complet du contributeur, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. Le prénom et le nom de sont pas traités dans des propriétés distinctes à cause de la diversité des appellations de contributions, qui sont parfois des personnes morales.

Exemples: Michel Rivard, Les Trois Accords, Koriass, Desjardins, Spectra.

|                 |                                                         |
| --------------- | ------------------------------------------------------- |
| **Type**        | `array of object`                                       |
| **Requis**      | Oui                                                     |
| **Défini dans** | [name](../datatypes/text_short_multilingual) |

[Voir la documentation de Texte court multilingue](../datatypes/text_short_multilingual)

## <a name="alternateName"></a>5. Propriété `Contributeur (contributor) > alternateName` (Nom alternatif)

Autres appellations parfois utilisées pour le contributeur.

Exemple: «Béatrice Martin» comme nom alternatif de «Cœur de pirate».
Exemple: «Compagnie Jean-Duceppe» comme nom alternatif de «Duceppe».

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

| Chaque item du tableau doit être                | Description                                                                                 |
| ----------------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#alternateName_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

### <a name="alternateName_items"></a>5.1. Contributeur (contributor) > alternateName > Texte court multilingue

Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

|                         |                   |
| ----------------------- | ----------------- |
| **Type**                | `array of object` |
| **Requis**              | Non               |
| **Même définition que** | [name](#name)     |

## <a name="description"></a>6. Propriété `Contributeur (contributor) > description` (Description)

Énumération de textes longs associés à un code de langue au standard ISO 639-1.

|                 |                                                               |
| --------------- | ------------------------------------------------------------- |
| **Type**        | `array of object`                                             |
| **Requis**      | Non                                                           |
| **Défini dans** | [description](../datatypes/text_long_multilingual) |

[Voir la documentation de Texte long multilingue](../datatypes/text_long_multilingual)

## <a name="shortDescription"></a>7. Propriété `Contributeur (contributor) > shortDescription` (Description courte)

Description résumée du contributeur. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage.

|                 |                                                               |
| --------------- | ------------------------------------------------------------- |
| **Type**        | `array of object`                                             |
| **Requis**      | Non                                                           |
| **Défini dans** | [description](../datatypes/text_long_multilingual) |

[Voir la documentation de Texte long multilingue](../datatypes/text_long_multilingual)

## <a name="media"></a>8. Propriété `Contributeur (contributor) > media` (Médias)

Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au contributeur.

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

| Chaque item du tableau doit être | Description                                                                                          |
| -------------------------------- | ---------------------------------------------------------------------------------------------------- |
| [Média (Media)](#media_items)    | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

### <a name="media_items"></a>8.1. Contributeur (contributor) > media > Média (Media)

Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

|                               |                                      |
| ----------------------------- | ------------------------------------ |
| **Type**                      | `object`                             |
| **Requis**                    | Non                                  |
| **Propriétés additionnelles** | Tout type permis                     |
| **Défini dans**               | [Média (Media)](../media) |

[Voir la documentation de Média (Media)](../media)

## <a name="typicalContributionType"></a>9. Propriété `Contributeur (contributor) > typicalContributionType` (Types de contribution typiques)

Énumération des types de contributions habituellement faites par le contributeur.

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

| Chaque item du tableau doit être               | Description                                                                             |
| ---------------------------------------------- | --------------------------------------------------------------------------------------- |
| [Terme (Term)](#typicalContributionType_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="typicalContributionType_items"></a>9.1. Contributeur (contributor) > typicalContributionType > Terme (Term)

Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

|                               |                                    |
| ----------------------------- | ---------------------------------- |
| **Type**                      | `object`                           |
| **Requis**                    | Non                                |
| **Propriétés additionnelles** | Tout type permis                   |
| **Défini dans**               | [Terme (Term)](../term) |

[Voir la documentation de Terme (Term)](../term)

## <a name="hasGeographicRelation"></a>10. Propriété `Contributeur (contributor) > hasGeographicRelation` (Relations géographiques)

Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.

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

| Chaque item du tableau doit être                                              | Description                                                                                                                          |
| ----------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| [Association Géographique (GeographicRelation)](#hasGeographicRelation_items) | Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc. |

### <a name="hasGeographicRelation_items"></a>10.1. Contributeur (contributor) > hasGeographicRelation > Association Géographique (GeographicRelation)

Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.

|                               |                                                                                    |
| ----------------------------- | ---------------------------------------------------------------------------------- |
| **Type**                      | `object`                                                                           |
| **Requis**                    | Non                                                                                |
| **Propriétés additionnelles** | Pas permis                                                                         |
| **Défini dans**               | [Association Géographique (GeographicRelation)](../geographic_relation) |

[Voir la documentation de Association Géographique (GeographicRelation)](../geographic_relation)

## <a name="hasMembers"></a>11. Propriété `Contributeur (contributor) > hasMembers` (Membres)

Énumération des membres des groupes, troupes et collectifs, etc.

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

| Chaque item du tableau doit être                | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ----------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contributeur (contributor)](#hasMembers_items) | Les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre). |

### <a name="hasMembers_items"></a>11.1. Contributeur (contributor) > hasMembers > Contributeur (contributor)

Les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre).

|                               |                                     |
| ----------------------------- | ----------------------------------- |
| **Type**                      | `object`                            |
| **Requis**                    | Non                                 |
| **Propriétés additionnelles** | Tout type permis                    |
| **Même définition que**       | [Contributeur (contributor)](#root) |

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-02-09 at 21:53:34 -0500
