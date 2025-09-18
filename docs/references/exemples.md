# Exemple d’utilisation

!!! note

    Cet exemple est tiré du site de la salle Albert-Rousseau à l’adresse https://www.sallealbertrousseau.com/programmation/un-certain-souvenir/ et les données ont été observées le 19 janvier 2023. Une [saisie d’écran est disponible](https://drive.google.com/file/d/1DUE5_ZqLqeq-rOYbCj8iCAyaNBOr5OGo/view?usp=sharing). Il s’agit d’un exemple qui se limite aux propriétés obligatoires de chacun des classes, et s’appuie seulement sur les données visibles dans la page web du site du diffuseur et dans son code source.


## Représentation conceptuelle

Lorsqu’une propriété est une relation vers une autre classe, les propriétés de la classe en question sont insérées directement dans le tableau, précédées d’une flèche (➡).

| Classe | Propriété | Valeur |
| ------------ | ------------ |------------ |
| Spectacle | Identifiants | (ne sont pas affichés) |
| Spectacle | Nom | Hommage à Michel Louvain |
| Spectacle | Description | Le 14 avril 2021, <b>Michel Louvain</b> tirait sa révérence après une vie dédiée à la chanson. Réunis sur scène dans cette production à l’image de [...] |
| Spectacle | Médias | Référence au média (décrit dans les lignes suivantes) |
| ➡Média | Type | image/jpeg |
| ➡Média | URL | https://sallealbertrousseau.blob.core.windows.net/image-processor-cache/9/7/5/4/a/e/9754aef29c7eb9c559bb6bd4f55a0a8012e7c393.jpg |
| ➡Média | Notes d’usage | (ne sont pas affichées) |
| Spectacle | Contributions | Référence à la contribution (décrit dans les lignes suivantes) |
| ➡Contribution | Types | Référence au terme d’un vocabulaire contrôlé (décrit dans les lignes suivantes) |
| ➡➡Terme | Vocabulaire | Type de contribution du référentiel |
| ➡➡Terme | Code | Code correspondant à l’étiquette «Artiste sur scène» |
| ➡➡Terme | Numéro de séquence | 1 |
| ➡Contribution | Contributeur | Référence au contributeur (décrit dans les lignes suivantes) |
| ➡➡Contributeur | Identifiants | (ne sont pas affichés) |
| ➡➡Contributeur | Nom | Un certain souvenir (note: Un certain souvenir est le nom d’un groupe hommage; c’est ce groupe est qui le contributeur principal pour le spectacle). |
| ➡➡Contributeur | Description | (n’est pas disponible sur la page de façon distincte de la description du spectacle) |
| ➡➡Contributeur | Type de contributeur | Référence au terme d’un vocabulaire contrôlé de type de contributeur (décrit dans les lignes suivantes) |
| ➡➡➡Terme | Vocabulaire | Type de contributeur du référentiel |
| ➡➡➡Terme | Code | Code correspondant à «Groupes de personnes physiques (entités juridiques, artistiques, ou autres)» |
| ➡➡➡Terme | Numéro de séquence | 1 |
| Spectacle | URL | https://www.sallealbertrousseau.com/programmation/un-certain-souvenir/ |
| Spectacle | Disciplines | Référence au terme d’un vocabulaire contrôlé de discipline artistique |
| ➡Terme | Vocabulaire | Disciplines Scène Pro |
| ➡Terme | Code | Code correspondant à «Chanson» |
| ➡Terme | Numéro de séquence | 1 |
| Spectacle | Publics cible | Référence au terme d’un vocabulaire contrôlé de discipline artistique |
| ➡Terme | Vocabulaire | Publics cibles Scène Pro |
| ➡Terme | Code | (n’est pas affiché, mais probablement le code correspondant à «Tout publics») |
| ➡Terme | Numéro de séquence | 1 |
| Spectacle | Langues | fr |
| Spectacle | Spectacle sans parole | Faux |
| Spectacle | Représentations | Référence à la représentation (décrite dans les lignes suivantes) |
| ➡Représentation | Identifiants | (ne sont pas affichés) |
| ➡Représentation | Spectacle | Implicite dans ce contexte (il s’agit du spectacle faisant l’objet de l’exemple) |
| ➡Représentation | Début | 2023-02-26T15:00:00-05:00 |
| ➡Représentation | Offres | Référence à une offre (décrite dans les lignes suivantes) |
| ➡➡Offre | Lieu | Référence au lieu (décrit dans les lignes suivantes) |
| ➡➡➡Lieu | Identifiants | (ne sont pas affichés) |
| ➡➡➡Lieu | Nom | Salle Albert-Rousseau |
| ➡➡➡Lieu | Adresse | Référence à une adresse (décrite dans les lignes suivantes) |
| ➡➡➡➡Adresse | Numéro | 2410 |
| ➡➡➡➡Adresse | Type de rue | CH |
| ➡➡➡➡Adresse | Nom de la rue | Sainte-Foy |
| ➡➡➡➡Adresse | Ville | Québec |
| ➡➡➡➡Adresse | Province | QC |
| ➡➡➡➡Adresse | Pays | Canada |
| ➡➡➡➡Adresse | Code postal | G1V 1T3 |
| ➡➡➡Lieu | Type de lieu | Référence à un terme d’un vocabulaire contrôlé de type de lieu (décrit dans les lignes suivantes) |
| ➡➡➡➡Terme | Vocabulaire | Wikidata |
| ➡➡➡➡Terme | Code | Q230752 |
| ➡➡➡➡Terme | Numéro de séquence | 1 |
| ➡➡Offre | Complet | Faux |
| ➡➡Offre | Statut | Référence à un terme d’un vocabulaire contrôlé de statut (décrit dans les lignes suivantes) |
| ➡➡➡Terme | Vocabulaire | Schema.org EventStatusType |
| ➡➡➡Terme | Code | https://schema.org/EventScheduled |
| ➡➡➡Terme | Numéro de séquence | 1 |
| ➡➡Offre | Spectacle gratuit | Faux |
| ➡➡Offre | Accessible dans le cadre d'une autre offre | Faux |
| ➡➡Offre | Sans lien d'acquisition | Faux |
| ➡➡Offre | Lien d'acquisition | https://reseau.ovation.ca/pesite.asp?CodeSalleSpectacle=1201LJ&CodeSiteClient=00000Q&Connexion=2 |


## Représentation sérialisée au format JSON

Le même spectacle peut être sérialisé de la façon suivante

``` json
{
  "@context": "https://datascence.ca/context.jsonld",
  "type": "Show",
  "identifier": [
    "http://lavitrine.com/spectacle/123456"
  ],
  "name": [
    {
      "lang": "fr",
      "value": "Hommage à Michel Louvain."
    }
  ],
  "description": [
    {
      "lang": "fr",
      "value": "Le 14 avril 2021, Michel Louvain tirait sa révérence après une vie dédiée à la chanson. Réunis sur scène dans cette production à l’image de..."
    }
  ],
  "media": [
    {
      "type": "Media",
      "url": "https://sallealbertrousseau.blob.core.windows.net/image-processor-cache/9/7/5/4/a/e/9754aef29c7eb9c559bb6bd4f55a0a8012e7c393.jpg",
      "usageNote": "(ne sont pas affichées)"
    }
  ],
  "hasContribution": [
    {
      "type": "Contribution",
      "contributionType": [
        {
          "type": "Term",
          "vocabulary": "datascene",
          "code": "ArtisteSurScène",
          "label": [
            {
              "lang": "fr",
              "value": "Artiste sur scène"
            }
          ],
          "sequenceNumber": 1
        }
      ],
      "contributor": {
        "type": "Contributor",
        "contributorType": "Group",
        "identifier": [
          "http://lavitrine.com/123456"
        ],
        "name": [
          {
            "lang": "fr",
            "value": "Un certain souvenir"
          }
        ],
        "hasGeographicRelation": [
          {
            "type": "GeographicRelation",
            "relationType": {
              "type": "Term",
              "vocabulary": "datascene",
              "code": "LieuDeFondation",
              "label": [
                {
                  "lang": "fr",
                  "value": "Lieu de fondation"
                }
              ],
              "sequenceNumber": 1
            },
            "addressCountry": "CAN",
            "addressRegion": "QC",
            "addressLocality": "Québec"
          }
        ]
      }
    }
  ],
  "mainEntityOfPage": [
    {
      "type": "WebPage",
      "url": "https://www.sallealbertrousseau.com/programmation/un-certain-souvenir/",
      "inLanguage": "fr"
    },
    {
      "type": "WebPage",
      "url": "https://www.sallealbertrousseau.com/events/un-certain-souvenir/",
      "inLanguage": "en"
    }
  ],
  "discipline": [
    {
      "type": "Term",
      "vocabulary": "scenepro",
      "identifier": [
        "http://scenepro.ca/taxonomies/Disciplines-asq#Chanson"
      ],
      "code": "Chanson",
      "version": "3",
      "label": [
        {
          "lang": "fr",
          "value": "Chanson"
        }
      ],
      "sequenceNumber": 1
    }
  ],
  "audience": [
    {
      "type": "Term",
      "vocabulary": "datascene",
      "code": "ToutPublics",
      "identifier": [
        "https://datascene.ca/PublicCible#ToutPublics"
      ],
      "label": [
        {
          "lang": "fr",
          "value": "Tout publics"
        }
      ],
      "sequenceNumber": 1
    }
  ],
  "inLanguage": [
    "fr"
  ],
  "showWithoutWords": false,
  "hasPerformance": [
    {
      "type": "Performance",
      "identifier": [
        "http://lavitrine.com/representation/123456"
      ],
      "startDateTime": "2023-02-26T15:00:00-05:00",
      "inSeries": [
        {
          "type": "Series",
          "startDateTime": "2023-02-26T15:00:00-05:00",
          "description": [
            {
              "lang": "fr",
              "value": "Un certain souvenir est une série de spectacles qui rendent hommage à Michel Louvain."
            }
          ],
          "identifier": [
            "http://lavitrine.com/series/123456"
          ],
          "name": [
            {
              "lang": "fr",
              "value": "Un certain souvenir"
            }
          ]
        }
      ],
      "hasOffer": [
        {
          "type": "Offer",
          "roomConfiguration": {
            "type": "RoomConfiguration",
            "layout": {
              "type": "Term",
              "vocabulary": "datascene",
              "code": "Cabaret",
              "label": [
                {
                  "lang": "fr",
                  "value": "Configuration salle type 1"
                }
              ],
              "sequenceNumber": 1
            }
          },
          "inPlace": {
            "type": "Place",
            "virtualPlace": false,
            "identifier": [
              "http://lavitrine.com/representation/7567567"
            ],
            "name": [
              {
                "lang": "fr",
                "value": "Salle Albert-Rousseau"
              }
            ],
            "address": {
              "type": "PostalAddress",
              "streetAddress": "250 Sainte-Foy",
              "addressLocality": "Québec",
              "addressRegion": "QC",
              "addressCountry": "CAN",
              "postalCode": "G1V 1T3"
            }
          },
          "isSoldout": false,
          "offerStatus": "EventScheduled",
          "isAccessibleForFree": false,
          "isAccessibleFromAnotherOffer": false,
          "ticketLinkNotAvailable": false,
          "ticketLink": "https://www.sallealbertrousseau.com/programmation/un-certain-souvenir/"
        }
      ]
    }
  ]
}
```