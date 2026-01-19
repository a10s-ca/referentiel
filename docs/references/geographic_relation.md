# Association Géographique (GeographicRelation)

**Nom:** Association Géographique (GeographicRelation)

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

**Description:** Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.

| Propriété                              | Description                                                                                             | Type de donnée | Définition                                         |
| -------------------------------------- | ------------------------------------------------------------------------------------------------------- | -------------- | -------------------------------------------------- |
| + [type](#type )                       | -                                                                                                       | const          | -                                                  |
| - [relationType](#relationType )       | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.                 | object         | [Term](term )                          |
| - [addressCountry](#addressCountry )   | Code ISO 3166-1 alpha-3 à 3 caractères représentant un pays.                                            | string         | [Code Pays](../datatypes/country_code ) |
| - [addressRegion](#addressRegion )     | Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne) | string         | [Texte court](../datatypes/text_short ) |
| - [addressLocality](#addressLocality ) | Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne) | string         | [Texte court](../datatypes/text_short ) |

## <a name="type"></a>1. Propriété `Association Géographique (GeographicRelation) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"GeographicRelation"`

## <a name="relationType"></a>2. Propriété `Association Géographique (GeographicRelation) > relationType`

**Nom:** Term

|                               |                                  |
| ----------------------------- | -------------------------------- |
| **Type**                      | `object`                         |
| **Requis**                    | Non                              |
| **Propriétés additionnelles** | Tout type permis                 |
| **Défini dans**               | [relationType](term) |

**Description:** Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

[Voir la documentation de Term](term)

## <a name="addressCountry"></a>3. Propriété `Association Géographique (GeographicRelation) > addressCountry`

**Nom:** Code Pays

|                 |                                                        |
| --------------- | ------------------------------------------------------ |
| **Type**        | `string`                                               |
| **Requis**      | Non                                                    |
| **Défini dans** | [addressCountry](../datatypes/country_code) |

**Description:** Code ISO 3166-1 alpha-3 à 3 caractères représentant un pays.

[Voir la documentation de Code Pays](../datatypes/country_code)

## <a name="addressRegion"></a>4. Propriété `Association Géographique (GeographicRelation) > addressRegion`

**Nom:** Texte court

|                         |                                        |
| ----------------------- | -------------------------------------- |
| **Type**                | `string`                               |
| **Requis**              | Non                                    |
| **Même définition que** | [vocabulary](#relationType_vocabulary) |

**Description:** Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne)

## <a name="addressLocality"></a>5. Propriété `Association Géographique (GeographicRelation) > addressLocality`

**Nom:** Texte court

|                         |                                        |
| ----------------------- | -------------------------------------- |
| **Type**                | `string`                               |
| **Requis**              | Non                                    |
| **Même définition que** | [vocabulary](#relationType_vocabulary) |

**Description:** Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-01-19 at 16:15:47 -0500
