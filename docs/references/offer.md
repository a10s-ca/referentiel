# Offre (Offer)

**Nom:** Offre (Offer)

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

**Description:** Permet de décrire les propriétés d’une offre associée à une représentation ou une série, par exemple le prix et la disponibilité.

| Propriété                                                        | Description                                                                                                                                                                                                                                                                                             | Type de donnée   | Définition                                                    |
| ---------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------- | ------------------------------------------------------------- |
| + [type](#type )                                                 | -                                                                                                                                                                                                                                                                                                       | const            | -                                                             |
| + [inPlace](#inPlace )                                           | Lieu associé à l'offre (physique ou virtuel).                                                                                                                                                                                                                                                           | object           | [Lieu (Place)](../place )                          |
| - [inRoom](#inRoom )                                             | Salle associée à l'offre. La salle fait partie du lieu indiqué à la propriété Lieu.                                                                                                                                                                                                                     | object           | [Salle (Room)](../room )                           |
| - [roomConfiguration](#roomConfiguration )                       | Configuration de la salle dans le contexte de cette offre.                                                                                                                                                                                                                                              | object           | [Configuration de salle](../room_specification )   |
| + [isSoldout](#isSoldout )                                       | Permet d'indiquer si cette offre est complète (toutes les places disponibles sont comblées). Peut-être complété par la propriété Complet depuis pour préciser à quelle date l'offre est devenue complète.                                                                                               | boolean          | -                                                             |
| - [soldoutSince](#soldoutSince )                                 | Date depuis laquelle l'offre est complète. La propriété Complet doit avoir la valeur vrai pour que Complet depuis puisse être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times                                                                           | string           | -                                                             |
| + [offerStatus](#offerStatus )                                   | Statut de l'offre. La valeur doit être choisie parmi les valeurs du vocabulaire contrôlé Statut de l'offre.                                                                                                                                                                                             | enum (of string) | [Statut de l'Offre](../vocabularies/event_status ) |
| - [price](#price )                                               | Prix de départ en dollars canadiens.                                                                                                                                                                                                                                                                    | string           | [Montant Monétaire](../datatypes/currency )        |
| + [isAccessibleForFree](#isAccessibleForFree )                   | Indique que la présente offre est gratuite.                                                                                                                                                                                                                                                             | boolean          | -                                                             |
| + [isAccessibleFromAnotherOffer](#isAccessibleFromAnotherOffer ) | Indique que la présente offre est accessible seulement lorsque le consommateur a souscrit à une autre offre.                                                                                                                                                                                            | boolean          | -                                                             |
| - [preSaleStart](#preSaleStart )                                 | Date et heure du début de la prévente. Si la propriété n'est pas documentée, la date de début de disponibilité générale doit être utilisée. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times                                                                       | string           | -                                                             |
| - [generalSaleStart](#generalSaleStart )                         | Date et heure du début de la disponibilité générale. Si la propriété n'est pas documentée, il faut considérer que l'offre est disponible en tout temps, jusqu'à la date de début et l'heure de la représentation. Voir https://json-schema.org/understanding-json-schema/reference/type#dates-and-times | string           | -                                                             |
| + [ticketLinkNotAvailable](#ticketLinkNotAvailable )             | Indication à l'effet qu'il n'existe pas de lien permettant d'obtenir, par le web, un accès à la représentation.                                                                                                                                                                                         | boolean          | -                                                             |
| - [ticketLink](#ticketLink )                                     | URL d'une page permettant de souscire à l'offre, par exemple un lien vers la page de la plateforme de billetterie.                                                                                                                                                                                      | string           | -                                                             |

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

**Nom:** Lieu (Place)

|                               |                                |
| ----------------------------- | ------------------------------ |
| **Type**                      | `object`                       |
| **Requis**                    | Oui                            |
| **Propriétés additionnelles** | Tout type permis               |
| **Défini dans**               | [inPlace](../place) |

**Description:** Lieu associé à l'offre (physique ou virtuel).

| Propriété                                            | Description                                                                                                                                                                                                                                        | Type de donnée  | Définition                                                                        |
| ---------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------------------------------- |
| + [type](#inPlace_type )                             | -                                                                                                                                                                                                                                                  | const           | -                                                                                 |
| - [additionalType](#inPlace_additionalType )         | Identification du type de lieu. Ne pas confondre avec les caractéristiques de la salle, qui doivent être documentées dans un objet de la classe Salle.                                                                                             | object          | [Term](../term )                                                       |
| + [identifier](#inPlace_identifier )                 | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.                                                                                                                  | array           | [identifier](../identifier )                                           |
| + [name](#inPlace_name )                             | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)                                                                                                                                                        | array of object | [Texte court multilingue](../datatypes/text_short_multilingual )       |
| - [description](#inPlace_description )               | Énumération de textes longs associés à un code de langue au standard ISO 639-1.                                                                                                                                                                    | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )         |
| + [virtualPlace](#inPlace_virtualPlace )             | -                                                                                                                                                                                                                                                  | boolean         | -                                                                                 |
| - [inRoom](#inPlace_inRoom )                         | Énumération des salles présentes dans le lieu. Recommandé pour les lieux contenant plusieurs salles, ou pour documenter des informations associés à la classe Salle (par exemple, les configurations possibles) dans un lieu avec une seule salle. | array           | [Voir les détails](#inPlace_inRoom )                                              |
| - [address](#inPlace_address )                       | Coordonnées complètes du lieu.                                                                                                                                                                                                                     | object          | [Postal Address](../postal_address )                                   |
| - [mainEntityOfPage](#inPlace_mainEntityOfPage )     | URL vers des pages web donnant plus d'information sur le lieu.                                                                                                                                                                                     | array           | [Voir les détails](#inPlace_mainEntityOfPage )                                    |
| - [placeAccessibility](#inPlace_placeAccessibility ) | Caractéristiques d'accessibilité universelle pour le lieu. Des caractéristiques supplémentaires pourraient être documentées pour la ou les salles.                                                                                                 | array           | [Voir les détails](#inPlace_placeAccessibility )                                  |
| - [geoCoordinates](#inPlace_geoCoordinates )         | Coordonnées géographiques                                                                                                                                                                                                                          | object          | [Coordonnées géographiques d'un point.](../datatypes/geo_coordinates ) |

### <a name="autogenerated_heading_4"></a>3.1. If (virtualPlace = false)

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

#### <a name="autogenerated_heading_5"></a>3.1.1. Les propriétés suivantes sont obligatoires
* type
* address

### <a name="inPlace_type"></a>3.2. Propriété `Offre (Offer) > inPlace > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Place"`

### <a name="inPlace_additionalType"></a>3.3. Propriété `Offre (Offer) > inPlace > additionalType`

**Nom:** Term

|                               |                                      |
| ----------------------------- | ------------------------------------ |
| **Type**                      | `object`                             |
| **Requis**                    | Non                                  |
| **Propriétés additionnelles** | Tout type permis                     |
| **Défini dans**               | [additionalType](../term) |

**Description:** Identification du type de lieu. Ne pas confondre avec les caractéristiques de la salle, qui doivent être documentées dans un objet de la classe Salle.

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

| Propriété                                                   | Description                                                                                                                                                                                                                                                                      | Type de donnée  | Définition                                                                  |
| ----------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------------------------- |
| + [type](#inPlace_additionalType_type )                     | -                                                                                                                                                                                                                                                                                | const           | -                                                                           |
| + [vocabulary](#inPlace_additionalType_vocabulary )         | Identification du vocabulaire duquel est tiré le term.<br /><br />Typiquement, cette identification correspond à l'appellation du vocabulaire dont l'usage est le plus fréquent, tout en minuscules, sans accents, et avec les espaces remplacés par des barres de soulignement. | string          | [Texte court](../datatypes/text_short )                          |
| - [version](#inPlace_additionalType_version )               | Version du vocabulaire utilisé, lorsque c'est applicable                                                                                                                                                                                                                         | string          | [Texte court](../datatypes/text_short )                          |
| + [code](#inPlace_additionalType_code )                     | Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.                                                                                                                     | string          | [Texte court](../datatypes/text_short )                          |
| - [label](#inPlace_additionalType_label )                   | Version textuelle du terme tiré du vocabulaire choisi                                                                                                                                                                                                                            | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| + [sequenceNumber](#inPlace_additionalType_sequenceNumber ) | Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                                                         | integer         | -                                                                           |

#### <a name="inPlace_additionalType_type"></a>3.3.1. Propriété `Offre (Offer) > inPlace > additionalType > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Term"`

#### <a name="inPlace_additionalType_vocabulary"></a>3.3.2. Propriété `Offre (Offer) > inPlace > additionalType > vocabulary`

**Nom:** Texte court

|                 |                                                  |
| --------------- | ------------------------------------------------ |
| **Type**        | `string`                                         |
| **Requis**      | Oui                                              |
| **Défini dans** | [vocabulary](../datatypes/text_short) |

**Description:** Identification du vocabulaire duquel est tiré le term.

Typiquement, cette identification correspond à l'appellation du vocabulaire dont l'usage est le plus fréquent, tout en minuscules, sans accents, et avec les espaces remplacés par des barres de soulignement.

| Restrictions                                   |                                                                                                             |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Longueur minimale**                          | 1                                                                                                           |
| **Longueur maximale**                          | 500                                                                                                         |
| **Doit correspondre à l'expression régulière** | ```^(?!.*<[^>]+>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5E%3E%5D%2B%3E%29.%2A%24) |

#### <a name="inPlace_additionalType_version"></a>3.3.3. Propriété `Offre (Offer) > inPlace > additionalType > version`

**Nom:** Texte court

|                         |                                                  |
| ----------------------- | ------------------------------------------------ |
| **Type**                | `string`                                         |
| **Requis**              | Non                                              |
| **Même définition que** | [vocabulary](#inPlace_additionalType_vocabulary) |

**Description:** Version du vocabulaire utilisé, lorsque c'est applicable

#### <a name="inPlace_additionalType_code"></a>3.3.4. Propriété `Offre (Offer) > inPlace > additionalType > code`

**Nom:** Texte court

|                         |                                                  |
| ----------------------- | ------------------------------------------------ |
| **Type**                | `string`                                         |
| **Requis**              | Oui                                              |
| **Même définition que** | [vocabulary](#inPlace_additionalType_vocabulary) |

**Description:** Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé.

#### <a name="inPlace_additionalType_label"></a>3.3.5. Propriété `Offre (Offer) > inPlace > additionalType > label`

**Nom:** Texte court multilingue

|                 |                                                          |
| --------------- | -------------------------------------------------------- |
| **Type**        | `array of object`                                        |
| **Requis**      | Non                                                      |
| **Défini dans** | [label](../datatypes/text_short_multilingual) |

**Description:** Version textuelle du terme tiré du vocabulaire choisi

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Vrai                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                   | Description |
| -------------------------------------------------- | ----------- |
| [label items](#inPlace_additionalType_label_items) | -           |

##### <a name="inPlace_additionalType_label_items"></a>3.3.5.1. Offre (Offer) > inPlace > additionalType > label > label items

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                                             | Description                                                                                                                                                | Type de donnée | Définition                                         |
| ----------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [lang](#inPlace_additionalType_label_items_lang )   | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). | string         | [Code de langue](../datatypes/partials/language ) |
| + [value](#inPlace_additionalType_label_items_value ) | HTML non-autorisées                                                                                                                                        | string         | [](../datatypes/partials/no_html )                |

###### <a name="inPlace_additionalType_label_items_lang"></a>3.3.5.1.1. Propriété `Offre (Offer) > inPlace > additionalType > label > label items > lang`

**Nom:** Code de langue

|                 |                                         |
| --------------- | --------------------------------------- |
| **Type**        | `string`                                |
| **Requis**      | Oui                                     |
| **Défini dans** | [lang](../datatypes/partials/language) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

**Exemples:**

```json
"fr"
```

```json
"en"
```

```json
"mul"
```

| Restrictions                                   |                                                                                                       |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| **Longueur minimale**                          | 2                                                                                                     |
| **Doit correspondre à l'expression régulière** | ```^[a-z]{2,3}$``` [Test](https://regex101.com/?regex=%5E%5Ba-z%5D%7B2%2C3%7D%24&testString=%22fr%22) |

###### <a name="inPlace_additionalType_label_items_value"></a>3.3.5.1.2. Propriété `Offre (Offer) > inPlace > additionalType > label > label items > value`

**Nom:** Texte court

|                 |                                              |
| --------------- | -------------------------------------------- |
| **Type**        | `string`                                     |
| **Requis**      | Oui                                          |
| **Défini dans** | [vocabulary](../datatypes/partials/no_html) |

**Description:** HTML non-autorisées

| Restrictions                                   |                                                                                                             |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Longueur minimale**                          | 1                                                                                                           |
| **Longueur maximale**                          | 500                                                                                                         |
| **Doit correspondre à l'expression régulière** | ```^(?!.*<[^>]+>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5E%3E%5D%2B%3E%29.%2A%24) |

#### <a name="inPlace_additionalType_sequenceNumber"></a>3.3.6. Propriété `Offre (Offer) > inPlace > additionalType > sequenceNumber`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Oui       |

**Description:** Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).

### <a name="inPlace_identifier"></a>3.4. Propriété `Offre (Offer) > inPlace > identifier`

**Nom:** identifier

|                 |                                        |
| --------------- | -------------------------------------- |
| **Type**        | `array`                                |
| **Requis**      | Oui                                    |
| **Défini dans** | [identifier](../identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

**Exemples:**

```json
{
    "type": "PropertyValue",
    "propertyID": "isni",
    "valeur": "000000012124423X"
}
```

```json
"https://isni.org/isni/000000012124423X"
```

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | 1                      |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Vrai                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être              | Description |
| --------------------------------------------- | ----------- |
| [identifier items](#inPlace_identifier_items) | -           |

#### <a name="inPlace_identifier_items"></a>3.4.1. Offre (Offer) > inPlace > identifier > identifier items

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `combinaison`    |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Any of(Option)                               |
| -------------------------------------------- |
| [item 0](#inPlace_identifier_items_anyOf_i0) |
| [item 1](#inPlace_identifier_items_anyOf_i1) |

##### <a name="inPlace_identifier_items_anyOf_i0"></a>3.4.1.1. Propriété `Offre (Offer) > inPlace > identifier > identifier items > anyOf > item 0`

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Propriété                                                      | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | Type de donnée | Définition |
| -------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | ---------- |
| + [type](#inPlace_identifier_items_anyOf_i0_type )             | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | const          | -          |
| + [propertyID](#inPlace_identifier_items_anyOf_i0_propertyID ) | Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles. | string         | -          |
| + [value](#inPlace_identifier_items_anyOf_i0_value )           | L'identifiant lui-même                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | string         | -          |

###### <a name="inPlace_identifier_items_anyOf_i0_type"></a>3.4.1.1.1. Propriété `Offre (Offer) > inPlace > identifier > identifier items > anyOf > item 0 > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"PropertyValue"`

###### <a name="inPlace_identifier_items_anyOf_i0_propertyID"></a>3.4.1.1.2. Propriété `Offre (Offer) > inPlace > identifier > identifier items > anyOf > item 0 > propertyID`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |

**Description:** Système d'identification utilisé. Dans la mesure du possible, il est suggéré d'utiliser des URI comme identifiants, lorsque ce n'est pas possible, [l'approche préconisée par Schema.org](https://schema.org/docs/datamodel.html#identifierBg) est utilisée: propertyID doit correspondre à l'identification dont l'usage est le plus fréquent pour le système d'identification, tout en minuscules. Il est entendu que les types d'identifiants seront différents selon la classe décrite. Par exemple, le type d'identifiant ISNI s'applique bien aux contributeurs mais pas aux spectacles.

| Restrictions          |   |
| --------------------- | - |
| **Longueur minimale** | 1 |

###### <a name="inPlace_identifier_items_anyOf_i0_value"></a>3.4.1.1.3. Propriété `Offre (Offer) > inPlace > identifier > identifier items > anyOf > item 0 > value`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |

**Description:** L'identifiant lui-même

| Restrictions          |   |
| --------------------- | - |
| **Longueur minimale** | 1 |

##### <a name="inPlace_identifier_items_anyOf_i1"></a>3.4.1.2. Propriété `Offre (Offer) > inPlace > identifier > identifier items > anyOf > item 1`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Non      |
| **Format** | `uri`    |

**Description:** Un identifiant URI sous forme de chaîne de caractères.

### <a name="inPlace_name"></a>3.5. Propriété `Offre (Offer) > inPlace > name`

**Nom:** Texte court multilingue

|                         |                                        |
| ----------------------- | -------------------------------------- |
| **Type**                | `array of object`                      |
| **Requis**              | Oui                                    |
| **Même définition que** | [label](#inPlace_additionalType_label) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

### <a name="inPlace_description"></a>3.6. Propriété `Offre (Offer) > inPlace > description`

**Nom:** Texte long multilingue

|                 |                                                               |
| --------------- | ------------------------------------------------------------- |
| **Type**        | `array of object`                                             |
| **Requis**      | Non                                                           |
| **Défini dans** | [description](../datatypes/text_long_multilingual) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | 1                      |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Vrai                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                | Description |
| ----------------------------------------------- | ----------- |
| [description items](#inPlace_description_items) | -           |

#### <a name="inPlace_description_items"></a>3.6.1. Offre (Offer) > inPlace > description > description items

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                                    | Description                                                                                                                                                | Type de donnée | Définition                                         |
| -------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [lang](#inPlace_description_items_lang )   | Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry). | string         | [Code de langue](../datatypes/partials/language ) |
| + [value](#inPlace_description_items_value ) | Texte long avec formatage, incluant des paragraphes et des balises HTML autorisées b, i, u, sup et sub.                                                    | string         | [](../datatypes/partials/authorized_html )        |

##### <a name="inPlace_description_items_lang"></a>3.6.1.1. Propriété `Offre (Offer) > inPlace > description > description items > lang`

**Nom:** Code de langue

|                         |                                                  |
| ----------------------- | ------------------------------------------------ |
| **Type**                | `string`                                         |
| **Requis**              | Oui                                              |
| **Même définition que** | [lang](#inPlace_additionalType_label_items_lang) |

**Description:** Code de langue au standard ISO 639-1. Voir [language-subtag-registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).

##### <a name="inPlace_description_items_value"></a>3.6.1.2. Propriété `Offre (Offer) > inPlace > description > description items > value`

**Nom:** Texte long

|                 |                                                 |
| --------------- | ----------------------------------------------- |
| **Type**        | `string`                                        |
| **Requis**      | Oui                                             |
| **Défini dans** | [value](../datatypes/partials/authorized_html) |

**Description:** Texte long avec formatage, incluant des paragraphes et des balises HTML autorisées b, i, u, sup et sub.

**Exemples:**

```json
"<b>Texte en gras</b>"
```

```json
"<i>Texte en italique</i>"
```

```json
"<u>Texte souligné</u>"
```

```json
"<sup>Texte en exposant</sup>"
```

```json
"<sub>Texte en indice</sub>"
```

| Restrictions                                   |                                                                                                                                                                                                                                                                                                 |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Longueur maximale**                          | 6000                                                                                                                                                                                                                                                                                            |
| **Doit correspondre à l'expression régulière** | ```^(?!.*<[^bius][^>]*>)(?!.*</?(?!b\|i\|u\|sup\|sub)[^>]*>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5Ebius%5D%5B%5E%3E%5D%2A%3E%29%28%3F%21.%2A%3C%2F%3F%28%3F%21b%7Ci%7Cu%7Csup%7Csub%29%5B%5E%3E%5D%2A%3E%29.%2A%24&testString=%22%3Cb%3ETexte+en+gras%3C%2Fb%3E%22) |

### <a name="inPlace_virtualPlace"></a>3.7. Propriété `Offre (Offer) > inPlace > virtualPlace`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

### <a name="inPlace_inRoom"></a>3.8. Propriété `Offre (Offer) > inPlace > inRoom`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Énumération des salles présentes dans le lieu. Recommandé pour les lieux contenant plusieurs salles, ou pour documenter des informations associés à la classe Salle (par exemple, les configurations possibles) dans un lieu avec une seule salle.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être      | Description                                                                                                                                             |
| ------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Salle (Room)](#inPlace_inRoom_items) | Certains lieux contiennent plusieurs salles. Cette classe permet de préciser et décrire la salle utilisée dans le contexte d’une représentation donnée. |

#### <a name="inPlace_inRoom_items"></a>3.8.1. Offre (Offer) > inPlace > inRoom > Salle (Room)

**Nom:** Salle (Room)

|                               |                                    |
| ----------------------------- | ---------------------------------- |
| **Type**                      | `object`                           |
| **Requis**                    | Non                                |
| **Propriétés additionnelles** | Tout type permis                   |
| **Défini dans**               | [Salle (Room)](../room) |

**Description:** Certains lieux contiennent plusieurs salles. Cette classe permet de préciser et décrire la salle utilisée dans le contexte d’une représentation donnée.

| Propriété                                                       | Description                                                                                                                                                      | Type de donnée  | Définition                                                                  |
| --------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------------------------- |
| + [type](#inPlace_inRoom_items_type )                           | -                                                                                                                                                                | const           | -                                                                           |
| + [identifier](#inPlace_inRoom_items_identifier )               | Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.                                | array           | [identifier](../identifier )                                     |
| - [name](#inPlace_inRoom_items_name )                           | Nom de la salle, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| + [nameSameAsPlace](#inPlace_inRoom_items_nameSameAsPlace )     | -                                                                                                                                                                | boolean         | -                                                                           |
| - [description](#inPlace_inRoom_items_description )             | Énumération de textes longs associés à un code de langue au standard ISO 639-1.                                                                                  | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )   |
| - [shortDescription](#inPlace_inRoom_items_shortDescription )   | Description résumée de la salle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.                   | array of object | [Texte long multilingue](../datatypes/text_long_multilingual )   |
| - [media](#inPlace_inRoom_items_media )                         | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au lieux.                                                                        | array           | [Voir les détails](#inPlace_inRoom_items_media )                            |
| - [inPlace](#inPlace_inRoom_items_inPlace )                     | Lieu associé à l'offre (physique ou virtuel).                                                                                                                    | object          | [Lieu (Place)](../place )                                        |
| - [address](#inPlace_inRoom_items_address )                     | Coordonnées complètes de la salle, lorsque les coordonnées de la salle sont différentes ou plus précises que celles du lieu.                                     | object          | [Postal Address](../postal_address )                             |
| - [roomAccessibility](#inPlace_inRoom_items_roomAccessibility ) | Caractéristiques d'accessibilité universelle pour la salle.                                                                                                      | array           | [Voir les détails](#inPlace_inRoom_items_roomAccessibility )                |
| - [roomConfiguration](#inPlace_inRoom_items_roomConfiguration ) | Précisions sur les configurations possibles de la salle.                                                                                                         | array           | [Voir les détails](#inPlace_inRoom_items_roomConfiguration )                |

##### <a name="autogenerated_heading_6"></a>3.8.1.1. If (nameSameAsPlace = false)

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

###### <a name="autogenerated_heading_7"></a>3.8.1.1.1. Les propriétés suivantes sont obligatoires
* name

##### <a name="inPlace_inRoom_items_type"></a>3.8.1.2. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Room"`

##### <a name="inPlace_inRoom_items_identifier"></a>3.8.1.3. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > identifier`

**Nom:** identifier

|                         |                                   |
| ----------------------- | --------------------------------- |
| **Type**                | `array`                           |
| **Requis**              | Oui                               |
| **Même définition que** | [identifier](#inPlace_identifier) |

**Description:** Classe permettant d’énumérer des identifiants uniques associés à un objet donné, dans plusieurs systèmes d’information à la fois.

##### <a name="inPlace_inRoom_items_name"></a>3.8.1.4. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > name`

**Nom:** Texte court multilingue

|                         |                                        |
| ----------------------- | -------------------------------------- |
| **Type**                | `array of object`                      |
| **Requis**              | Non                                    |
| **Même définition que** | [label](#inPlace_additionalType_label) |

**Description:** Nom de la salle, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels.

##### <a name="inPlace_inRoom_items_nameSameAsPlace"></a>3.8.1.5. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > nameSameAsPlace`

|            |           |
| ---------- | --------- |
| **Type**   | `boolean` |
| **Requis** | Oui       |

##### <a name="inPlace_inRoom_items_description"></a>3.8.1.6. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > description`

**Nom:** Texte long multilingue

|                         |                                     |
| ----------------------- | ----------------------------------- |
| **Type**                | `array of object`                   |
| **Requis**              | Non                                 |
| **Même définition que** | [description](#inPlace_description) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

##### <a name="inPlace_inRoom_items_shortDescription"></a>3.8.1.7. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > shortDescription`

**Nom:** Texte long multilingue

|                         |                                     |
| ----------------------- | ----------------------------------- |
| **Type**                | `array of object`                   |
| **Requis**              | Non                                 |
| **Même définition que** | [description](#inPlace_description) |

**Description:** Description résumée de la salle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.

##### <a name="inPlace_inRoom_items_media"></a>3.8.1.8. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > media`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au lieux.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être           | Description                                                                                          |
| ------------------------------------------ | ---------------------------------------------------------------------------------------------------- |
| [Média](#inPlace_inRoom_items_media_items) | Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet. |

###### <a name="inPlace_inRoom_items_media_items"></a>3.8.1.8.1. Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média

**Nom:** Média

|                               |                              |
| ----------------------------- | ---------------------------- |
| **Type**                      | `object`                     |
| **Requis**                    | Non                          |
| **Propriétés additionnelles** | Tout type permis             |
| **Défini dans**               | [Média](../media) |

**Description:** Cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.

| Propriété                                                               | Description                                                                                                                                                                                                                                    | Type de donnée  | Définition                                                                  |
| ----------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | --------------------------------------------------------------------------- |
| + [type](#inPlace_inRoom_items_media_items_type )                       | -                                                                                                                                                                                                                                              | const           | -                                                                           |
| - [sequenceNumber](#inPlace_inRoom_items_media_items_sequenceNumber )   | Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).                                                                                                                                       | integer         | -                                                                           |
| - [usageNote](#inPlace_inRoom_items_media_items_usageNote )             | Texte libre permettant d'identifier les usages possibles du média (à l'intention des opérateurs des systèmes, pas du grand public, et donc pas pour publication).                                                                              | string          | [Texte court](../datatypes/text_short )                          |
| + [url](#inPlace_inRoom_items_media_items_url )                         | URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible                                                                                     | string          | -                                                                           |
| - [inLanguage](#inPlace_inRoom_items_media_items_inLanguage )           | Langue au format ISO 639-1.                                                                                                                                                                                                                    | string          | [Code de langue](../datatypes/partials/language )                |
| - [license](#inPlace_inRoom_items_media_items_license )                 | Licence d'utilisation du média. Une valeur vide ou non définie correspond à un média libre de droits. Si des conditions s'appliquent, elles doivent être définies dans cette propriété, ou sur le web à une URL intégrée dans cette propriété. | array           | [Voir les détails](#inPlace_inRoom_items_media_items_license )              |
| - [creditText](#inPlace_inRoom_items_media_items_creditText )           | Crédits associés au média.                                                                                                                                                                                                                     | array           | [Voir les détails](#inPlace_inRoom_items_media_items_creditText )           |
| - [copyrightHolder](#inPlace_inRoom_items_media_items_copyrightHolder ) | Personne ou organisation détenant les droits d'auteur du média.                                                                                                                                                                                | array of object | [Texte court multilingue](../datatypes/text_short_multilingual ) |
| - [description](#inPlace_inRoom_items_media_items_description )         | Description courte (pouvant par exemple servir de «alt description» sur le web).                                                                                                                                                               | array           | [Voir les détails](#inPlace_inRoom_items_media_items_description )          |

###### <a name="inPlace_inRoom_items_media_items_type"></a>3.8.1.8.1.1. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"Media"`

###### <a name="inPlace_inRoom_items_media_items_sequenceNumber"></a>3.8.1.8.1.2. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > sequenceNumber`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Non       |

**Description:** Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).

###### <a name="inPlace_inRoom_items_media_items_usageNote"></a>3.8.1.8.1.3. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > usageNote`

**Nom:** Texte court

|                         |                                                  |
| ----------------------- | ------------------------------------------------ |
| **Type**                | `string`                                         |
| **Requis**              | Non                                              |
| **Même définition que** | [vocabulary](#inPlace_additionalType_vocabulary) |

**Description:** Texte libre permettant d'identifier les usages possibles du média (à l'intention des opérateurs des systèmes, pas du grand public, et donc pas pour publication).

###### <a name="inPlace_inRoom_items_media_items_url"></a>3.8.1.8.1.4. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > url`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |
| **Format** | `uri`    |

**Description:** URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible

###### <a name="inPlace_inRoom_items_media_items_inLanguage"></a>3.8.1.8.1.5. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > inLanguage`

**Nom:** Code de langue

|                         |                                                  |
| ----------------------- | ------------------------------------------------ |
| **Type**                | `string`                                         |
| **Requis**              | Non                                              |
| **Même définition que** | [lang](#inPlace_additionalType_label_items_lang) |

**Description:** Langue au format ISO 639-1.

###### <a name="inPlace_inRoom_items_media_items_license"></a>3.8.1.8.1.6. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > license`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Licence d'utilisation du média. Une valeur vide ou non définie correspond à un média libre de droits. Si des conditions s'appliquent, elles doivent être définies dans cette propriété, ou sur le web à une URL intégrée dans cette propriété.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                                           | Description                                                                                 |
| -------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#inPlace_inRoom_items_media_items_license_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

###### <a name="inPlace_inRoom_items_media_items_license_items"></a>3.8.1.8.1.6.1. Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > license > Texte court multilingue

**Nom:** Texte court multilingue

|                         |                                        |
| ----------------------- | -------------------------------------- |
| **Type**                | `array of object`                      |
| **Requis**              | Non                                    |
| **Même définition que** | [label](#inPlace_additionalType_label) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

###### <a name="inPlace_inRoom_items_media_items_creditText"></a>3.8.1.8.1.7. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > creditText`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Crédits associés au média.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                                              | Description                                                                                 |
| ----------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| [Texte court multilingue](#inPlace_inRoom_items_media_items_creditText_items) | Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.) |

###### <a name="inPlace_inRoom_items_media_items_creditText_items"></a>3.8.1.8.1.7.1. Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > creditText > Texte court multilingue

**Nom:** Texte court multilingue

|                         |                                        |
| ----------------------- | -------------------------------------- |
| **Type**                | `array of object`                      |
| **Requis**              | Non                                    |
| **Même définition que** | [label](#inPlace_additionalType_label) |

**Description:** Énumération de textes associés à un code de langue au standard ISO 639-1 (ex: fr, en, etc.)

###### <a name="inPlace_inRoom_items_media_items_copyrightHolder"></a>3.8.1.8.1.8. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > copyrightHolder`

**Nom:** Texte court multilingue

|                         |                                        |
| ----------------------- | -------------------------------------- |
| **Type**                | `array of object`                      |
| **Requis**              | Non                                    |
| **Même définition que** | [label](#inPlace_additionalType_label) |

**Description:** Personne ou organisation détenant les droits d'auteur du média.

###### <a name="inPlace_inRoom_items_media_items_description"></a>3.8.1.8.1.9. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > description`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Description courte (pouvant par exemple servir de «alt description» sur le web).

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                                              | Description                                                                     |
| ----------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| [Texte long multilingue](#inPlace_inRoom_items_media_items_description_items) | Énumération de textes longs associés à un code de langue au standard ISO 639-1. |

###### <a name="inPlace_inRoom_items_media_items_description_items"></a>3.8.1.8.1.9.1. Offre (Offer) > inPlace > inRoom > Salle (Room) > media > Média > description > Texte long multilingue

**Nom:** Texte long multilingue

|                         |                                     |
| ----------------------- | ----------------------------------- |
| **Type**                | `array of object`                   |
| **Requis**              | Non                                 |
| **Même définition que** | [description](#inPlace_description) |

**Description:** Énumération de textes longs associés à un code de langue au standard ISO 639-1.

##### <a name="inPlace_inRoom_items_inPlace"></a>3.8.1.9. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > inPlace`

**Nom:** Lieu (Place)

|                               |                     |
| ----------------------------- | ------------------- |
| **Type**                      | `object`            |
| **Requis**                    | Non                 |
| **Propriétés additionnelles** | Tout type permis    |
| **Même définition que**       | [inPlace](#inPlace) |

**Description:** Lieu associé à l'offre (physique ou virtuel).

##### <a name="inPlace_inRoom_items_address"></a>3.8.1.10. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > address`

**Nom:** Postal Address

|                               |                                         |
| ----------------------------- | --------------------------------------- |
| **Type**                      | `object`                                |
| **Requis**                    | Non                                     |
| **Propriétés additionnelles** | Tout type permis                        |
| **Défini dans**               | [address](../postal_address) |

**Description:** Coordonnées complètes de la salle, lorsque les coordonnées de la salle sont différentes ou plus précises que celles du lieu.

| Propriété                                                           | Description                                                                                                                                   | Type de donnée | Définition                                                          |
| ------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | ------------------------------------------------------------------- |
| + [type](#inPlace_inRoom_items_address_type )                       | -                                                                                                                                             | const          | -                                                                   |
| + [streetAddress](#inPlace_inRoom_items_address_streetAddress )     | Unité, numéro municipal, type de rue, nom de rue, direction de rue. Peut aussi contenir d'autres informations.                                | string         | [Texte court](../datatypes/text_short )                  |
| + [addressLocality](#inPlace_inRoom_items_address_addressLocality ) | Nom de la ville. Peut aussi contenir le nom de la municipalité ou de la localité.                                                             | string         | [Texte court](../datatypes/text_short )                  |
| + [addressRegion](#inPlace_inRoom_items_address_addressRegion )     | Abréviation des noms de provinces recommandés par Postes Canada, ou une région dans un autre pays.                                            | string         | -                                                                   |
| + [addressCountry](#inPlace_inRoom_items_address_addressCountry )   | Code de pays à 3 caractères selon le standard ISO 3166-1                                                                                      | string         | [Code Pays](../datatypes/country_code )                  |
| + [postalCode](#inPlace_inRoom_items_address_postalCode )           | Code postal, en majuscules. Séparer les trois premiers caractères du code postal des trois derniers. On ne doit pas utiliser le trait d’union | string         | [Code Postal Canadien](../datatypes/canada_postal_code ) |

###### <a name="autogenerated_heading_8"></a>3.8.1.10.1. If (addressCountry = "CAN")

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Propriété                                                            | Description | Type de donnée   | Définition |
| -------------------------------------------------------------------- | ----------- | ---------------- | ---------- |
| - [addressRegion](#inPlace_inRoom_items_address_then_addressRegion ) | -           | enum (of string) | -          |

###### <a name="inPlace_inRoom_items_address_then_addressRegion"></a>3.8.1.10.1.1. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > address > then > addressRegion`

|            |                    |
| ---------- | ------------------ |
| **Type**   | `enum (of string)` |
| **Requis** | Non                |

Doit être un de:
* "AB"
* "BC"
* "MB"
* "NB"
* "NL"
* "NS"
* "NT"
* "NU"
* "ON"
* "PE"
* "QC"
* "SK"
* "YT"

###### <a name="autogenerated_heading_9"></a>3.8.1.10.2. Else (i.e.  addressCountry != "CAN")

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

| Propriété                                                            | Description                                                                                                | Type de donnée | Définition |
| -------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- | -------------- | ---------- |
| - [addressRegion](#inPlace_inRoom_items_address_else_addressRegion ) | Nom de la région, province ou état. Peut être un code de pays à 2 caractères selon le standard ISO 3166-1. | string         | -          |

###### <a name="inPlace_inRoom_items_address_else_addressRegion"></a>3.8.1.10.2.1. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > address > else > addressRegion`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Non      |

**Description:** Nom de la région, province ou état. Peut être un code de pays à 2 caractères selon le standard ISO 3166-1.

| Restrictions                                   |                                                                             |
| ---------------------------------------------- | --------------------------------------------------------------------------- |
| **Doit correspondre à l'expression régulière** | ```^[A-Z]{2}$``` [Test](https://regex101.com/?regex=%5E%5BA-Z%5D%7B2%7D%24) |

###### <a name="inPlace_inRoom_items_address_type"></a>3.8.1.10.3. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > address > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"PostalAddress"`

###### <a name="inPlace_inRoom_items_address_streetAddress"></a>3.8.1.10.4. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > address > streetAddress`

**Nom:** Texte court

|                         |                                                  |
| ----------------------- | ------------------------------------------------ |
| **Type**                | `string`                                         |
| **Requis**              | Oui                                              |
| **Même définition que** | [vocabulary](#inPlace_additionalType_vocabulary) |

**Description:** Unité, numéro municipal, type de rue, nom de rue, direction de rue. Peut aussi contenir d'autres informations.

###### <a name="inPlace_inRoom_items_address_addressLocality"></a>3.8.1.10.5. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > address > addressLocality`

**Nom:** Texte court

|                         |                                                  |
| ----------------------- | ------------------------------------------------ |
| **Type**                | `string`                                         |
| **Requis**              | Oui                                              |
| **Même définition que** | [vocabulary](#inPlace_additionalType_vocabulary) |

**Description:** Nom de la ville. Peut aussi contenir le nom de la municipalité ou de la localité.

###### <a name="inPlace_inRoom_items_address_addressRegion"></a>3.8.1.10.6. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > address > addressRegion`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |

**Description:** Abréviation des noms de provinces recommandés par Postes Canada, ou une région dans un autre pays.

###### <a name="inPlace_inRoom_items_address_addressCountry"></a>3.8.1.10.7. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > address > addressCountry`

**Nom:** Code Pays

|                 |                                                        |
| --------------- | ------------------------------------------------------ |
| **Type**        | `string`                                               |
| **Requis**      | Oui                                                    |
| **Défini dans** | [addressCountry](../datatypes/country_code) |

**Description:** Code de pays à 3 caractères selon le standard ISO 3166-1

| Restrictions                                   |                                                                             |
| ---------------------------------------------- | --------------------------------------------------------------------------- |
| **Longueur minimale**                          | 3                                                                           |
| **Longueur maximale**                          | 3                                                                           |
| **Doit correspondre à l'expression régulière** | ```^[A-Z]{3}$``` [Test](https://regex101.com/?regex=%5E%5BA-Z%5D%7B3%7D%24) |

###### <a name="inPlace_inRoom_items_address_postalCode"></a>3.8.1.10.8. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > address > postalCode`

**Nom:** Code Postal Canadien

|                 |                                                          |
| --------------- | -------------------------------------------------------- |
| **Type**        | `string`                                                 |
| **Requis**      | Oui                                                      |
| **Défini dans** | [postalCode](../datatypes/canada_postal_code) |

**Description:** Code postal, en majuscules. Séparer les trois premiers caractères du code postal des trois derniers. On ne doit pas utiliser le trait d’union

| Restrictions                                   |                                                                                                                                     |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| **Doit correspondre à l'expression régulière** | ```^[A-Za-z]\d[A-Za-z] \d[A-Za-z]\d$``` [Test](https://regex101.com/?regex=%5E%5BA-Za-z%5D%5Cd%5BA-Za-z%5D+%5Cd%5BA-Za-z%5D%5Cd%24) |

##### <a name="inPlace_inRoom_items_roomAccessibility"></a>3.8.1.11. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > roomAccessibility`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Caractéristiques d'accessibilité universelle pour la salle. 

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                      | Description                                                                             |
| ----------------------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#inPlace_inRoom_items_roomAccessibility_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

###### <a name="inPlace_inRoom_items_roomAccessibility_items"></a>3.8.1.11.1. Offre (Offer) > inPlace > inRoom > Salle (Room) > roomAccessibility > Term

**Nom:** Term

|                               |                                           |
| ----------------------------- | ----------------------------------------- |
| **Type**                      | `object`                                  |
| **Requis**                    | Non                                       |
| **Propriétés additionnelles** | Tout type permis                          |
| **Même définition que**       | [additionalType](#inPlace_additionalType) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

##### <a name="inPlace_inRoom_items_roomConfiguration"></a>3.8.1.12. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Précisions sur les configurations possibles de la salle.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être                                        | Description                                           |
| ----------------------------------------------------------------------- | ----------------------------------------------------- |
| [Configuration de salle](#inPlace_inRoom_items_roomConfiguration_items) | Précisions sur un configuration possible de la salle. |

###### <a name="inPlace_inRoom_items_roomConfiguration_items"></a>3.8.1.12.1. Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration > Configuration de salle

**Nom:** Configuration de salle

|                               |                                                            |
| ----------------------------- | ---------------------------------------------------------- |
| **Type**                      | `object`                                                   |
| **Requis**                    | Non                                                        |
| **Propriétés additionnelles** | Tout type permis                                           |
| **Défini dans**               | [Configuration de salle](../room_specification) |

**Description:** Précisions sur un configuration possible de la salle.

| Propriété                                                             | Description                                                                             | Type de donnée | Définition                  |
| --------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | -------------- | --------------------------- |
| + [type](#inPlace_inRoom_items_roomConfiguration_items_type )         | -                                                                                       | const          | -                           |
| + [layout](#inPlace_inRoom_items_roomConfiguration_items_layout )     | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. | object         | [Term](../term ) |
| - [capacity](#inPlace_inRoom_items_roomConfiguration_items_capacity ) | Capacité, en nombre de spectacteurs.                                                    | integer        | -                           |

###### <a name="inPlace_inRoom_items_roomConfiguration_items_type"></a>3.8.1.12.1.1. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration > Configuration de salle > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"RoomConfiguration"`

###### <a name="inPlace_inRoom_items_roomConfiguration_items_layout"></a>3.8.1.12.1.2. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration > Configuration de salle > layout`

**Nom:** Term

|                               |                                           |
| ----------------------------- | ----------------------------------------- |
| **Type**                      | `object`                                  |
| **Requis**                    | Oui                                       |
| **Propriétés additionnelles** | Tout type permis                          |
| **Même définition que**       | [additionalType](#inPlace_additionalType) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

###### <a name="inPlace_inRoom_items_roomConfiguration_items_capacity"></a>3.8.1.12.1.3. Propriété `Offre (Offer) > inPlace > inRoom > Salle (Room) > roomConfiguration > Configuration de salle > capacity`

|            |           |
| ---------- | --------- |
| **Type**   | `integer` |
| **Requis** | Non       |

**Description:** Capacité, en nombre de spectacteurs.

### <a name="inPlace_address"></a>3.9. Propriété `Offre (Offer) > inPlace > address`

**Nom:** Postal Address

|                               |                                          |
| ----------------------------- | ---------------------------------------- |
| **Type**                      | `object`                                 |
| **Requis**                    | Non                                      |
| **Propriétés additionnelles** | Tout type permis                         |
| **Même définition que**       | [address](#inPlace_inRoom_items_address) |

**Description:** Coordonnées complètes du lieu.

### <a name="inPlace_mainEntityOfPage"></a>3.10. Propriété `Offre (Offer) > inPlace > mainEntityOfPage`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** URL vers des pages web donnant plus d'information sur le lieu.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être           | Description |
| ------------------------------------------ | ----------- |
| [WebPage](#inPlace_mainEntityOfPage_items) | -           |

#### <a name="inPlace_mainEntityOfPage_items"></a>3.10.1. Offre (Offer) > inPlace > mainEntityOfPage > WebPage

**Nom:** WebPage

|                               |                                   |
| ----------------------------- | --------------------------------- |
| **Type**                      | `object`                          |
| **Requis**                    | Non                               |
| **Propriétés additionnelles** | Tout type permis                  |
| **Défini dans**               | [WebPage](../web_page) |

| Propriété                                                   | Description                                 | Type de donnée | Définition                                                   |
| ----------------------------------------------------------- | ------------------------------------------- | -------------- | ------------------------------------------------------------ |
| + [type](#inPlace_mainEntityOfPage_items_type )             | -                                           | const          | -                                                            |
| + [url](#inPlace_mainEntityOfPage_items_url )               | -                                           | string         | -                                                            |
| - [inLanguage](#inPlace_mainEntityOfPage_items_inLanguage ) | Langue de la page Web, au format ISO 639-1. | string         | [Code de langue](../datatypes/partials/language ) |

##### <a name="inPlace_mainEntityOfPage_items_type"></a>3.10.1.1. Propriété `Offre (Offer) > inPlace > mainEntityOfPage > WebPage > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"WebPage"`

##### <a name="inPlace_mainEntityOfPage_items_url"></a>3.10.1.2. Propriété `Offre (Offer) > inPlace > mainEntityOfPage > WebPage > url`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |
| **Format** | `uri`    |

##### <a name="inPlace_mainEntityOfPage_items_inLanguage"></a>3.10.1.3. Propriété `Offre (Offer) > inPlace > mainEntityOfPage > WebPage > inLanguage`

**Nom:** Code de langue

|                         |                                                  |
| ----------------------- | ------------------------------------------------ |
| **Type**                | `string`                                         |
| **Requis**              | Non                                              |
| **Même définition que** | [lang](#inPlace_additionalType_label_items_lang) |

**Description:** Langue de la page Web, au format ISO 639-1.

### <a name="inPlace_placeAccessibility"></a>3.11. Propriété `Offre (Offer) > inPlace > placeAccessibility`

|            |         |
| ---------- | ------- |
| **Type**   | `array` |
| **Requis** | Non     |

**Description:** Caractéristiques d'accessibilité universelle pour le lieu. Des caractéristiques supplémentaires pourraient être documentées pour la ou les salles.

|                            | Contraintes du tableau |
| -------------------------- | ---------------------- |
| **Nombre d'items minimum** | N/A                    |
| **Nombre d'items maximum** | N/A                    |
| **Unicité**                | Faux                   |
| **Items additionnels**     | Faux                   |
| **Validation du tuple**    | Voir plus bas          |

| Chaque item du tableau doit être          | Description                                                                             |
| ----------------------------------------- | --------------------------------------------------------------------------------------- |
| [Term](#inPlace_placeAccessibility_items) | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé. |

#### <a name="inPlace_placeAccessibility_items"></a>3.11.1. Offre (Offer) > inPlace > placeAccessibility > Term

**Nom:** Term

|                               |                                           |
| ----------------------------- | ----------------------------------------- |
| **Type**                      | `object`                                  |
| **Requis**                    | Non                                       |
| **Propriétés additionnelles** | Tout type permis                          |
| **Même définition que**       | [additionalType](#inPlace_additionalType) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

### <a name="inPlace_geoCoordinates"></a>3.12. Propriété `Offre (Offer) > inPlace > geoCoordinates`

**Nom:** Coordonnées géographiques d'un point.

|                               |                                                           |
| ----------------------------- | --------------------------------------------------------- |
| **Type**                      | `object`                                                  |
| **Requis**                    | Non                                                       |
| **Propriétés additionnelles** | Tout type permis                                          |
| **Défini dans**               | [geoCoordinates](../datatypes/geo_coordinates) |

**Description:** Coordonnées géographiques

| Propriété                                         | Description | Type de donnée | Définition |
| ------------------------------------------------- | ----------- | -------------- | ---------- |
| + [longitude](#inPlace_geoCoordinates_longitude ) | -           | number         | -          |
| + [latitude](#inPlace_geoCoordinates_latitude )   | -           | number         | -          |

#### <a name="inPlace_geoCoordinates_longitude"></a>3.12.1. Propriété `Offre (Offer) > inPlace > geoCoordinates > longitude`

|            |          |
| ---------- | -------- |
| **Type**   | `number` |
| **Requis** | Oui      |

#### <a name="inPlace_geoCoordinates_latitude"></a>3.12.2. Propriété `Offre (Offer) > inPlace > geoCoordinates > latitude`

|            |          |
| ---------- | -------- |
| **Type**   | `number` |
| **Requis** | Oui      |

## <a name="inRoom"></a>4. Propriété `Offre (Offer) > inRoom`

**Nom:** Salle (Room)

|                               |                                       |
| ----------------------------- | ------------------------------------- |
| **Type**                      | `object`                              |
| **Requis**                    | Non                                   |
| **Propriétés additionnelles** | Tout type permis                      |
| **Même définition que**       | [Salle (Room)](#inPlace_inRoom_items) |

**Description:** Salle associée à l'offre. La salle fait partie du lieu indiqué à la propriété Lieu.

## <a name="roomConfiguration"></a>5. Propriété `Offre (Offer) > roomConfiguration`

**Nom:** Configuration de salle

|                               |                                                                         |
| ----------------------------- | ----------------------------------------------------------------------- |
| **Type**                      | `object`                                                                |
| **Requis**                    | Non                                                                     |
| **Propriétés additionnelles** | Tout type permis                                                        |
| **Même définition que**       | [Configuration de salle](#inPlace_inRoom_items_roomConfiguration_items) |

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

**Nom:** Statut de l'Offre

|                 |                                                        |
| --------------- | ------------------------------------------------------ |
| **Type**        | `enum (of string)`                                     |
| **Requis**      | Oui                                                    |
| **Défini dans** | [offerStatus](../vocabularies/event_status) |

**Description:** Statut de l'offre. La valeur doit être choisie parmi les valeurs du vocabulaire contrôlé Statut de l'offre.

Doit être un de:
* "EventScheduled"
* "EventCancelled"
* "EventRescheduled"
* "EventPostponed"
* "EventMovedOnline"

## <a name="price"></a>9. Propriété `Offre (Offer) > price`

**Nom:** Montant Monétaire

|                 |                                           |
| --------------- | ----------------------------------------- |
| **Type**        | `string`                                  |
| **Requis**      | Non                                       |
| **Défini dans** | [price](../datatypes/currency) |

**Description:** Prix de départ en dollars canadiens.

| Restrictions                                   |                                                                                                                                                   |
| ---------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Doit correspondre à l'expression régulière** | ```^\d{1,3}(,\d{3})*(\.\d{1,2})?$``` [Test](https://regex101.com/?regex=%5E%5Cd%7B1%2C3%7D%28%2C%5Cd%7B3%7D%29%2A%28%5C.%5Cd%7B1%2C2%7D%29%3F%24) |

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
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2025-12-16 at 12:20:16 -0500
