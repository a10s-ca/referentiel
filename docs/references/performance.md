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

[Voir la documentation de identifier](../identifier)

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

[Voir la documentation de Texte long multilingue](../datatypes/text_long_multilingual)

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

[Voir la documentation de Média](../media)

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

[Voir la documentation de WebPage](../web_page)

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

[Voir la documentation de Contribution](../contribution)

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

[Voir la documentation de Série de représentations (Series)](../series)

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
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-01-19 at 16:04:18 -0500
