# Représentation (Performance)

Décrit une représentation, qui est un événement unique associé à un lieu, une date et une heure, et qui peut inclure des informations sur les artistes, les œuvres présentées, et d'autres détails pertinents.

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Propriété                                                                                   | Description                                                                                                                                                                                                                                                                                             | Priorité           | Type et définition                                                                  |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------ | ----------------------------------------------------------------------------------- |
| [type](#type )                                                                              | -                                                                                                                                                                                                                                                                                                       | Obligatoire        | const                                                                               |
| [identifier](#identifier )<br/>_Identifiant_                                                | Énumération des identifiants connus.                                                                                                                                                                                                                                                                    | Obligatoire (1..N) | [Identifiant (Identifier)](../identifier )                               |
| [startDateTime](#startDateTime )<br/>_Date et heure de début_                               | Date et heure de début de la représentation. Voir https://json-schema.org/understanding-json-schema/references/type#dates-and-times.                                                                                                                                                                    | Obligatoire        | string (date-time)                                                                  |
| [endDateTime](#endDateTime )<br/>_Date et heure de fin_                                     | Date et heure de fin de la représentation. Voir https://json-schema.org/understanding-json-schema/references/type#dates-and-times.                                                                                                                                                                      | Optionnel          | string (date-time)                                                                  |
| [duration](#duration )<br/>_Durée_                                                          | Durée de la représentation en format ISO-8601                                                                                                                                                                                                                                                           | Optionnel          | string                                                                              |
| [previousStartDateTime](#previousStartDateTime )<br/>_Date et heure de début précédente_    | Date et heure de début initialement prévus pour la représentation, dans le cas où il s'agit d'une représentation reportée. Voir https://json-schema.org/understanding-json-schema/references/type#dates-and-times.                                                                                      | Optionnel          | string (date-time)                                                                  |
| [hasIntermission](#hasIntermission )<br/>_Entracte_                                         | Indique la présence d'une ou plusieurs entractes                                                                                                                                                                                                                                                        | Optionnel          | boolean                                                                             |
| [isExtra](#isExtra )<br/>_Supplémentaire_                                                   | Indique si la représentation est une représentation supplémentaire                                                                                                                                                                                                                                      | Optionnel          | boolean                                                                             |
| [description](#description )<br/>_Description_                                              | Propriété utilisée seulement si la description de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle s'appliquent.                                                 | Optionnel          | [Texte long multilingue](../datatypes/text_long_multilingual )           |
| [shortDescription](#shortDescription )<br/>_Description courte_                             | Propriété utilisée seulement si la description courte de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle s'appliquent.                                          | Optionnel          | [Texte long multilingue](../datatypes/text_long_multilingual )           |
| [media](#media )<br/>_Médias_                                                               | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) supplémentaires associés à la représentation, lorsqu'ils sont disponibles et qu'il n'est pas possible de les associer au spectacle. Les consignes d'utilisation de la classe Spectacle s'appliquent.                            | Optionnel (0..N)   | Tableau d'objets de type [Média (Media)](../media )                      |
| [alternateName](#alternateName )<br/>_Nom alternatif_                                       | Propriété utilisée seulement si l'autre nom de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle] s'appliquent                                                    | Optionnel          | [Texte court multilingue](../datatypes/text_short_multilingual )         |
| [mainEntityOfPage](#mainEntityOfPage )<br/>_Pages web_                                      | Propriété utilisée seulement si l'URL du PageWeb associée à la représentation est différente de celle du spectacle. Ne pas confondre à l'URL de billetterie de la section concernant les offres. Les consignes d'utilisation de la classe Spectacle s'appliquent.                                       | Optionnel (0..N)   | Tableau d'objets de type [WebPage](../web_page )                         |
| [hasAdditionalContribution](#hasAdditionalContribution )<br/>_Contributions additionnelles_ | Contributions à la représentation qui ne sont pas documentées dans le spectacle. Les contributions de la représentation sont donc l'ajout des contributions du spectacle et des contributions supplémentaires, desquelles ont retire les contributions retirées.                                        | Optionnel (0..N)   | Tableau d'objets de type [Contribution (Contribution)](../contribution ) |
| [hasRemovedContribution](#hasRemovedContribution )<br/>_Contributions retirées_             | Contributions documentées dans le spectacle qui ne s'appliquent pas à la représentation. Les contributions de la représentation sont donc l'ajout des contributions du spectacle et des contributions supplémentaires, desquelles ont retire les contributions retirées                                 | Optionnel (0..N)   | Tableau d'objets de type [Contribution (Contribution)](../contribution ) |
| [inSeries](#inSeries )<br/>_Série_                                                          | Identification des séries dont la représentation fait partie.                                                                                                                                                                                                                                           | Optionnel (0..N)   | Tableau d'objets de type [Série de représentations (Series)](../series ) |
| [hasOffer](#hasOffer )<br/>_Offres_                                                         | Description des différentes modalités pour assister à la représentation. Il peut y avoir des modalités pour le présentiel et/ou le virtuel. Les modalités pour le présentiel et le virtuel doivent être documentées pour un spectacle hybride. Une représentation contient donc au maximum deux offres. | Obligatoire (1..1) | Tableau d'objets de type [Offre (Offer)](../offer )                      |

## <a name="type"></a>1. Propriété `Représentation (Performance) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Performance"`

## <a name="identifier"></a>2. Propriété `Représentation (Performance) > identifier` (Identifiant)

Énumération des identifiants connus.

|                 |                                        |
| --------------- | -------------------------------------- |
| **Type**        | `array`                                |
| **Requis**      | Oui                                    |
| **Défini dans** | [identifier](../identifier) |

[Voir la documentation de Identifiant (Identifier)](../identifier)

## <a name="startDateTime"></a>3. Propriété `Représentation (Performance) > startDateTime` (Date et heure de début)

Date et heure de début de la représentation. Voir https://json-schema.org/understanding-json-schema/references/type#dates-and-times.

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Oui         |
| **Format** | `date-time` |

## <a name="endDateTime"></a>4. Propriété `Représentation (Performance) > endDateTime` (Date et heure de fin)

Date et heure de fin de la représentation. Voir https://json-schema.org/understanding-json-schema/references/type#dates-and-times.

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

## <a name="duration"></a>5. Propriété `Représentation (Performance) > duration` (Durée)

Durée de la représentation en format ISO-8601

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Non      |

**Exemple:**

```json
"PT1H30M"
```

| Restrictions                                   |                                                                                                                                                                                                                                                                                                                                                           |
| ---------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Doit correspondre à l'expression régulière** | ```^P(?=\d\|T\d)(\d+Y)?(\d+M)?(\d+W)?(\d+D)?(T(?=\d)(\d+H)?(\d+M)?(\d+(\.\d+)?S)?)?$``` [Test](https://regex101.com/?regex=%5EP%28%3F%3D%5Cd%7CT%5Cd%29%28%5Cd%2BY%29%3F%28%5Cd%2BM%29%3F%28%5Cd%2BW%29%3F%28%5Cd%2BD%29%3F%28T%28%3F%3D%5Cd%29%28%5Cd%2BH%29%3F%28%5Cd%2BM%29%3F%28%5Cd%2B%28%5C.%5Cd%2B%29%3FS%29%3F%29%3F%24&testString=%22PT1H30M%22) |
| **Minimum**                                    | &ge; 1                                                                                                                                                                                                                                                                                                                                                    |

## <a name="previousStartDateTime"></a>6. Propriété `Représentation (Performance) > previousStartDateTime` (Date et heure de début précédente)

Date et heure de début initialement prévus pour la représentation, dans le cas où il s'agit d'une représentation reportée. Voir https://json-schema.org/understanding-json-schema/references/type#dates-and-times.

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

## <a name="hasIntermission"></a>7. Propriété `Représentation (Performance) > hasIntermission` (Entracte)

Indique la présence d'une ou plusieurs entractes

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Non       |

## <a name="isExtra"></a>8. Propriété `Représentation (Performance) > isExtra` (Supplémentaire)

Indique si la représentation est une représentation supplémentaire

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Non       |

## <a name="description"></a>9. Propriété `Représentation (Performance) > description` (Description)

Propriété utilisée seulement si la description de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle s'appliquent.

|                 |                                                               |
| --------------- | ------------------------------------------------------------- |
| **Type**        | `array of object`                                             |
| **Requis**      | Non                                                           |
| **Défini dans** | [description](../datatypes/text_long_multilingual) |

[Voir la documentation de Texte long multilingue](../datatypes/text_long_multilingual)

## <a name="shortDescription"></a>10. Propriété `Représentation (Performance) > shortDescription` (Description courte)

Propriété utilisée seulement si la description courte de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle s'appliquent.

|                 |                                                               |
| --------------- | ------------------------------------------------------------- |
| **Type**        | `array of object`                                             |
| **Requis**      | Non                                                           |
| **Défini dans** | [description](../datatypes/text_long_multilingual) |

[Voir la documentation de Texte long multilingue](../datatypes/text_long_multilingual)

## <a name="media"></a>11. Propriété `Représentation (Performance) > media` (Médias)

Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) supplémentaires associés à la représentation, lorsqu'ils sont disponibles et qu'il n'est pas possible de les associer au spectacle. Les consignes d'utilisation de la classe Spectacle s'appliquent.

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

### <a name="media_items"></a>11.1. Représentation (Performance) > media > Média (Media)

Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

|                               |                                      |
| ----------------------------- | ------------------------------------ |
| **Type**                      | `object`                             |
| **Requis**                    | Non                                  |
| **Propriétés additionnelles** | Tout type permis                     |
| **Défini dans**               | [Média (Media)](../media) |

[Voir la documentation de Média (Media)](../media)

## <a name="alternateName"></a>12. Propriété `Représentation (Performance) > alternateName` (Nom alternatif)

Propriété utilisée seulement si l'autre nom de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle] s'appliquent

|                 |                                                                            |
| --------------- | -------------------------------------------------------------------------- |
| **Type**        | `array of object`                                                          |
| **Requis**      | Non                                                                        |
| **Défini dans** | [Texte court multilingue](../datatypes/text_short_multilingual) |

[Voir la documentation de Texte court multilingue](../datatypes/text_short_multilingual)

## <a name="mainEntityOfPage"></a>13. Propriété `Représentation (Performance) > mainEntityOfPage` (Pages web)

Propriété utilisée seulement si l'URL du PageWeb associée à la représentation est différente de celle du spectacle. Ne pas confondre à l'URL de billetterie de la section concernant les offres. Les consignes d'utilisation de la classe Spectacle s'appliquent.

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

### <a name="mainEntityOfPage_items"></a>13.1. Représentation (Performance) > mainEntityOfPage > WebPage

|                               |                                   |
| ----------------------------- | --------------------------------- |
| **Type**                      | `object`                          |
| **Requis**                    | Non                               |
| **Propriétés additionnelles** | Tout type permis                  |
| **Défini dans**               | [WebPage](../web_page) |

[Voir la documentation de WebPage](../web_page)

## <a name="hasAdditionalContribution"></a>14. Propriété `Représentation (Performance) > hasAdditionalContribution` (Contributions additionnelles)

Contributions à la représentation qui ne sont pas documentées dans le spectacle. Les contributions de la représentation sont donc l'ajout des contributions du spectacle et des contributions supplémentaires, desquelles ont retire les contributions retirées.

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

| Chaque item du tableau doit être                                | Description                                                                                                                                                                 |
| --------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contribution (Contribution)](#hasAdditionalContribution_items) | Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné. |

### <a name="hasAdditionalContribution_items"></a>14.1. Représentation (Performance) > hasAdditionalContribution > Contribution (Contribution)

Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

|                               |                                                           |
| ----------------------------- | --------------------------------------------------------- |
| **Type**                      | `object`                                                  |
| **Requis**                    | Non                                                       |
| **Propriétés additionnelles** | Tout type permis                                          |
| **Défini dans**               | [Contribution (Contribution)](../contribution) |

[Voir la documentation de Contribution (Contribution)](../contribution)

## <a name="hasRemovedContribution"></a>15. Propriété `Représentation (Performance) > hasRemovedContribution` (Contributions retirées)

Contributions documentées dans le spectacle qui ne s'appliquent pas à la représentation. Les contributions de la représentation sont donc l'ajout des contributions du spectacle et des contributions supplémentaires, desquelles ont retire les contributions retirées

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

| Chaque item du tableau doit être                             | Description                                                                                                                                                                 |
| ------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Contribution (Contribution)](#hasRemovedContribution_items) | Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné. |

### <a name="hasRemovedContribution_items"></a>15.1. Représentation (Performance) > hasRemovedContribution > Contribution (Contribution)

Cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.

|                               |                                                                 |
| ----------------------------- | --------------------------------------------------------------- |
| **Type**                      | `object`                                                        |
| **Requis**                    | Non                                                             |
| **Propriétés additionnelles** | Tout type permis                                                |
| **Même définition que**       | [Contribution (Contribution)](#hasAdditionalContribution_items) |

## <a name="inSeries"></a>16. Propriété `Représentation (Performance) > inSeries` (Série)

Identification des séries dont la représentation fait partie.

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

| Chaque item du tableau doit être                     | Description                                                                                                                                                                                                                                      |
| ---------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [Série de représentations (Series)](#inSeries_items) | cette classe permet de regrouper des représentations n’étant pas nécessairement toutes associées à un même spectacle, mais liées entre elles par des éléments de commercialisation ou de modalités d’accès. Un festival est un exemple de série. |

### <a name="inSeries_items"></a>16.1. Représentation (Performance) > inSeries > Série de représentations (Series)

cette classe permet de regrouper des représentations n’étant pas nécessairement toutes associées à un même spectacle, mais liées entre elles par des éléments de commercialisation ou de modalités d’accès. Un festival est un exemple de série.

|                               |                                                           |
| ----------------------------- | --------------------------------------------------------- |
| **Type**                      | `object`                                                  |
| **Requis**                    | Non                                                       |
| **Propriétés additionnelles** | Tout type permis                                          |
| **Défini dans**               | [Série de représentations (Series)](../series) |

[Voir la documentation de Série de représentations (Series)](../series)

## <a name="hasOffer"></a>17. Propriété `Représentation (Performance) > hasOffer` (Offres)

Description des différentes modalités pour assister à la représentation. Il peut y avoir des modalités pour le présentiel et/ou le virtuel. Les modalités pour le présentiel et le virtuel doivent être documentées pour un spectacle hybride. Une représentation contient donc au maximum deux offres.

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Oui     |

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

Permet de décrire les propriétés d’une offre associée à une représentation ou une série, par exemple le prix et la disponibilité.

|                               |                                                 |
| ----------------------------- | ----------------------------------------------- |
| **Type**                      | `object`                                        |
| **Requis**                    | Non                                             |
| **Propriétés additionnelles** | Tout type permis                                |
| **Même définition que**       | [Offre (Offer)](#inSeries_items_hasOffer_items) |

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-03-19 at 15:49:41 -0400
