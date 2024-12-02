---
iucd: true
---

{%- import '/utils.md' as utils -%}


# Spectacle

{% include '/references/proprietes/info_classes_principales.md' %}

=== "Affichage condensé"

    | Propriété | Description | Priorité | Cardinalité | Type |
    | ------------ | ------------- | ------------ | ------------ |------------ |
    | Identifiants | Énumération des identifiants connus | Obligatoire | 1..N | Objets de la classe utilitaire [Identifiant](./identifiant.md) |
    | Nom | Nom du spectacle, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. | Obligatoire | 1 | Texte court multilingue |
    | Autre nom | Élément qui ne fait pas partie du nom, mais qui le complète, sans toutefois relever de la description elle-même.<br><br>Par exemple, le spectacle *Une Carmen pour tout le Québec* a également été connu sous le nom *Carmen au grand écran*. | Optionnel | 1 | Texte court multilingue |
    | Description | Description du spectacle. | Obligatoire | 1 | Texte long  multilingue |
    | Description courte | Description résumée du spectacle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte. | Optionnelle | 1 | Texte long multilingue |
    | Médias | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associés au spectacle. | Optionnel | 0..N | Objet de la classe utilitaire [Média](./media.md) |
    | Contributions | Énumération des contributions. Il peut s'agir de contribution à la création (ex: auteur.trice, metteur.se en scène), de contributions à l'exécution (ex: comédien.en, musicien.ne).<br><br>Le contributeur peut être une personne ou une organisation.<br><br>Il s'agit de contributeurs qui sont associés à toutes les représentations du spectacle. Pour les contributions spécifiques à une représentation, utiliser le champ correspondant dans la classe [Représentation](./representation.md).<br><br>Si un même contributeur a plusieurs contributions pour un même spectacle, il est suggéré de répéter plusieurs objets de la classe [Contribution](./contribution.md). | Optionnel | 0..N | Objets d'association à une contribution |
    | URL | URL vers des pages web donnant plus d'information sur le spectacle, selon l'émetteur de la donnée descriptive sur le spectacle.<br><br>Pour des besoins plus précis, par exemple des URL de critiques du spectacle, la propriété Médias, qui permet d'inclure des notes d'usage, peut être utilisée. | Optionnel | 0..N | Énumération d'URL |
    | Oeuvres associées | Énumérations d'oeuvres, de la même discipline ou pas, qui sont associées au spectacle. Il peut s'agir du texte d'une pièce de théâtre, d'un album musical associé à un spectacle, etc. Il doit s'agir d'associations avec des oeuvres qui ne peuvent pas être identifiées aisément à travers d'autres propriétés.<br><br>*Exemple 1: les données d'une pièce de théâtre peuvent pointer vers le texte de la pièce, disponible en librairie.<br>Exemple 2: les données d'un spectacle musical peuvent énumérer des enregistrements des pièces jouées lors du spectacle.<br>Contre exemple: il n'est pas utile que les données d'un spectacle d'humour énumère les autres spectacles du même humoriste, car il est possible d'obtenir cette information à travers les contributeurs.* | Optionnel | 0..N | Objets d'association à une oeuvre (voir lignes suivantes) |
    | Oeuvres associées: oeuvre | Identification de l'oeuvre | Obligatoire | 1 | Objet de la classe [Oeuvre](./oeuvre.md) |
    | Oeuvres associées: explications | Notes sur le lien entre l'oeuvre et le spectacle | Optionnelle | 0..1 | Texte court multilingue |
    | Disciplines | Identification des disciplines artistiques du spectacle.  | Obligatoire | 1..N | Objets de la classe [Terme](./terme.md) utilisant un vocabulaire contrôlé de discipline artistique |
    | Discipline principale | Préavis: cette propriété pourrait être intégrée dans une future version du référentiel et imposer un vocabulaire contrôlé. | Ne pas utiliser | 1 | À déterminer |
    | Publics cibles | Identification du public cible du spectacle.<br><br>Lorsque le vocabulaire utilisé contient un terme équivalent à « tout public », il est préférable de l'utiliser, que d'énumérer tous les types de publics. | Obligatoire | 1..N | Objets de la classe [Terme](./terme.md) utilisant un vocabulaire contrôlé de public cible |
    | Langues | Langues utilisées dans le spectacle, en ordre décroissant d'importance. La langue principale doit donc être mentionnée en premier. | Obligatoire, sauf pour les spectacles sans paroles | 0..N | Énumération de codes IETF BCP 47 |
    | Langues d'appui | Langues pour lesquelles des artéfacts d'aide à la compréhension du spectacle sont disponibles (surtitrage, programmes, traduction simultannée...) | Optionnel | 0..N | Énumération de codes IETF BCP 47 |
    | Spectacle sans parole | Indication que le spectacle ne contient pas de paroles. | Obligatoire | 0..1 | Booléen |
    | Contenus | Permet d'identifier certains type de contenus qui sont présents dans le spectacle. | Optionnel | 0..N | Objets de la classe [Terme](./terme.md) utilisant un vocabulaire contrôlé de type de contenus |
    | Avertissements | Permet d'identifier des avertissements associés au spectacle. | Optionnel | 0..N | Objets de la classe [Terme](./terme.md) utilisant un vocabulaire contrôlé des avertissementsç |
    | Représentations | Énumération des représentations du spectacle, qu'elles soient passées ou futures. | Optionnel | 0..N | Objets de la classe [Représentation](./representation.md) |
    | Traçabilité | Énumération des spectacles dont est issu le présent spectacle. Utilisé lorsqu'un spectacle est issu de la fusion d'autres spectacles. | Optionnel | 0..N | Objets de la classe [Spectacle](./spectacle.md) |


=== "Affichage étendu"


    | Propriété | Description | Prioritété | Cardinalité | Type |
    | ------------ | ------------- | ------------ | ------------ |------------ |
    | Identifiants | Énumération des identifiants connus | Obligatoire | 1..N | Objets de la classe utilitaire [Identifiant](./identifiant.md) |
    {% include '/references/proprietes/identifiant_inc.md' %}
    | Nom | Nom du spectacle, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. | Obligatoire | 1 | Texte court multilingue |
    | Autre nom | Élément qui ne fait pas partie du nom, mais qui le complète, sans toutefois relever de la description elle-même.<br><br>Par exemple, le spectacle *Une Carmen pour tout le Québec* a également été connu sous le nom *Carmen au grand écran*. | Optionnel | 1 | Texte court multilingue |
    | Description | Description du spectacle. | Obligatoire | 1 | Texte long  multilingue |
    | Description courte | Description résumée du spectacle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte. | Optionnelle | 1 | Texte long multilingue |
    | Médias | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associés au spectacle. | Optionnel | 0..N | Objet de la classe utilitaire [Média](./media.md) |
    {% include '/references/proprietes/media_inc.md' %}
    | Contributions | Énumération des contributions. Il peut s'agir de contribution à la création (ex: auteur.trice, metteur.se en scène), de contributions à l'exécution (ex: comédien.en, musicien.ne).<br><br>Le contributeur peut être une personne ou une organisation.<br><br>Il s'agit de contributeurs qui sont associés à toutes les représentations du spectacle. Pour les contributions spécifiques à une représentation, utiliser le champ correspondant dans la classe [Représentation](./representation.md).<br><br>Si un même contributeur a plusieurs contributions pour un même spectacle, il est suggéré de répéter plusieurs objets de la classe [Contribution](./contribution.md). | Optionnel | 0..N | Objets d'association à une contribution |
    {% include '/references/proprietes/contribution_inc.md' %}
    | URL | URL vers des pages web donnant plus d'information sur le spectacle, selon l'émetteur de la donnée descriptive sur le spectacle.<br><br>Pour des besoins plus précis, par exemple des URL de critiques du spectacle, la propriété Médias, qui permet d'inclure des notes d'usage, peut être utilisée. | Optionnel | 0..N | Énumération d'URL |
    | Oeuvres associées | Énumérations d'oeuvres, de la même discipline ou pas, qui sont associées au spectacle. Il peut s'agir du texte d'une pièce de théâtre, d'un album musical associé à un spectacle, etc. Il doit s'agir d'associations avec des oeuvres qui ne peuvent pas être identifiées aisément à travers d'autres propriétés.<br><br>*Exemple 1: les données d'une pièce de théâtre peuvent pointer vers le texte de la pièce, disponible en librairie.<br>Exemple 2: les données d'un spectacle musical peuvent énumérer des enregistrements des pièces jouées lors du spectacle.<br>Contre exemple: il n'est pas utile que les données d'un spectacle d'humour énumère les autres spectacles du même humoriste, car il est possible d'obtenir cette information à travers les contributeurs.* | Optionnel | 0..N | Objets d'association à une oeuvre (voir lignes suivantes) |
    | {{ utils.tableSubItem('Oeuvre associée', 'Oeuvre', iucd) }} | Identification de l'oeuvre | Obligatoire | 1 | Objet de la classe [Oeuvre](./oeuvre.md) |
    | {{ utils.tableSubItem('Oeuvre associée', 'Explications', iucd) }} | Notes sur le lien entre l'oeuvre et le spectacle | Optionnelle | 0..1 | Texte court multilingue |
    | Disciplines | Identification des disciplines artistiques du spectacle.  | Obligatoire | 1..N | Objets de la classe [Terme](./terme.md) utilisant un vocabulaire contrôlé de discipline artistique |
    {% with object="Discipline" %}{% include '/references/proprietes/terme_inc.md' %}{% endwith %}
    | Discipline principale | Préavis: cette propriété pourrait être intégrée dans une future version du référentiel et imposer un vocabulaire contrôlé. | Ne pas utiliser | 1 | À déterminer |
    | Publics cibles | Identification du public cible du spectacle.<br><br>Lorsque le vocabulaire utilisé contient un terme équivalent à « tout public », il est préférable de l'utiliser, que d'énumérer tous les types de publics. | Obligatoire | 1..N | Objets de la classe [Terme](./terme.md) utilisant un vocabulaire contrôlé de public cible |
    {% with object="Public cible" %}{% include '/references/proprietes/terme_inc.md' %}{% endwith %}
    | Langues | Langues utilisées dans le spectacle, en ordre décroissant d'importance. La langue principale doit donc être mentionnée en premier. | Obligatoire, sauf pour les spectacles sans paroles | 0..N | Énumération de codes IETF BCP 47 |
    | Langues d'appui | Langues pour lesquelles des artéfacts d'aide à la compréhension du spectacle sont disponibles (surtitrage, programmes, traduction simultannée...) | Optionnel | 0..N | Énumération de codes IETF BCP 47 |
    | Spectacle sans parole | Indication que le spectacle ne contient pas de paroles. | Obligatoire | 0..1 | Booléen |
    | Contenus | Permet d'identifier certains type de contenus qui sont présents dans le spectacle. | Optionnel | 0..N | Objets de la classe [Terme](./terme.md) utilisant un vocabulaire contrôlé de type de contenus |
    {% with object="Contenu" %}{% include '/references/proprietes/terme_inc.md' %}{% endwith %}
    | Avertissements | Permet d'identifier des avertissements associés au spectacle. | Optionnel | 0..N | Objets de la classe [Terme](./terme.md) utilisant un vocabulaire contrôlé des avertissements |
    {% with object="Avertissement" %}{% include '/references/proprietes/terme_inc.md' %}{% endwith %}
    | Représentations | Énumération des représentations du spectacle, qu'elles soient passées ou futures. | Optionnel | 0..N | Objets de la classe [Représentation](./representation.md) |
    | Traçabilité | Énumération des spectacles dont est issu le présent spectacle. Utilisé lorsqu'un spectacle est issu de la fusion d'autres spectacles. | Optionnel | 0..N | Objets de la classe [Spectacle](./spectacle.md) |
