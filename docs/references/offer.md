# Offre (Offer)

**Nom:** Offre (Offer)

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

**Description:** Permet de décrire les propriétés d’une offre associée à une représentation ou une série, par exemple le prix et la disponibilité.

| Propriété                                                        | Description                                                                                                                                                                                                                                                                                             | Type de donnée | Définition                                    |
| ---------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | --------------------------------------------- |
| + [type](#type )                                                 | -                                                                                                                                                                                                                                                                                                       | const          | -                                             |
| + [inPlace](#inPlace )                                           | Lieu associé à l'offre (physique ou virtuel).                                                                                                                                                                                                                                                           | object         | [](../place )                     |
| - [inRoom](#inRoom )                                             | Salle associée à l'offre. La salle fait partie du lieu indiqué à la propriété Lieu.                                                                                                                                                                                                                     | object         | [](../room )                      |
| - [roomConfiguration](#roomConfiguration )                       | Configuration de la salle dans le contexte de cette offre.                                                                                                                                                                                                                                              | object         | [](../room_specification )         |
| + [isSoldout](#isSoldout )                                       | Permet d'indiquer si cette offre est complète (toutes les places disponibles sont comblées). Peut-être complété par la propriété Complet depuis pour préciser à quelle date l'offre est devenue complète.                                                                                               | boolean        | -                                             |
| - [soldoutSince](#soldoutSince )                                 | Date depuis laquelle l'offre est complète. La propriété Complet doit avoir la valeur vrai pour que Complet depuis puisse être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times                                                                           | string         | -                                             |
| + [offerStatus](#offerStatus )                                   | Statut de l'offre. La valeur doit être choisie parmi les valeurs du vocabulaire contrôlé Statut de l'offre.                                                                                                                                                                                             | object         | [](../vocabularies/event_status ) |
| - [price](#price )                                               | Prix de départ en dollars canadiens.                                                                                                                                                                                                                                                                    | object         | [](../datatypes/currency )        |
| + [isAccessibleForFree](#isAccessibleForFree )                   | Indique que la présente offre est gratuite.                                                                                                                                                                                                                                                             | boolean        | -                                             |
| + [isAccessibleFromAnotherOffer](#isAccessibleFromAnotherOffer ) | Indique que la présente offre est accessible seulement lorsque le consommateur a souscrit à une autre offre.                                                                                                                                                                                            | boolean        | -                                             |
| - [preSaleStart](#preSaleStart )                                 | Date et heure du début de la prévente. Si la propriété n'est pas documentée, la date de début de disponibilité générale doit être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times                                                                       | string         | -                                             |
| - [generalSaleStart](#generalSaleStart )                         | Date et heure du début de la disponibilité générale. Si la propriété n'est pas documentée, il faut considérer que l'offre est disponible en tout temps, jusqu'à la date de début et l'heure de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times | string         | -                                             |
| + [ticketLinkNotAvailable](#ticketLinkNotAvailable )             | Indication à l'effet qu'il n'existe pas de lien permettant d'obtenir, par le web, un accès à la représentation.                                                                                                                                                                                         | boolean        | -                                             |
| - [ticketLink](#ticketLink )                                     | URL d'une page permettant de souscire à l'offre, par exemple un lien vers la page de la plateforme de billetterie.                                                                                                                                                                                      | string         | -                                             |

## <a name="autogenerated_heading_2"></a>1. If (isAccessibleForFree = false)

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

### <a name="autogenerated_heading_3"></a>1.1. Les propriétés suivantes sont obligatoires
* ticketLink

## <a name="type"></a>2. Propriété `Offre (Offer) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Offer"`

## <a name="inPlace"></a>3. Propriété `Offre (Offer) > inPlace`

|                               |                                 |
| ----------------------------- | ------------------------------- |
| **Type**                      | `object`                        |
| **Requis**                    | Oui                             |
| **Propriétés additionnelles** | Tout type permis                |
| **Défini dans**               | [inPlace](../place) |

**Description:** Lieu associé à l'offre (physique ou virtuel).

## <a name="inRoom"></a>4. Propriété `Offre (Offer) > inRoom`

|                               |                               |
| ----------------------------- | ----------------------------- |
| **Type**                      | `object`                      |
| **Requis**                    | Non                           |
| **Propriétés additionnelles** | Tout type permis              |
| **Défini dans**               | [inRoom](../room) |

**Description:** Salle associée à l'offre. La salle fait partie du lieu indiqué à la propriété Lieu.

## <a name="roomConfiguration"></a>5. Propriété `Offre (Offer) > roomConfiguration`

|                               |                                                       |
| ----------------------------- | ----------------------------------------------------- |
| **Type**                      | `object`                                              |
| **Requis**                    | Non                                                   |
| **Propriétés additionnelles** | Tout type permis                                      |
| **Défini dans**               | [roomConfiguration](../room_specification) |

**Description:** Configuration de la salle dans le contexte de cette offre.

## <a name="isSoldout"></a>6. Propriété `Offre (Offer) > isSoldout`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Permet d'indiquer si cette offre est complète (toutes les places disponibles sont comblées). Peut-être complété par la propriété Complet depuis pour préciser à quelle date l'offre est devenue complète.

## <a name="soldoutSince"></a>7. Propriété `Offre (Offer) > soldoutSince`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date depuis laquelle l'offre est complète. La propriété Complet doit avoir la valeur vrai pour que Complet depuis puisse être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times

## <a name="offerStatus"></a>8. Propriété `Offre (Offer) > offerStatus`

|                               |                                                         |
| ----------------------------- | ------------------------------------------------------- |
| **Type**                      | `object`                                                |
| **Requis**                    | Oui                                                     |
| **Propriétés additionnelles** | Tout type permis                                        |
| **Défini dans**               | [offerStatus](../vocabularies/event_status) |

**Description:** Statut de l'offre. La valeur doit être choisie parmi les valeurs du vocabulaire contrôlé Statut de l'offre.

## <a name="price"></a>9. Propriété `Offre (Offer) > price`

|                               |                                            |
| ----------------------------- | ------------------------------------------ |
| **Type**                      | `object`                                   |
| **Requis**                    | Non                                        |
| **Propriétés additionnelles** | Tout type permis                           |
| **Défini dans**               | [price](../datatypes/currency) |

**Description:** Prix de départ en dollars canadiens.

## <a name="isAccessibleForFree"></a>10. Propriété `Offre (Offer) > isAccessibleForFree`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Indique que la présente offre est gratuite.

## <a name="isAccessibleFromAnotherOffer"></a>11. Propriété `Offre (Offer) > isAccessibleFromAnotherOffer`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Indique que la présente offre est accessible seulement lorsque le consommateur a souscrit à une autre offre.

## <a name="preSaleStart"></a>12. Propriété `Offre (Offer) > preSaleStart`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date et heure du début de la prévente. Si la propriété n'est pas documentée, la date de début de disponibilité générale doit être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times

## <a name="generalSaleStart"></a>13. Propriété `Offre (Offer) > generalSaleStart`

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date et heure du début de la disponibilité générale. Si la propriété n'est pas documentée, il faut considérer que l'offre est disponible en tout temps, jusqu'à la date de début et l'heure de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times

## <a name="ticketLinkNotAvailable"></a>14. Propriété `Offre (Offer) > ticketLinkNotAvailable`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Indication à l'effet qu'il n'existe pas de lien permettant d'obtenir, par le web, un accès à la représentation.

## <a name="ticketLink"></a>15. Propriété `Offre (Offer) > ticketLink`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Non      |
| **Format** | `uri`    |

**Description:** URL d'une page permettant de souscire à l'offre, par exemple un lien vers la page de la plateforme de billetterie.

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2025-09-17 at 21:03:30 -0400
