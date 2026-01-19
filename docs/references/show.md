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

## <a name="identifier"></a>3. Propriété `Spectacle (Show) > identifier`

**Nom:** identifier

|                 |                                        |
| --------------- | -------------------------------------- |
| **Type**        | `array`                                |
| **Requis**      | Oui                                    |
| **Défini dans** | [identifier](../identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

[Voir la documentation de identifier](../identifier)

## <a name="name"></a>4. Propriété `Spectacle (Show) > name`

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

[Voir la documentation de Texte court multilingue](../datatypes/text_short_multilingual)

## <a name="alternateName"></a>5. Propriété `Spectacle (Show) > alternateName`

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

[Voir la documentation de Texte court multilingue](../datatypes/text_short_multilingual)

## <a name="description"></a>6. Propriété `Spectacle (Show) > description`

**Nom:** Texte long multilingue

|                 |                                                               |
| --------------- | ------------------------------------------------------------- |
| **Type**        | `array of object`                                             |
| **Requis**      | Oui                                                           |
| **Défini dans** | [description](../datatypes/text_long_multilingual) |

**Description:** Description du spectacle

[Voir la documentation de Texte long multilingue](../datatypes/text_long_multilingual)

## <a name="shortDescription"></a>7. Propriété `Spectacle (Show) > shortDescription`

**Nom:** Texte long multilingue

|                         |                             |
| ----------------------- | --------------------------- |
| **Type**                | `array of object`           |
| **Requis**              | Non                         |
| **Même définition que** | [description](#description) |

**Description:** Description résumée du spectacle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage.

## <a name="media"></a>8. Propriété `Spectacle (Show) > media`

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

### <a name="media_items"></a>8.1. Spectacle (Show) > media > Média

**Nom:** Média

|                               |                              |
| ----------------------------- | ---------------------------- |
| **Type**                      | `object`                     |
| **Requis**                    | Non                          |
| **Propriétés additionnelles** | Tout type permis             |
| **Défini dans**               | [Média](../media) |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

[Voir la documentation de Média](../media)

## <a name="hasContribution"></a>9. Propriété `Spectacle (Show) > hasContribution`

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

### <a name="hasContribution_items"></a>9.1. Spectacle (Show) > hasContribution > Contribution

**Nom:** Contribution

|                               |                                            |
| ----------------------------- | ------------------------------------------ |
| **Type**                      | `object`                                   |
| **Requis**                    | Non                                        |
| **Propriétés additionnelles** | Tout type permis                           |
| **Défini dans**               | [Contribution](../contribution) |

**Description:** Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

[Voir la documentation de Contribution](../contribution)

## <a name="mainEntityOfPage"></a>10. Propriété `Spectacle (Show) > mainEntityOfPage`

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

### <a name="mainEntityOfPage_items"></a>10.1. Spectacle (Show) > mainEntityOfPage > WebPage

**Nom:** WebPage

|                               |                                   |
| ----------------------------- | --------------------------------- |
| **Type**                      | `object`                          |
| **Requis**                    | Non                               |
| **Propriétés additionnelles** | Tout type permis                  |
| **Défini dans**               | [WebPage](../web_page) |

[Voir la documentation de WebPage](../web_page)

## <a name="hasRelatedWork"></a>11. Propriété `Spectacle (Show) > hasRelatedWork`

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

### <a name="hasRelatedWork_items"></a>11.1. Spectacle (Show) > hasRelatedWork > Oeuvre Associée

**Nom:** Oeuvre Associée

|                               |                                               |
| ----------------------------- | --------------------------------------------- |
| **Type**                      | `object`                                      |
| **Requis**                    | Non                                           |
| **Propriétés additionnelles** | Tout type permis                              |
| **Défini dans**               | [Oeuvre Associée](#/definitions/WorkRelation) |

**Description:** Objets d'association à une oeuvre.

[Voir la documentation de Oeuvre Associée](#/definitions/WorkRelation)

## <a name="discipline"></a>12. Propriété `Spectacle (Show) > discipline`

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

### <a name="discipline_items"></a>12.1. Spectacle (Show) > discipline > Term

**Nom:** Term

|                               |                                                       |
| ----------------------------- | ----------------------------------------------------- |
| **Type**                      | `object`                                              |
| **Requis**                    | Non                                                   |
| **Propriétés additionnelles** | Tout type permis                                      |
| **Même définition que**       | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

## <a name="audience"></a>13. Propriété `Spectacle (Show) > audience`

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

### <a name="audience_items"></a>13.1. Spectacle (Show) > audience > Term

**Nom:** Term

|                               |                                                       |
| ----------------------------- | ----------------------------------------------------- |
| **Type**                      | `object`                                              |
| **Requis**                    | Non                                                   |
| **Propriétés additionnelles** | Tout type permis                                      |
| **Même définition que**       | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

## <a name="inLanguage"></a>14. Propriété `Spectacle (Show) > inLanguage`

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

### <a name="inLanguage_items"></a>14.1. Spectacle (Show) > inLanguage > Code de langue

**Nom:** Code de langue

|                         |                          |
| ----------------------- | ------------------------ |
| **Type**                | `string`                 |
| **Requis**              | Non                      |
| **Même définition que** | [lang](#name_items_lang) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

## <a name="supportMaterialLanguage"></a>15. Propriété `Spectacle (Show) > supportMaterialLanguage`

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

### <a name="supportMaterialLanguage_items"></a>15.1. Spectacle (Show) > supportMaterialLanguage > Code de langue

**Nom:** Code de langue

|                         |                          |
| ----------------------- | ------------------------ |
| **Type**                | `string`                 |
| **Requis**              | Non                      |
| **Même définition que** | [lang](#name_items_lang) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

## <a name="showWithoutWords"></a>16. Propriété `Spectacle (Show) > showWithoutWords`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Indication à l'effet que le spectacle ne contient pas de paroles.

## <a name="contentType"></a>17. Propriété `Spectacle (Show) > contentType`

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

### <a name="contentType_items"></a>17.1. Spectacle (Show) > contentType > Term

**Nom:** Term

|                               |                                                       |
| ----------------------------- | ----------------------------------------------------- |
| **Type**                      | `object`                                              |
| **Requis**                    | Non                                                   |
| **Propriétés additionnelles** | Tout type permis                                      |
| **Même définition que**       | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

## <a name="contentWarning"></a>18. Propriété `Spectacle (Show) > contentWarning`

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

### <a name="contentWarning_items"></a>18.1. Spectacle (Show) > contentWarning > Term

**Nom:** Term

|                               |                                                       |
| ----------------------------- | ----------------------------------------------------- |
| **Type**                      | `object`                                              |
| **Requis**                    | Non                                                   |
| **Propriétés additionnelles** | Tout type permis                                      |
| **Même définition que**       | [Term](#hasContribution_items_contributionType_items) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

## <a name="hasPerformance"></a>19. Propriété `Spectacle (Show) > hasPerformance`

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

### <a name="hasPerformance_items"></a>19.1. Spectacle (Show) > hasPerformance > Représentation (Performance)

**Nom:** Représentation (Performance)

|                               |                                                           |
| ----------------------------- | --------------------------------------------------------- |
| **Type**                      | `object`                                                  |
| **Requis**                    | Non                                                       |
| **Propriétés additionnelles** | Tout type permis                                          |
| **Défini dans**               | [Représentation (Performance)](../performance) |

**Description:** Décrit une représentation, qui est un événement unique associé à un lieu, une date et une heure, et qui peut inclure des informations sur les artistes, les œuvres présentées, et d'autres détails pertinents.

[Voir la documentation de Représentation (Performance)](../performance)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-01-19 at 16:04:18 -0500
