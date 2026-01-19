# Postal Address

**Nom:** Postal Address

|                               |                  |
| ----------------------------- | ---------------- |
| **Type**                      | `object`         |
| **Requis**                    | Non              |
| **Propriétés additionnelles** | Tout type permis |

**Description:** Permet d’indiquer l’adresse d’un lieu.

| Propriété                              | Description                                                                                                                                   | Type de donnée | Définition                                                          |
| -------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | ------------------------------------------------------------------- |
| + [type](#type )                       | -                                                                                                                                             | const          | -                                                                   |
| + [streetAddress](#streetAddress )     | Unité, numéro municipal, type de rue, nom de rue, direction de rue. Peut aussi contenir d'autres informations.                                | string         | [Texte court](../datatypes/text_short )                  |
| + [addressLocality](#addressLocality ) | Nom de la ville. Peut aussi contenir le nom de la municipalité ou de la localité.                                                             | string         | [Texte court](../datatypes/text_short )                  |
| + [addressRegion](#addressRegion )     | Abréviation des noms de provinces recommandés par Postes Canada, ou une région dans un autre pays.                                            | string         | -                                                                   |
| + [addressCountry](#addressCountry )   | Code de pays à 3 caractères selon le standard ISO 3166-1                                                                                      | string         | [Code Pays](../datatypes/country_code )                  |
| + [postalCode](#postalCode )           | Code postal, en majuscules. Séparer les trois premiers caractères du code postal des trois derniers. On ne doit pas utiliser le trait d’union | string         | [Code Postal Canadien](../datatypes/canada_postal_code ) |

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

## <a name="type"></a>1. Propriété `Postal Address > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"PostalAddress"`

## <a name="streetAddress"></a>2. Propriété `Postal Address > streetAddress`

**Nom:** Texte court

|                 |                                                     |
| --------------- | --------------------------------------------------- |
| **Type**        | `string`                                            |
| **Requis**      | Oui                                                 |
| **Défini dans** | [streetAddress](../datatypes/text_short) |

**Description:** Unité, numéro municipal, type de rue, nom de rue, direction de rue. Peut aussi contenir d'autres informations.

[Voir la documentation de Texte court](../datatypes/text_short)

## <a name="addressLocality"></a>3. Propriété `Postal Address > addressLocality`

**Nom:** Texte court

|                         |                                 |
| ----------------------- | ------------------------------- |
| **Type**                | `string`                        |
| **Requis**              | Oui                             |
| **Même définition que** | [streetAddress](#streetAddress) |

**Description:** Nom de la ville. Peut aussi contenir le nom de la municipalité ou de la localité.

## <a name="addressRegion"></a>4. Propriété `Postal Address > addressRegion`

|            |          |
| ---------- | -------- |
| **Type**   | `string` |
| **Requis** | Oui      |

**Description:** Abréviation des noms de provinces recommandés par Postes Canada, ou une région dans un autre pays.

## <a name="addressCountry"></a>5. Propriété `Postal Address > addressCountry`

**Nom:** Code Pays

|                 |                                                        |
| --------------- | ------------------------------------------------------ |
| **Type**        | `string`                                               |
| **Requis**      | Oui                                                    |
| **Défini dans** | [addressCountry](../datatypes/country_code) |

**Description:** Code de pays à 3 caractères selon le standard ISO 3166-1

[Voir la documentation de Code Pays](../datatypes/country_code)

## <a name="postalCode"></a>6. Propriété `Postal Address > postalCode`

**Nom:** Code Postal Canadien

|                 |                                                          |
| --------------- | -------------------------------------------------------- |
| **Type**        | `string`                                                 |
| **Requis**      | Oui                                                      |
| **Défini dans** | [postalCode](../datatypes/canada_postal_code) |

**Description:** Code postal, en majuscules. Séparer les trois premiers caractères du code postal des trois derniers. On ne doit pas utiliser le trait d’union

[Voir la documentation de Code Postal Canadien](../datatypes/canada_postal_code)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-01-19 at 16:04:18 -0500
