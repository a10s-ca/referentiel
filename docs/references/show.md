# Spectacle (Show)

La classe centrale du référentiel. Elle permet de documenter ce qui relève du spectacle au sens d'œuvre mise en scène. Par contraste, cela exclut donc les éléments descriptifs des représentations.

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                                                                       | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | Priorité           | Type et définition                                                                  |
| ------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------ | ----------------------------------------------------------------------------------- |
| [@context](#@context )                                                          | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | Obligatoire        | const                                                                               |
| [type](#type )                                                                  | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | Obligatoire        | const                                                                               |
| [identifier](#identifier )<br/>_Identifiant_                                    | Identification du spectacle, avec tous les identifiants connus.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | Obligatoire (1..N) | [Identifiant (Identifier)](../identifier )                               |
| [name](#name )<br/>_Nom_                                                        | Nom du spectacle                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | Obligatoire        | [Texte court multilingue](../datatypes/text_short_multilingual )         |
| [alternateName](#alternateName )<br/>_Nom alternatif_                           | Élément qui ne fait pas partie du nom, mais qui le complète, sans toutefois relever de la description elle-même.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | Optionnel          | [Texte court multilingue](../datatypes/text_short_multilingual )         |
| [description](#description )<br/>_Description_                                  | Description du spectacle                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Obligatoire        | [Texte long multilingue](../datatypes/text_long_multilingual )           |
| [shortDescription](#shortDescription )<br/>_Description courte_                 | Description résumée du spectacle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Optionnel          | [Texte long multilingue](../datatypes/text_long_multilingual )           |
| [media](#media )<br/>_Médias_                                                   | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au spectacle.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Optionnel (0..N)   | Tableau d'objets de type [Média (Media)](../media )                      |
| [hasContribution](#hasContribution )<br/>_Contributions_                        | Énumération des contributions. Il peut s'agir de contribution à la création (ex: auteur.trice, metteur.se en scène), de contributions à l'exécution (ex: comédien.en, musicien.ne).<br /><br />Le contributeur peut être une personne ou une organisation.<br /><br />Il s'agit de contributeurs qui sont associés à toutes les représentations du spectacle. Pour les contributions spécifiques à une représentation, utiliser le champ correspondant dans la classe Représentation.<br /><br />Si un même contributeur a plusieurs contributions pour un même spectacle, il est suggéré de répéter plusieurs objets de la classe Contribution.                                                                                                                                                      | Optionnel (0..N)   | Tableau d'objets de type [Contribution (Contribution)](../contribution ) |
| [mainEntityOfPage](#mainEntityOfPage )<br/>_Pages web_                          | Vers des pages web donnant plus d'information sur le spectacle.<br /><br />Pour des besoins plus précis, par exemple des URL de critiques du spectacle, la propriété Médias, qui permet d'inclure des notes d'usage, peut être utilisée.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Optionnel (0..N)   | Tableau d'objets de type [WebPage](../web_page )                         |
| [hasRelatedWork](#hasRelatedWork )<br/>_Oeuvres associées_                      | Énumérations d'oeuvres, de la même discipline ou pas, qui sont associées au spectacle. Il peut s'agir du texte d'une pièce de théâtre, d'un album musical associé à un spectacle, etc. Il doit s'agir d'associations avec des oeuvres qui ne peuvent pas être identifiées aisément à travers d'autres propriétés.<br /><br />Exemple 1: les données d'une pièce de théâtre peuvent pointer vers le texte de la pièce, disponible en librairie.<br /><br />Exemple 2: les données d'un spectacle musical peuvent énumérer des enregistrements des pièces jouées lors du spectacle.<br /><br />Contre exemple: il n'est pas utile que les données d'un spectacle d'humour énumère les autres spectacles du même humoriste, car il est possible d'obtenir cette information à travers les contributeurs. | Optionnel (0..N)   | Tableau d'objets de type [Oeuvres associées](#/definitions/WorkRelation )           |
| [discipline](#discipline )<br/>_Disciplines_                                    | Identification des disciplines artistiques du spectacle.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Obligatoire (1..N) | Tableau d'objets de type [Terme (Term)](../term )                        |
| [audience](#audience )<br/>_Publics cibles_                                     | Identification des publics cibles du spectacle.<br /><br />Lorsque le vocabulaire utilisé contient un terme équivalent à « tout public », il est préférable de l'utiliser, que d'énumérer tous les types de publics.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | Obligatoire (1..N) | Tableau d'objets de type [Terme (Term)](../term )                        |
| [inLanguage](#inLanguage )<br/>_Langues_                                        | Langues utilisées dans le spectacle, en ordre décroissant d'importance. La langue principale doit donc être mentionnée en premier.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | Optionnel (0..N)   | Tableau d'objets de type [lang](../datatypes/partials/language )         |
| [supportMaterialLanguage](#supportMaterialLanguage )<br/>_Langues des supports_ | Langues pour lesquelles des artéfacts d'aide à la compréhension du spectacle sont disponibles (surtitrage, programmes, traduction simultannée...)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | Optionnel (0..N)   | Tableau d'objets de type [lang](../datatypes/partials/language )         |
| [showWithoutWords](#showWithoutWords )<br/>_Spectacle sans paroles_             | Indication à l'effet que le spectacle ne contient pas de paroles.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | Obligatoire        | boolean                                                                             |
| [contentType](#contentType )<br/>_Types de contenus_                            | Permet d'identifier certains type de contenus qui sont présents dans le spectacle.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | Optionnel (0..N)   | Tableau d'objets de type [Terme (Term)](../term )                        |
| [contentWarning](#contentWarning )<br/>_Avertissements de contenu_              | Permet d'identifier des avertissements associés au spectacle.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Optionnel (0..N)   | Tableau d'objets de type [Terme (Term)](../term )                        |
| [hasPerformance](#hasPerformance )<br/>_Représentations_                        | Énumération des représentations du spectacle, qu'elles soient passées ou futures.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | Optionnel (0..N)   | Tableau d'objets de type [Représentation (Performance)](../performance ) |

Condition particulière:
si (showWithoutWords = false) alors :

- Les propriétés suivantes sont obligatoires :

    * inLanguage

## <a name="@context"></a>1. Propriété `Spectacle (Show) > @context`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"https://datascence.ca/context.jsonld"`

## <a name="type"></a>2. Propriété `Spectacle (Show) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Show"`

## <a name="identifier"></a>3. Propriété `Spectacle (Show) > identifier` (Identifiant)

Identification du spectacle, avec tous les identifiants connus.

|                 |                                        |
| --------------- | -------------------------------------- |
| **Type**        | `array`                                |
| **Requis**      | Oui                                    |
| **Défini dans** | [identifier](../identifier) |

[Voir la documentation de Identifiant (Identifier)](../identifier)

## <a name="name"></a>4. Propriété `Spectacle (Show) > name` (Nom)

Nom du spectacle

|                 |                                                         |
| --------------- | ------------------------------------------------------- |
| **Type**        | `array of object`                                       |
| **Requis**      | Oui                                                     |
| **Défini dans** | [name](../datatypes/text_short_multilingual) |

**Exemple:**

```json
"Une Carmen pour tout le Québec"
```

[Voir la documentation de Texte court multilingue](../datatypes/text_short_multilingual)

## <a name="alternateName"></a>5. Propriété `Spectacle (Show) > alternateName` (Nom alternatif)

Élément qui ne fait pas partie du nom, mais qui le complète, sans toutefois relever de la description elle-même.

|                 |                                                         |
| --------------- | ------------------------------------------------------- |
| **Type**        | `array of object`                                       |
| **Requis**      | Non                                                     |
| **Défini dans** | [name](../datatypes/text_short_multilingual) |

**Exemple:**

```json
"Carmen au grand écran"
```

[Voir la documentation de Texte court multilingue](../datatypes/text_short_multilingual)

## <a name="description"></a>6. Propriété `Spectacle (Show) > description` (Description)

Description du spectacle

|                 |                                                               |
| --------------- | ------------------------------------------------------------- |
| **Type**        | `array of object`                                             |
| **Requis**      | Oui                                                           |
| **Défini dans** | [description](../datatypes/text_long_multilingual) |

[Voir la documentation de Texte long multilingue](../datatypes/text_long_multilingual)

## <a name="shortDescription"></a>7. Propriété `Spectacle (Show) > shortDescription` (Description courte)

Description résumée du spectacle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage.

|                 |                                                               |
| --------------- | ------------------------------------------------------------- |
| **Type**        | `array of object`                                             |
| **Requis**      | Non                                                           |
| **Défini dans** | [description](../datatypes/text_long_multilingual) |

[Voir la documentation de Texte long multilingue](../datatypes/text_long_multilingual)

## <a name="media"></a>8. Propriété `Spectacle (Show) > media` (Médias)

Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au spectacle.

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

### <a name="media_items"></a>8.1. Spectacle (Show) > media > Média (Media)

Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

|                               |                                      |
| ----------------------------- | ------------------------------------ |
| **Type**                      | `object`                             |
| **Requis**                    | Non                                  |
| **Propriétés additionnelles** | Tout type permis                     |
| **Défini dans**               | [Média (Media)](../media) |

[Voir la documentation de Média (Media)](../media)

## <a name="hasContribution"></a>9. Propriété `Spectacle (Show) > hasContribution` (Contributions)

Énumération des contributions. Il peut s'agir de contribution à la création (ex: auteur.trice, metteur.se en scène), de contributions à l'exécution (ex: comédien.en, musicien.ne).

Le contributeur peut être une personne ou une organisation.

Il s'agit de contributeurs qui sont associés à toutes les représentations du spectacle. Pour les contributions spécifiques à une représentation, utiliser le champ correspondant dans la classe Représentation.

Si un même contributeur a plusieurs contributions pour un même spectacle, il est suggéré de répéter plusieurs objets de la classe Contribution.

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

| Chaque item du tableau doit être                      | Description                                                                                                                                                                 |
| ----------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contribution (Contribution)](#hasContribution_items) | Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné. |

### <a name="hasContribution_items"></a>9.1. Spectacle (Show) > hasContribution > Contribution (Contribution)

Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

|                               |                                                           |
| ----------------------------- | --------------------------------------------------------- |
| **Type**                      | `object`                                                  |
| **Requis**                    | Non                                                       |
| **Propriétés additionnelles** | Tout type permis                                          |
| **Défini dans**               | [Contribution (Contribution)](../contribution) |

[Voir la documentation de Contribution (Contribution)](../contribution)

## <a name="mainEntityOfPage"></a>10. Propriété `Spectacle (Show) > mainEntityOfPage` (Pages web)

Vers des pages web donnant plus d'information sur le spectacle.

Pour des besoins plus précis, par exemple des URL de critiques du spectacle, la propriété Médias, qui permet d'inclure des notes d'usage, peut être utilisée.

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

| Chaque item du tableau doit être   | Description |
| ---------------------------------- | ----------- |
| [WebPage](#mainEntityOfPage_items) | -           |

### <a name="mainEntityOfPage_items"></a>10.1. Spectacle (Show) > mainEntityOfPage > WebPage

|                               |                                   |
| ----------------------------- | --------------------------------- |
| **Type**                      | `object`                          |
| **Requis**                    | Non                               |
| **Propriétés additionnelles** | Tout type permis                  |
| **Défini dans**               | [WebPage](../web_page) |

[Voir la documentation de WebPage](../web_page)

## <a name="hasRelatedWork"></a>11. Propriété `Spectacle (Show) > hasRelatedWork` (Oeuvres associées)

Énumérations d'oeuvres, de la même discipline ou pas, qui sont associées au spectacle. Il peut s'agir du texte d'une pièce de théâtre, d'un album musical associé à un spectacle, etc. Il doit s'agir d'associations avec des oeuvres qui ne peuvent pas être identifiées aisément à travers d'autres propriétés.

Exemple 1: les données d'une pièce de théâtre peuvent pointer vers le texte de la pièce, disponible en librairie.

Exemple 2: les données d'un spectacle musical peuvent énumérer des enregistrements des pièces jouées lors du spectacle.

Contre exemple: il n'est pas utile que les données d'un spectacle d'humour énumère les autres spectacles du même humoriste, car il est possible d'obtenir cette information à travers les contributeurs.

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

| Chaque item du tableau doit être           | Description                        |
| ------------------------------------------ | ---------------------------------- |
| [Oeuvres associées](#hasRelatedWork_items) | Objets d'association à une oeuvre. |

### <a name="hasRelatedWork_items"></a>11.1. Spectacle (Show) > hasRelatedWork > Oeuvres associées

Objets d'association à une oeuvre.

|                               |                                                 |
| ----------------------------- | ----------------------------------------------- |
| **Type**                      | `object`                                        |
| **Requis**                    | Non                                             |
| **Propriétés additionnelles** | Tout type permis                                |
| **Défini dans**               | [Oeuvres associées](#/definitions/WorkRelation) |

[Voir la documentation de Oeuvres associées](#/definitions/WorkRelation)

## <a name="discipline"></a>12. Propriété `Spectacle (Show) > discipline` (Disciplines)

Identification des disciplines artistiques du spectacle.

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Oui     |

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être  | Description                                                                             |
| --------------------------------- | --------------------------------------------------------------------------------------- |
| [Terme (Term)](#discipline_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="discipline_items"></a>12.1. Spectacle (Show) > discipline > Terme (Term)

Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

|                               |                                                               |
| ----------------------------- | ------------------------------------------------------------- |
| **Type**                      | `object`                                                      |
| **Requis**                    | Non                                                           |
| **Propriétés additionnelles** | Tout type permis                                              |
| **Même définition que**       | [Terme (Term)](#hasContribution_items_contributionType_items) |

## <a name="audience"></a>13. Propriété `Spectacle (Show) > audience` (Publics cibles)

Identification des publics cibles du spectacle.

Lorsque le vocabulaire utilisé contient un terme équivalent à « tout public », il est préférable de l'utiliser, que d'énumérer tous les types de publics.

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Oui     |

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être | Description                                                                             |
| -------------------------------- | --------------------------------------------------------------------------------------- |
| [Terme (Term)](#audience_items)  | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="audience_items"></a>13.1. Spectacle (Show) > audience > Terme (Term)

Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

|                               |                                                               |
| ----------------------------- | ------------------------------------------------------------- |
| **Type**                      | `object`                                                      |
| **Requis**                    | Non                                                           |
| **Propriétés additionnelles** | Tout type permis                                              |
| **Même définition que**       | [Terme (Term)](#hasContribution_items_contributionType_items) |

## <a name="inLanguage"></a>14. Propriété `Spectacle (Show) > inLanguage` (Langues)

Langues utilisées dans le spectacle, en ordre décroissant d'importance. La langue principale doit donc être mentionnée en premier.

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

| Chaque item du tableau doit être    | Description                                                                                                                                                |
| ----------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Code de langue](#inLanguage_items) | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). |

### <a name="inLanguage_items"></a>14.1. Spectacle (Show) > inLanguage > Code de langue

Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

|                         |                          |
| ----------------------- | ------------------------ |
| **Type**                | `string`                 |
| **Requis**              | Non                      |
| **Même définition que** | [lang](#name_items_lang) |

## <a name="supportMaterialLanguage"></a>15. Propriété `Spectacle (Show) > supportMaterialLanguage` (Langues des supports)

Langues pour lesquelles des artéfacts d'aide à la compréhension du spectacle sont disponibles (surtitrage, programmes, traduction simultannée...)

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

| Chaque item du tableau doit être                 | Description                                                                                                                                                |
| ------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Code de langue](#supportMaterialLanguage_items) | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). |

### <a name="supportMaterialLanguage_items"></a>15.1. Spectacle (Show) > supportMaterialLanguage > Code de langue

Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

|                         |                          |
| ----------------------- | ------------------------ |
| **Type**                | `string`                 |
| **Requis**              | Non                      |
| **Même définition que** | [lang](#name_items_lang) |

## <a name="showWithoutWords"></a>16. Propriété `Spectacle (Show) > showWithoutWords` (Spectacle sans paroles)

Indication à l'effet que le spectacle ne contient pas de paroles.

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

## <a name="contentType"></a>17. Propriété `Spectacle (Show) > contentType` (Types de contenus)

Permet d'identifier certains type de contenus qui sont présents dans le spectacle.

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

| Chaque item du tableau doit être   | Description                                                                             |
| ---------------------------------- | --------------------------------------------------------------------------------------- |
| [Terme (Term)](#contentType_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="contentType_items"></a>17.1. Spectacle (Show) > contentType > Terme (Term)

Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

|                               |                                                               |
| ----------------------------- | ------------------------------------------------------------- |
| **Type**                      | `object`                                                      |
| **Requis**                    | Non                                                           |
| **Propriétés additionnelles** | Tout type permis                                              |
| **Même définition que**       | [Terme (Term)](#hasContribution_items_contributionType_items) |

## <a name="contentWarning"></a>18. Propriété `Spectacle (Show) > contentWarning` (Avertissements de contenu)

Permet d'identifier des avertissements associés au spectacle.

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

| Chaque item du tableau doit être      | Description                                                                             |
| ------------------------------------- | --------------------------------------------------------------------------------------- |
| [Terme (Term)](#contentWarning_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

### <a name="contentWarning_items"></a>18.1. Spectacle (Show) > contentWarning > Terme (Term)

Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

|                               |                                                               |
| ----------------------------- | ------------------------------------------------------------- |
| **Type**                      | `object`                                                      |
| **Requis**                    | Non                                                           |
| **Propriétés additionnelles** | Tout type permis                                              |
| **Même définition que**       | [Terme (Term)](#hasContribution_items_contributionType_items) |

## <a name="hasPerformance"></a>19. Propriété `Spectacle (Show) > hasPerformance` (Représentations)

Énumération des représentations du spectacle, qu'elles soient passées ou futures.

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

| Chaque item du tableau doit être                      | Description                                                                                                                                                                                                    |
| ----------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Représentation (Performance)](#hasPerformance_items) | Décrit une représentation, qui est un événement unique associé à un lieu, une date et une heure, et qui peut inclure des informations sur les artistes, les œuvres présentées, et d'autres détails pertinents. |

### <a name="hasPerformance_items"></a>19.1. Spectacle (Show) > hasPerformance > Représentation (Performance)

Décrit une représentation, qui est un événement unique associé à un lieu, une date et une heure, et qui peut inclure des informations sur les artistes, les œuvres présentées, et d'autres détails pertinents.

|                               |                                                           |
| ----------------------------- | --------------------------------------------------------- |
| **Type**                      | `object`                                                  |
| **Requis**                    | Non                                                       |
| **Propriétés additionnelles** | Tout type permis                                          |
| **Défini dans**               | [Représentation (Performance)](../performance) |

[Voir la documentation de Représentation (Performance)](../performance)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-02-09 at 21:49:27 -0500
