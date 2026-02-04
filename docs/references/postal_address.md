# Adresse postale (Postal Address)

**Nom:** Adresse postale (Postal Address)

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

**Description:** Permet d’indiquer l’adresse d’un lieu.

| Propriété                                              | Description                                                                                                                                   | Priorité    | Type et définition                                                  |
| ------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ------------------------------------------------------------------- |
| [type](#type )                                         | -                                                                                                                                             | Obligatoire | const                                                               |
| [streetAddress](#streetAddress )<br/>_Adresse postale_ | Unité, numéro municipal, type de rue, nom de rue, direction de rue. Peut aussi contenir d'autres informations.                                | Obligatoire | [Texte court](../datatypes/text_short )                  |
| [addressLocality](#addressLocality )<br/>_Localité_    | Nom de la ville. Peut aussi contenir le nom de la municipalité ou de la localité.                                                             | Obligatoire | [Texte court](../datatypes/text_short )                  |
| [addressRegion](#addressRegion )<br/>_Région_          | Abréviation des noms de provinces recommandés par Postes Canada, ou une région dans un autre pays.                                            | Obligatoire | string                                                              |
| [addressCountry](#addressCountry )<br/>_Pays_          | Code de pays à 3 caractères selon le standard ISO 3166-1                                                                                      | Obligatoire | [Code Pays](../datatypes/country_code )                  |
| [postalCode](#postalCode )<br/>_Code postal_           | Code postal, en majuscules. Séparer les trois premiers caractères du code postal des trois derniers. On ne doit pas utiliser le trait d’union | Obligatoire | [Code Postal Canadien](../datatypes/canada_postal_code ) |

Condition particulière:
si (addressCountry = "CAN") alors :

- `addressRegion` doit être l’une des valeurs suivantes :

    * AB
    * BC
    * MB
    * NB
    * NL
    * NS
    * NT
    * NU
    * ON
    * PE
    * QC
    * SK
    * YT

Sinon (addressCountry ≠ "CAN") alors :

- `addressRegion` doit respecter le pattern : `^[A-Z]{2}$`

## <a name="type"></a>1. Propriété `Adresse postale (Postal Address) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"PostalAddress"`

## <a name="streetAddress"></a>2. Propriété `Adresse postale (Postal Address) > streetAddress`

**Nom:** Adresse postale

|                 |                                                     |
| --------------- | --------------------------------------------------- |
| **Type**        | `string`                                            |
| **Requis**      | Oui                                                 |
| **Défini dans** | [streetAddress](../datatypes/text_short) |

**Description:** Unité, numéro municipal, type de rue, nom de rue, direction de rue. Peut aussi contenir d'autres informations.

[Voir la documentation de Texte court](../datatypes/text_short)

## <a name="addressLocality"></a>3. Propriété `Adresse postale (Postal Address) > addressLocality`

**Nom:** Localité

|                 |                                                     |
| --------------- | --------------------------------------------------- |
| **Type**        | `string`                                            |
| **Requis**      | Oui                                                 |
| **Défini dans** | [streetAddress](../datatypes/text_short) |

**Description:** Nom de la ville. Peut aussi contenir le nom de la municipalité ou de la localité.

[Voir la documentation de Texte court](../datatypes/text_short)

## <a name="addressRegion"></a>4. Propriété `Adresse postale (Postal Address) > addressRegion`

**Nom:** Région

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |

**Description:** Abréviation des noms de provinces recommandés par Postes Canada, ou une région dans un autre pays.

## <a name="addressCountry"></a>5. Propriété `Adresse postale (Postal Address) > addressCountry`

**Nom:** Pays

|                 |                                                        |
| --------------- | ------------------------------------------------------ |
| **Type**        | `string`                                               |
| **Requis**      | Oui                                                    |
| **Défini dans** | [addressCountry](../datatypes/country_code) |

**Description:** Code de pays à 3 caractères selon le standard ISO 3166-1

[Voir la documentation de Code Pays](../datatypes/country_code)

## <a name="postalCode"></a>6. Propriété `Adresse postale (Postal Address) > postalCode`

**Nom:** Code postal

|                 |                                                          |
| --------------- | -------------------------------------------------------- |
| **Type**        | `string`                                                 |
| **Requis**      | Oui                                                      |
| **Défini dans** | [postalCode](../datatypes/canada_postal_code) |

**Description:** Code postal, en majuscules. Séparer les trois premiers caractères du code postal des trois derniers. On ne doit pas utiliser le trait d’union

[Voir la documentation de Code Postal Canadien](../datatypes/canada_postal_code)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-02-04 at 16:44:55 -0500
