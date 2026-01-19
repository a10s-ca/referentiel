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

[Voir la documentation de identifier](../identifier)

## <a name="name"></a>3. Propriété `Série de représentations (Series) > name`

**Nom:** Texte court multilingue

|                 |                                                         |
| --------------- | ------------------------------------------------------- |
| **Type**        | `array of object`                                       |
| **Requis**      | Oui                                                     |
| **Défini dans** | [name](../datatypes/text_short_multilingual) |

**Description:** Nom de la série, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels.

[Voir la documentation de Texte court multilingue](../datatypes/text_short_multilingual)

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

[Voir la documentation de Texte long multilingue](../datatypes/text_long_multilingual)

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

[Voir la documentation de Média](../media)

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

[Voir la documentation de Contribution](../contribution)

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

[Voir la documentation de WebPage](../web_page)

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

[Voir la documentation de Offre (Offer)](../offer)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-01-19 at 16:15:47 -0500
