# Classes principales

Les classes suivantes sont les **classes principales** du référentiel des métadonnées descriptives du spectacle. Elles servent à modéliser les concepts directement associés aux spectacles :

* [**Spectacle**](/references/proprietes/spectacle/) : la classe centrale du référentiel. Elle permet de documenter ce qui relève du spectacle au sens d'œuvre mise en scène. Par contraste, cela exclut donc les éléments descriptifs des représentations.
* [**Représentation**](/references/proprietes/representation/) : cette classe permet de décrire ce qui relève de l’exécution du spectacle à l’intention d’un public. Les informations des représentations complètent celles du spectacle, en précisant par exemple des dates, des lieux, des modalités…
* [**Série**](/references/proprietes/serie/) (de représentations) : cette classe permet de regrouper des représentations n’étant pas nécessairement toutes associées à un même spectacle, mais liées entre elles par des éléments de commercialisation ou de modalités d’accès. Un festival est un exemple de série.
* [**Lieu**](/references/proprietes/lieu/) : sert à décrire un lieu, typiquement associé à une représentation. La classe est générique et les lieux peuvent correspondre à des édifices ou à des lieux extérieurs. Il s’agit du lieu associé à une adresse, ou à des indications géographiques précises, qui serait présenté à un consommateur comme l’endroit où se présenter pour assister à une représentation.
* [**Salle**](/references/proprietes/salle/) : certains lieux contiennent plusieurs salles. Cette classe permet de préciser et décrire la salle utilisée dans le contexte d’une représentation donnée.
* [**Contributeur**](/references/proprietes/contributeur/) : les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre).
* [**Oeuvre**](/references/proprietes/oeuvre/) : cette classe sert à décrire des œuvres associées au spectacle, par exemple le texte d’une pièce de théâtre.

