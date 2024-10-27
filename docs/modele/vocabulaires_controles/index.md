# Vocabulaires contrôlés

Le référentiel doit s’appuyer sur des conventions pour nommer certaines réalités. Par exemple, pour un spectacle, on veut identifier la discipline artistique concernée : s’agit-il d’une pièce de théâtre, d’un spectacle d’humour, de cirque…? Évidemment, si les systèmes qui partagent des données n’utilisent pas les mêmes appellations pour identifier les disciplines,  il devient très difficile d’automatiser les partages de données. Le même questionnement s’applique à plusieurs autres propriétés : public cible, type de lieu, type de contribution....

La solution consiste à ce que les parties prenantes au référentiel s’entendent sur les façons de nommer ces différentes réalités. Le développement de telles conventions peut mener à des thésaurus, des taxonomies, ou des équivalents. Nous allons retenir le terme « vocabulaire contrôlé » pour le présent document.

Le développement de vocabulaires contrôlés interopérables et à la satisfaction des différentes parties prenantes n’est pas une mince affaire. Il faut prévoir beaucoup de temps et de travail de coordination pour y arriver. Il est anticipé que de tels travaux seront menés par l’écosystème des données descriptives du spectacle dans les prochaines années.

Il serait toutefois dommage de retarder les premières utilisations du référentiel dans l’attente d’arriver aux consensus sur les vocabulaires contrôlés. La solution proposée par le comité de travail consiste donc à :

* permettre l’utilisation de plus d’un vocabulaire contrôlé pour une propriété ;
* lorsque possible, identifier un vocabulaire existant dans une autre ontologie. Sinon, en créer un nouveau ;
* prévoir les propriétés nécessaires pour que le référentiel puisse évoluer et intégrer les données de vocabulaires contrôlés ayant fait l’objet d’un consensus (typiquement comme une propriété optionnelle dans la présente version du référentiel, qui deviendrait obligatoire par la suite) ;
* inclure des champs en texte libre, permettant de transmettre de l’information qui ne s’appuie pas encore sur un vocabulaire contrôlé, de façon à accumuler des exemples de besoins pour améliorer les vocabulaires existants ou en élaborer de nouveaux.

Pour être plus concret et poursuivre sur l’exemple des disciplines artistiques, le référentiel propose de permettre l’utilisation de plusieurs codes de disciplines, tout en suggérant les codes utilisés dans Scène Pro. Cela signifie que dès maintenant, des systèmes peuvent s’appuyer sur le référentiel pour structurer leurs données et préparer des mécanismes d’échanges de données, tout en sachant que la discipline peut être identifiée avec le vocabulaire de Scène Pro, celui d’une plateforme de billetterie, ou les deux, et complétée par un champ en texte libre. L’utilisation d’un nouveau vocabulaire, inspiré par celui de Scène Pro (ou pas) et faisant l’objet d’un consensus, pourrait devenir obligatoire dans une future version du référentiel (sans nécessairement faire en sorte d’empêcher l’utilisation d’autres vocabulaires selon les besoins).

Les vocabulaires contrôlés associés aux différentes propriétés sont présentés dans la section Références.

Chaque vocabulaire contrôlé a ses propres caractéristiques et règles d’usage. Toutefois, de façon générale, lorsque le vocabulaire utilisé offre une hiérarchie de termes, il est recommandé d'utiliser les codes plus précis, et non pas les codes généraux. Par exemple, pour un vocabulaire fictif de disciplines artistiques, l’entrée « Musique / Jazz » est suffisante et il n’est pas recommandé d’inclure également « Musique ».
