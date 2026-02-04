# Offre (Offer)

**Nom:** Offre (Offer)

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

**Description:** Permet de décrire les propriétés d’une offre associée à une représentation ou une série, par exemple le prix et la disponibilité.

| Propriété                                                                                              | Description                                                                                                                                                                                                                                                                                             | Priorité    | Type et définition                                            |
| ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ------------------------------------------------------------- |
| [type](#type )                                                                                         | -                                                                                                                                                                                                                                                                                                       | Obligatoire | const                                                         |
| [inPlace](#inPlace )<br/>_Lieu_                                                                        | Lieu associé à l'offre (physique ou virtuel).                                                                                                                                                                                                                                                           | Obligatoire | [Lieu (Place)](../place )                          |
| [inRoom](#inRoom )<br/>_Salle_                                                                         | Salle associée à l'offre. La salle fait partie du lieu indiqué à la propriété Lieu.                                                                                                                                                                                                                     | Optionnel   | [Salle (Room)](../room )                           |
| [roomConfiguration](#roomConfiguration )<br/>_Configuration de la salle_                               | Configuration de la salle dans le contexte de cette offre.                                                                                                                                                                                                                                              | Optionnel   | [Configuration de salle](../room_specification )   |
| [isSoldout](#isSoldout )<br/>_Complet_                                                                 | Permet d'indiquer si cette offre est complète (toutes les places disponibles sont comblées). Peut-être complété par la propriété Complet depuis pour préciser à quelle date l'offre est devenue complète.                                                                                               | Obligatoire | boolean                                                       |
| [soldoutSince](#soldoutSince )<br/>_Complet depuis_                                                    | Date depuis laquelle l'offre est complète. La propriété Complet doit avoir la valeur vrai pour que Complet depuis puisse être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times                                                                           | Optionnel   | string                                                        |
| [offerStatus](#offerStatus )<br/>_Statut de l'offre_                                                   | Statut de l'offre. La valeur doit être choisie parmi les valeurs du vocabulaire contrôlé Statut de l'offre.                                                                                                                                                                                             | Obligatoire | [Statut de l'Offre](../vocabularies/event_status ) |
| [price](#price )<br/>_Prix_                                                                            | Prix de départ en dollars canadiens.                                                                                                                                                                                                                                                                    | Optionnel   | [Montant Monétaire](../datatypes/currency )        |
| [isAccessibleForFree](#isAccessibleForFree )<br/>_Accès gratuit_                                       | Indique que la présente offre est gratuite.                                                                                                                                                                                                                                                             | Obligatoire | boolean                                                       |
| [isAccessibleFromAnotherOffer](#isAccessibleFromAnotherOffer )<br/>_Accessible depuis une autre offre_ | Indique que la présente offre est accessible seulement lorsque le consommateur a souscrit à une autre offre.                                                                                                                                                                                            | Obligatoire | boolean                                                       |
| [preSaleStart](#preSaleStart )<br/>_Début de prévente_                                                 | Date et heure du début de la prévente. Si la propriété n'est pas documentée, la date de début de disponibilité générale doit être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times                                                                       | Optionnel   | string                                                        |
| [generalSaleStart](#generalSaleStart )<br/>_Début de la vente générale_                                | Date et heure du début de la disponibilité générale. Si la propriété n'est pas documentée, il faut considérer que l'offre est disponible en tout temps, jusqu'à la date de début et l'heure de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times | Optionnel   | string                                                        |
| [ticketLinkNotAvailable](#ticketLinkNotAvailable )<br/>_Lien de billetterie indisponible_              | Indication à l'effet qu'il n'existe pas de lien permettant d'obtenir, par le web, un accès à la représentation.                                                                                                                                                                                         | Obligatoire | boolean                                                       |
| [ticketLink](#ticketLink )<br/>_Lien de billetterie_                                                   | URL d'une page permettant de souscire à l'offre, par exemple un lien vers la page de la plateforme de billetterie.                                                                                                                                                                                      | Optionnel   | string                                                        |

Condition particulière:
si (isAccessibleForFree = false) alors :

- Les propriétés suivantes sont obligatoires :

    * ticketLink

## <a name="type"></a>1. Propriété `Offre (Offer) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Offer"`

## <a name="inPlace"></a>2. Propriété `Offre (Offer) > inPlace`

**Nom:** Lieu

|                               |                                |
| ----------------------------- | ------------------------------ |
| **Type**                      | `object`                       |
| **Requis**                    | Oui                            |
| **Propriétés additionnelles** | Tout type permis               |
| **Défini dans**               | [inPlace](../place) |

**Description:** Lieu associé à l'offre (physique ou virtuel).

[Voir la documentation de Lieu (Place)](../place)

## <a name="inRoom"></a>3. Propriété `Offre (Offer) > inRoom`

**Nom:** Salle

|                               |                                    |
| ----------------------------- | ---------------------------------- |
| **Type**                      | `object`                           |
| **Requis**                    | Non                                |
| **Propriétés additionnelles** | Tout type permis                   |
| **Défini dans**               | [Salle (Room)](../room) |

**Description:** Salle associée à l'offre. La salle fait partie du lieu indiqué à la propriété Lieu.

[Voir la documentation de Salle (Room)](../room)

## <a name="roomConfiguration"></a>4. Propriété `Offre (Offer) > roomConfiguration`

**Nom:** Configuration de la salle

|                               |                                                            |
| ----------------------------- | ---------------------------------------------------------- |
| **Type**                      | `object`                                                   |
| **Requis**                    | Non                                                        |
| **Propriétés additionnelles** | Tout type permis                                           |
| **Défini dans**               | [Configuration de salle](../room_specification) |

**Description:** Configuration de la salle dans le contexte de cette offre.

[Voir la documentation de Configuration de salle](../room_specification)

## <a name="isSoldout"></a>5. Propriété `Offre (Offer) > isSoldout`

**Nom:** Complet

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Permet d'indiquer si cette offre est complète (toutes les places disponibles sont comblées). Peut-être complété par la propriété Complet depuis pour préciser à quelle date l'offre est devenue complète.

## <a name="soldoutSince"></a>6. Propriété `Offre (Offer) > soldoutSince`

**Nom:** Complet depuis

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date depuis laquelle l'offre est complète. La propriété Complet doit avoir la valeur vrai pour que Complet depuis puisse être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times

## <a name="offerStatus"></a>7. Propriété `Offre (Offer) > offerStatus`

**Nom:** Statut de l'offre

|                 |                                                        |
| --------------- | ------------------------------------------------------ |
| **Type**        | `enum (of string)`                                     |
| **Requis**      | Oui                                                    |
| **Défini dans** | [offerStatus](../vocabularies/event_status) |

**Description:** Statut de l'offre. La valeur doit être choisie parmi les valeurs du vocabulaire contrôlé Statut de l'offre.

[Voir la documentation de Statut de l'Offre](../vocabularies/event_status)

## <a name="price"></a>8. Propriété `Offre (Offer) > price`

**Nom:** Prix

|                 |                                           |
| --------------- | ----------------------------------------- |
| **Type**        | `string`                                  |
| **Requis**      | Non                                       |
| **Défini dans** | [price](../datatypes/currency) |

**Description:** Prix de départ en dollars canadiens.

[Voir la documentation de Montant Monétaire](../datatypes/currency)

## <a name="isAccessibleForFree"></a>9. Propriété `Offre (Offer) > isAccessibleForFree`

**Nom:** Accès gratuit

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Indique que la présente offre est gratuite.

## <a name="isAccessibleFromAnotherOffer"></a>10. Propriété `Offre (Offer) > isAccessibleFromAnotherOffer`

**Nom:** Accessible depuis une autre offre

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Indique que la présente offre est accessible seulement lorsque le consommateur a souscrit à une autre offre.

## <a name="preSaleStart"></a>11. Propriété `Offre (Offer) > preSaleStart`

**Nom:** Début de prévente

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date et heure du début de la prévente. Si la propriété n'est pas documentée, la date de début de disponibilité générale doit être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times

## <a name="generalSaleStart"></a>12. Propriété `Offre (Offer) > generalSaleStart`

**Nom:** Début de la vente générale

|            |             |
| ---------- | ----------- |
| **Type**   | `string`    |
| **Requis** | Non         |
| **Format** | `date-time` |

**Description:** Date et heure du début de la disponibilité générale. Si la propriété n'est pas documentée, il faut considérer que l'offre est disponible en tout temps, jusqu'à la date de début et l'heure de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times

## <a name="ticketLinkNotAvailable"></a>13. Propriété `Offre (Offer) > ticketLinkNotAvailable`

**Nom:** Lien de billetterie indisponible

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

**Description:** Indication à l'effet qu'il n'existe pas de lien permettant d'obtenir, par le web, un accès à la représentation.

## <a name="ticketLink"></a>14. Propriété `Offre (Offer) > ticketLink`

**Nom:** Lien de billetterie

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Non      |
| **Format** | `uri`    |

**Description:** URL d'une page permettant de souscire à l'offre, par exemple un lien vers la page de la plateforme de billetterie.

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-02-04 at 16:37:16 -0500
