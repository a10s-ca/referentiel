---
iucd: true
---

{%- import '/utils.md' as utils -%}

# Contributeur

{% include '/references/proprietes/info_classes_principales.md' %}

=== "Affichage condensé"

    | Propriété | Description | Priorité | Cardinalité | Type |
    | ------------ | ------------- | ------------ | ------------ |------------ |
    | Identifiants | Énumération des identifiants connus. | Obligatoire | 1..N | Objets de la classe utilitaire [Identifiant](./identifiant.md) |
    | Nom | Nom complet du contributeur, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. Le prénom et le nom de sont pas traités dans des propriétés distinctes à cause de la diversité des appellations de contributions, qui sont parfois des personnes morales.<br><br>*Exemples: Michel Rivard, Les Trois Accords, Koriass, Desjardins, Spectra.* | Obligatoire | 1 | Texte long |
    | Noms alternatifs | Autres appellations parfois utilisées pour le contributeur.<br><br>*Exemple: «Béatrice Martin» comme nom alternatif de «Cœur de pirate».<br>Exemple: «Compagnie Jean-Duceppe» comme nom alternatif de «Duceppe».* | Optionnel | 0..N | Énumération de textes libres |
    | Description | Description du contributeur. | Optionnel | 1 | Texte long multilingue |
    | Description courte | Description résumée du contributeur. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage. | Optionnelle | 1 | Texte long multilingue |
    | Média(s) | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au spectacle. | Optionnel | 0..N | Objet de la classe utilitaire [Média](./media.md) |
    | Type de contributeur | Indication à l'effet qu'il s'agit d'une personne physique ou d'une personne morale. | Obligatoire | 1 | Objets de la classe [Terme](./terme.md) utilisant un vocabulaire contrôlé de type de contributeur |
    | Types de contributions habituelles | Énumération des types de contributions habituellement faites par le contributeur. | Optionnel | 0..N | Objets de la classe [Terme](./terme.md) utilisant un vocabulaire contrôlé de type de contribution |
    | Associations géographiques | Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.<br><br>*Exemple: le contributeur a des associations géographiques avec Saint-Élie-de-Caxton. Ces associations géographiques sont de type «lieu de naissance» et «lieu de résidence».<br>Exemple: le contributeur Cirque Eloize a une association géographique de type «lieu du siège social» avec la gare Dalhousie dans le Vieux-Montréal.* | Optionnel | 0..N | Énumération d'objets d'association de lieux (voir les lignes suivantes) |
    | Associations géographiques: type d'association | Indication la relation entre le lieu et le contributeur. Dans le cas où plusieurs types d'associations s'appliquent au même lieu, il faut créer plusieurs associations géographiques (et non pas énumérer plusieurs types dans une même association). | Obligatoire | 1 | Objets de la classe [Terme]((./terme.md)) utilisant un vocabulaire contrôlé de type d'associations géographiques |
    | Associations géographiques: pays | Pays | Optionnel | 0..1 | Code ISO 3166-1 à 3 caractères |
    | Associations géographiques: province ou état | Province ou état | Optionnel | 0..1 | Code ISO 3166-2 |
    | Associations géographiques: ville | Ville | Optionnel | 0..1 | Texte court |
    | Composé de  | Énumération des membres des groupes, troupes et collectifs, etc.<br><br>Ne sert pas à indiquer les employés d'une organisation, dans le cas d'un contributeur corporatif.<br><br>*Exemple: le contributeur «Les Denis Drolet» pourrait énumérer «Vincent Léonard» et «Sébastien Dubé» dans la propriété «Composé de».* | Optionnel | 0..N | Objets de la classe [Contributeur](./contributeur.md) |

=== "Affichage étendu"

    | Propriété | Description | Priorité | Cardinalité | Type |
    | ------------ | ------------- | ------------ | ------------ |------------ |
    | Identifiants | Énumération des identifiants connus. | Obligatoire | 1..N | Objets de la classe utilitaire [Identifiant](./identifiant.md) |
    {% include '/references/proprietes/identifiant_inc.md' %}
    | Nom | Nom complet du contributeur, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. Le prénom et le nom de sont pas traités dans des propriétés distinctes à cause de la diversité des appellations de contributions, qui sont parfois des personnes morales.<br><br>*Exemples: Michel Rivard, Les Trois Accords, Koriass, Desjardins, Spectra.* | Obligatoire | 1 | Texte long |
    | Noms alternatifs | Autres appellations parfois utilisées pour le contributeur.<br><br>*Exemple: «Béatrice Martin» comme nom alternatif de «Cœur de pirate».<br>Exemple: «Compagnie Jean-Duceppe» comme nom alternatif de «Duceppe».* | Optionnel | 0..N | Énumération de textes libres |
    | Description | Description du contributeur. | Optionnel | 1 | Texte long multilingue |
    | Description courte | Description résumée du contributeur. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage. | Optionnelle | 1 | Texte long multilingue |
    | Média(s) | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au spectacle. | Optionnel | 0..N | Objet de la classe utilitaire [Média](./media.md) |
    {% include '/references/proprietes/media_inc.md' %}
    | Type de contributeur | Indication à l'effet qu'il s'agit d'une personne physique ou d'une personne morale. | Obligatoire | 1 | Objets de la classe [Terme](./terme.md) utilisant un vocabulaire contrôlé de type de contributeur |
    {% with object="Type de contributeur" %}{% include '/references/proprietes/terme_inc.md' %}{% endwith %}
    | Types de contributions habituelles | Énumération des types de contributions habituellement faites par le contributeur. | Optionnel | 0..N | Objets de la classe [Terme](./terme.md) utilisant un vocabulaire contrôlé de type de contribution |
    {% with object="Type de contribution" %}{% include '/references/proprietes/terme_inc.md' %}{% endwith %}
    | Associations géographiques | Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.<br><br>*Exemple: le contributeur a des associations géographiques avec Saint-Élie-de-Caxton. Ces associations géographiques sont de type «lieu de naissance» et «lieu de résidence».<br>Exemple: le contributeur Cirque Eloize a une association géographique de type «lieu du siège social» avec la gare Dalhousie dans le Vieux-Montréal.* | Optionnel | 0..N | Énumération d'objets d'association de lieux (voir les lignes suivantes) |
    | Associations géographiques: type d'association | Indication la relation entre le lieu et le contributeur. Dans le cas où plusieurs types d'associations s'appliquent au même lieu, il faut créer plusieurs associations géographiques (et non pas énumérer plusieurs types dans une même association). | Obligatoire | 1 | Objets de la classe [Terme]((./terme.md)) utilisant un vocabulaire contrôlé de type d'associations géographiques |
    | Associations géographiques: pays | Pays | Optionnel | 0..1 | Code ISO 3166-1 à 3 caractères |
    | Associations géographiques: province ou état | Province ou état | Optionnel | 0..1 | Code ISO 3166-2 |
    | Associations géographiques: ville | Ville | Optionnel | 0..1 | Texte court |
    | Composé de | Énumération des membres des groupes, troupes et collectifs, etc.<br><br>Ne sert pas à indiquer les employés d'une organisation, dans le cas d'un contributeur corporatif.<br><br>*Exemple: le contributeur «Les Denis Drolet» pourrait énumérer «Vincent Léonard» et «Sébastien Dubé» dans la propriété «Composé de».* | Optionnel | 0..N | Objets de la classe [Contributeur](./contributeur.md) |
