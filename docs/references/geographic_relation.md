# Association Géographique (GeographicRelation)

Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.

|                               |            |
| ----------------------------- | ---------- |
| **Type**                      | `object`   |
| **Requis**                    | Non        |
| **Propriétés additionnelles** | Pas permis |

| Propriété                                             | Description                                                                                             | Priorité    | Type et définition                                 |
| ----------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | ----------- | -------------------------------------------------- |
| [type](#type )                                        | -                                                                                                       | Obligatoire | const                                              |
| [relationType](#relationType )<br/>_Type de relation_ | Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.                 | Optionnel   | [Terme (Term)](term )                  |
| [addressCountry](#addressCountry )<br/>_Pays_         | Code ISO 3166-1 alpha-3 à 3 caractères représentant un pays.                                            | Optionnel   | [Code Pays](../datatypes/country_code ) |
| [addressRegion](#addressRegion )<br/>_Région_         | Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne) | Optionnel   | [Texte court](../datatypes/text_short ) |
| [addressLocality](#addressLocality )<br/>_Localité_   | Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne) | Optionnel   | [Texte court](../datatypes/text_short ) |

## <a name="type"></a>1. Propriété `Association Géographique (GeographicRelation) > type`

|            |         |
| ---------- | ------- |
| **Type**   | `const` |
| **Requis** | Oui     |

Valeur fixe: `"GeographicRelation"`

## <a name="relationType"></a>2. Propriété `Association Géographique (GeographicRelation) > relationType` (Type de relation)

Permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.

|                               |                                  |
| ----------------------------- | -------------------------------- |
| **Type**                      | `object`                         |
| **Requis**                    | Non                              |
| **Propriétés additionnelles** | Tout type permis                 |
| **Défini dans**               | [relationType](term) |

[Voir la documentation de Terme (Term)](term)

## <a name="addressCountry"></a>3. Propriété `Association Géographique (GeographicRelation) > addressCountry` (Pays)

Code ISO 3166-1 alpha-3 à 3 caractères représentant un pays.

|                 |                                                        |
| --------------- | ------------------------------------------------------ |
| **Type**        | `string`                                               |
| **Requis**      | Non                                                    |
| **Défini dans** | [addressCountry](../datatypes/country_code) |

[Voir la documentation de Code Pays](../datatypes/country_code)

## <a name="addressRegion"></a>4. Propriété `Association Géographique (GeographicRelation) > addressRegion` (Région)

Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne)

|                 |                                                  |
| --------------- | ------------------------------------------------ |
| **Type**        | `string`                                         |
| **Requis**      | Non                                              |
| **Défini dans** | [vocabulary](../datatypes/text_short) |

[Voir la documentation de Texte court](../datatypes/text_short)

## <a name="addressLocality"></a>5. Propriété `Association Géographique (GeographicRelation) > addressLocality` (Localité)

Texte sans formatage, court et sans changement de paragraphes (typiquement affiché sur une seule ligne)

|                 |                                                  |
| --------------- | ------------------------------------------------ |
| **Type**        | `string`                                         |
| **Requis**      | Non                                              |
| **Défini dans** | [vocabulary](../datatypes/text_short) |

[Voir la documentation de Texte court](../datatypes/text_short)

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-02-09 at 20:27:43 -0500
