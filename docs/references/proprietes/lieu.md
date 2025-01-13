---
iucd: true
---

{%- import '/utils.md' as utils -%}


# Lieu

{% include '/references/proprietes/info_classes_principales.md' %}

=== "Affichage condensé"

    | Propriété | Description | Priorité | Cardinalité | Type |
    | ------------ | ------------- | ------------ | ------------ |------------ |
    | Identifiants | Énumération des identifiants connus. | Obligatoire | 1..N | Objets de la classe utilitaire [Identifiant](./identifiant.md) |
    | Nom | Nom du lieu, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels.<br><br>Éviter d'inclure le nom d'une salle spécifique dans le nom d'un lieu, sauf s'il s'agit du même nom.<br><br>*Exemple: «Grand Théâtre de Québec» sans la «Salle Louis-Fréchette» (qui sera le nom d'un objet de la classe Salle).* | Obligatoire | 1 | Texte long |
    | Description | Description du lieu | Optionnel | 0..N | Texte long multilingue |
    | Description courte | Description courte du lieu. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte. | Optionnel | 0..N | Texte long multilingue |
    | Lieu virtuel | Indique si le lieu est virtuel. | Obligatoire | 1 | Booléen |
    | Médias | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au lieu. | Optionnel | 0..N | Objet de la classe utilitaire [Média](./media.md) |
    | Salles | Énumération des salles présentes dans le lieu. Recommandé pour les lieux contenant plusieurs salles, ou pour documenter des informations associés à la classe [Salle](./salle.md) (par exemple, les configurations possibles) dans un lieu avec une seule salle. | Optionnel | 0..N | Objets de la classe [Salle](./salle.md) |
    | Adresse | Coordonnées complètes du lieu. | Obligatoire pour les lieux physiques | 0..1 | Objet de la classe utilitaire [Adresse](./adresse.md) |
    | URL | URL vers des pages web donnant plus d'information sur le lieu.<br><br>Pour des besoins plus précis, la propriété Médias, qui permet d'inclure des notes d'usage, peut être utilisée. | Optionnel | 0..N | Énumération d'URL |
    | Informations d'accessibilité universelle | (Propriété à confirmer – besoin de discussions avec le comité élargi)<br><br>Caractéristiques d'accessibilité universelle pour le lieu. Des caractéristiques supplémentaires pourraient être documentées pour la ou les salles. | Optionnel | 0..N | Objets de la classe [Terme](./terme.md) utilisant un vocabulaire contrôlé d'information sur l'accessibilité universelle |
    | Type de lieu | Identification du type de lieu. Ne pas confondre avec les caractéristiques de la salle, qui doivent être documentées dans un objet de la classe [Salle](./salle.md). | Optionnel | 0..N | Objets de la classe [Terme](./terme.md) utilisant un vocabulaire contrôlé de type de lieu |
    | Coordonnées géographiques | Coordonnées géographiques du point d'entrée principal du lieu. | Optionnel | 0..1 | Objet de coordonnées géographiques (voir les lignes suivantes) |
    | Coordonnées géographiques: longitude | Longitude, en degrés décimaux. | Obligatoire | 1 | Nombre décimal |
    | Coordonnées géographiques: latitude | Latitude, en degrés décimaux. | Obligatoire | 1 | Nombre décimal |


=== "Affichage étendu"

    | Propriété | Description | Priorité | Cardinalité | Type |
    | ------------ | ------------- | ------------ | ------------ |------------ |
    | Identifiants | Énumération des identifiants connus. | Obligatoire | 1..N | Objets de la classe utilitaire [Identifiant](./identifiant.md) |
    {% include '/references/proprietes/identifiant_inc.md' %}
    | Nom | Nom du lieu, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels.<br><br>Éviter d'inclure le nom d'une salle spécifique dans le nom d'un lieu, sauf s'il s'agit du même nom.<br><br>*Exemple: «Grand Théâtre de Québec» sans la «Salle Louis-Fréchette» (qui sera le nom d'un objet de la classe Salle).* | Obligatoire | 1 | Texte long |
    | Description | Description du lieu | Optionnel | 0..N | Texte long multilingue |
    | Description courte | Description courte du lieu. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte. | Optionnel | 0..N | Texte long multilingue |
    | Lieu virtuel | Indique si le lieu est virtuel. | Obligatoire | 1 | Booléen |
    | Médias | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au lieu. | Optionnel | 0..N | Objet de la classe utilitaire [Média](./media.md) |
    {% include '/references/proprietes/media_inc.md' %}
    | Salles | Énumération des salles présentes dans le lieu. Recommandé pour les lieux contenant plusieurs salles, ou pour documenter des informations associés à la classe [Salle](./salle.md) (par exemple, les configurations possibles) dans un lieu avec une seule salle. | Optionnel | 0..N | Objets de la classe [Salle](./salle.md) |
    | Adresse | Coordonnées complètes du lieu. | Obligatoire pour les lieux physiques | 0..1 | Objet de la classe utilitaire [Adresse](./adresse.md) |
    {% include '/references/proprietes/adresse_inc.md' %}
    | URL | URL vers des pages web donnant plus d'information sur le lieu.<br><br>Pour des besoins plus précis, la propriété Médias, qui permet d'inclure des notes d'usage, peut être utilisée. | Optionnel | 0..N | Énumération d'URL |
    | Informations d'accessibilité universelle | (Propriété à confirmer – besoin de discussions avec le comité élargi)<br><br>Caractéristiques d'accessibilité universelle pour le lieu. Des caractéristiques supplémentaires pourraient être documentées pour la ou les salles. | Optionnel | 0..N | Objets de la classe [Terme](./terme.md) utilisant un vocabulaire contrôlé d'information sur l'accessibilité universelle |
    {% with object="Accessibilité" %}{% include '/references/proprietes/terme_inc.md' %}{% endwith %}
    | Type de lieu | Identification du type de lieu. Ne pas confondre avec les caractéristiques de la salle, qui doivent être documentées dans un objet de la classe [Salle](./salle.md). | Optionnel | 0..N | Objets de la classe [Terme](./terme.md) utilisant un vocabulaire contrôlé de type de lieu |
    {% with object="Type de lieu" %}{% include '/references/proprietes/terme_inc.md' %}{% endwith %}
    | Coordonnées géographiques | Coordonnées géographiques du point d'entrée principal du lieu. | Optionnel | 0..1 | Objet de coordonnées géographiques (voir les lignes suivantes) |
    | Coordonnées géographiques: longitude | Longitude, en degrés décimaux. | Obligatoire | 1 | Nombre décimal |
    | Coordonnées géographiques: latitude | Latitude, en degrés décimaux. | Obligatoire | 1 | Nombre décimal |
