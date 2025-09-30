# Offre (Offer)

**Nom:** Offre (Offer)

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

**Description:** Permet de décrire les propriétés d’une offre associée à une représentation ou une série, par exemple le prix et la disponibilité.

| Propriété                                                        | Description                                                                                                                                                                                                                                                                                             | Type de donnée | Définition                                                  |
| ---------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | ----------------------------------------------------------- |
| + [type](#type )                                                 | -                                                                                                                                                                                                                                                                                                       | const          | -                                                           |
| + [inPlace](#inPlace )                                           | Lieu associé à l'offre (physique ou virtuel).                                                                                                                                                                                                                                                           | object         | [](../place )                                   |
| - [inRoom](#inRoom )                                             | Salle associée à l'offre. La salle fait partie du lieu indiqué à la propriété Lieu.                                                                                                                                                                                                                     | object         | [](../room )                                    |
| - [roomConfiguration](#roomConfiguration )                       | Configuration de la salle dans le contexte de cette offre.                                                                                                                                                                                                                                              | object         | [Configuration de salle](../room_specification ) |
| + [isSoldout](#isSoldout )                                       | Permet d'indiquer si cette offre est complète (toutes les places disponibles sont comblées). Peut-être complété par la propriété Complet depuis pour préciser à quelle date l'offre est devenue complète.                                                                                               | boolean        | -                                                           |
| - [soldoutSince](#soldoutSince )                                 | Date depuis laquelle l'offre est complète. La propriété Complet doit avoir la valeur vrai pour que Complet depuis puisse être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times                                                                           | string         | -                                                           |
| + [offerStatus](#offerStatus )                                   | Statut de l'offre. La valeur doit être choisie parmi les valeurs du vocabulaire contrôlé Statut de l'offre.                                                                                                                                                                                             | object         | [](../vocabularies/event_status )               |
| - [price](#price )                                               | Prix de départ en dollars canadiens.                                                                                                                                                                                                                                                                    | object         | [](../datatypes/currency )                      |
| + [isAccessibleForFree](#isAccessibleForFree )                   | Indique que la présente offre est gratuite.                                                                                                                                                                                                                                                             | boolean        | -                                                           |
| + [isAccessibleFromAnotherOffer](#isAccessibleFromAnotherOffer ) | Indique que la présente offre est accessible seulement lorsque le consommateur a souscrit à une autre offre.                                                                                                                                                                                            | boolean        | -                                                           |
| - [preSaleStart](#preSaleStart )                                 | Date et heure du début de la prévente. Si la propriété n'est pas documentée, la date de début de disponibilité générale doit être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times                                                                       | string         | -                                                           |
| - [generalSaleStart](#generalSaleStart )                         | Date et heure du début de la disponibilité générale. Si la propriété n'est pas documentée, il faut considérer que l'offre est disponible en tout temps, jusqu'à la date de début et l'heure de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times | string         | -                                                           |
| + [ticketLinkNotAvailable](#ticketLinkNotAvailable )             | Indication à l'effet qu'il n'existe pas de lien permettant d'obtenir, par le web, un accès à la représentation.                                                                                                                                                                                         | boolean        | -                                                           |
| - [ticketLink](#ticketLink )                                     | URL d'une page permettant de souscire à l'offre, par exemple un lien vers la page de la plateforme de billetterie.                                                                                                                                                                                      | string         | -                                                           |

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

**Nom:** Configuration de salle

|                               |                                                       |
| ----------------------------- | ----------------------------------------------------- |
| **Type**                      | `object`                                              |
| **Requis**                    | Non                                                   |
| **Propriétés additionnelles** | Tout type permis                                      |
| **Défini dans**               | [roomConfiguration](../room_specification) |

**Description:** Configuration de la salle dans le contexte de cette offre.

| Propriété                                  | Description                                                                             | Type de donnée | Définition                  |
| ------------------------------------------ | --------------------------------------------------------------------------------------- | -------------- | --------------------------- |
| + [type](#roomConfiguration_type )         | -                                                                                       | const          | -                           |
| + [layout](#roomConfiguration_layout )     | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. | object         | [Term](../term ) |
| - [capacity](#roomConfiguration_capacity ) | Capacité, en nombre de spectacteurs.                                                    | integer        | -                           |

### <a name="roomConfiguration_type"></a>5.1. Propriété `Offre (Offer) > roomConfiguration > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"RoomConfiguration"`

### <a name="roomConfiguration_layout"></a>5.2. Propriété `Offre (Offer) > roomConfiguration > layout`

**Nom:** Term

|                               |                              |
| ----------------------------- | ---------------------------- |
| **Type**                      | `object`                     |
| **Requis**                    | Oui                          |
| **Propriétés additionnelles** | Tout type permis             |
| **Défini dans**               | [layout](../term) |

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

| Propriété                                                     | Description                                                                                                                                                                                                                                                                      | Type de donnée | Définition                                            |
| ------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | ----------------------------------------------------- |
| + [type](#roomConfiguration_layout_type )                     | -                                                                                                                                                                                                                                                                                | const          | -                                                     |
| + [vocabulary](#roomConfiguration_layout_vocabulary )         | Identification du vocabulaire duquel est tiré le term.<br /><br />Typiquement, cette identification correspond à l'appellation du vocabulaire dont l'usage est le plus fréquent, tout en minuscules, sans accents, et avec les espaces remplacés par des barres de soulignement. | object         | [](../datatypes/text_short )              |
| - [version](#roomConfiguration_layout_version )               | Version du vocabulaire utilisé, lorsque c'est applicable                                                                                                                                                                                                                         | object         | [](../datatypes/text_short )              |
| + [code](#roomConfiguration_layout_code )                     | Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.                                                                                                                     | object         | [](../datatypes/text_short )              |
| - [label](#roomConfiguration_layout_label )                   | Version textuelle du terme tiré du vocabulaire choisi                                                                                                                                                                                                                            | object         | [](../datatypes/text_short_multilingual ) |
| + [sequenceNumber](#roomConfiguration_layout_sequenceNumber ) | Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                                                         | integer        | -                                                     |

#### <a name="roomConfiguration_layout_type"></a>5.2.1. Propriété `Offre (Offer) > roomConfiguration > layout > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Term"`

#### <a name="roomConfiguration_layout_vocabulary"></a>5.2.2. Propriété `Offre (Offer) > roomConfiguration > layout > vocabulary`

|                               |                                                   |
| ----------------------------- | ------------------------------------------------- |
| **Type**                      | `object`                                          |
| **Requis**                    | Oui                                               |
| **Propriétés additionnelles** | Tout type permis                                  |
| **Défini dans**               | [vocabulary](../datatypes/text_short) |

**Description:** Identification du vocabulaire duquel est tiré le term.

Typiquement, cette identification correspond à l'appellation du vocabulaire dont l'usage est le plus fréquent, tout en minuscules, sans accents, et avec les espaces remplacés par des barres de soulignement.

#### <a name="roomConfiguration_layout_version"></a>5.2.3. Propriété `Offre (Offer) > roomConfiguration > layout > version`

|                               |                                                |
| ----------------------------- | ---------------------------------------------- |
| **Type**                      | `object`                                       |
| **Requis**                    | Non                                            |
| **Propriétés additionnelles** | Tout type permis                               |
| **Défini dans**               | [version](../datatypes/text_short) |

**Description:** Version du vocabulaire utilisé, lorsque c'est applicable

#### <a name="roomConfiguration_layout_code"></a>5.2.4. Propriété `Offre (Offer) > roomConfiguration > layout > code`

|                               |                                             |
| ----------------------------- | ------------------------------------------- |
| **Type**                      | `object`                                    |
| **Requis**                    | Oui                                         |
| **Propriétés additionnelles** | Tout type permis                            |
| **Défini dans**               | [code](../datatypes/text_short) |

**Description:** Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.

#### <a name="roomConfiguration_layout_label"></a>5.2.5. Propriété `Offre (Offer) > roomConfiguration > layout > label`

|                               |                                                           |
| ----------------------------- | --------------------------------------------------------- |
| **Type**                      | `object`                                                  |
| **Requis**                    | Non                                                       |
| **Propriétés additionnelles** | Tout type permis                                          |
| **Défini dans**               | [label](../datatypes/text_short_multilingual) |

**Description:** Version textuelle du terme tiré du vocabulaire choisi

#### <a name="roomConfiguration_layout_sequenceNumber"></a>5.2.6. Propriété `Offre (Offer) > roomConfiguration > layout > sequenceNumber`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Oui       |

**Description:** Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).

### <a name="roomConfiguration_capacity"></a>5.3. Propriété `Offre (Offer) > roomConfiguration > capacity`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Non       |

**Description:** Capacité, en nombre de spectacteurs.

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
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2025-09-30 at 17:17:56 -0400
