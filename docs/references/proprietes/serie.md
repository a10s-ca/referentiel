# Série

| Identifiants | Énumération des identifiants connus. | 1..N | 1..N | Objets de la classe utilitaire Identifiant |
| ------------ | ------------- | ------------ | ------------ |------------ |
| Nom | Nom de la série, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. | 1 | 1 | Texte court multilingue |
| Autre nom | Élément qui ne fait pas partie du nom, mais qui le complète, sans toutefois relever de la description elle-même.<br><br>Par exemple, _le Festival de musique émergente en Abitibi-Témiscamingue_ est aussi connu sous son acronyme _FME_. | 1 | 1 | Texte court multilingue |
| Description | Description de la série | 1 | 1 | Texte long multilingue |
| Description courte | Description résumée de la série. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte. | 1 | 1 | Texte long multilingue |
| Médias | Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé à la série. | 0..N | 0..N | Objet de la classe utilitaire Média |
| Contributions | Énumération des contributions spécifiques à la série, et non pas aux représentations. Il s'agit typiquement de contributions de production, d'organisation ou de commandite. Les contributions artistiques seront typiquement associées aux spectacles et aux représentations.<br><br>_Exemple: un commanditaire d'un festival a une contribution à la série.<br>Contre-exemple: un artiste sur scène lors d'un spectacle dans le cadre de la série n'a pas de contribution à la série elle-même._ | 0..N | 0..N | Objet la classe utilitaire Contribution |
| URL | URL vers des pages web donnant plus d'information sur la série.<br><br>Pour des besoins plus précis, par exemple des URL de critiques du spectacle, la propriété Médias, qui permet d'inclure des notes d'usage, peut être utilisée. | 0..N | 0..N | Énumération d'URL |
| Début | Date de début de la série | 1 | 1 | Date et heure |
| Fin | Date de fin de la série | 0..1 | 0..1 | Date et heure |
| Représentations | Identification des représentations faisant partie de la série | 0..N | 0..N | Objets de la classe Représentation |
| Offres | Description des différentes modalités pour assister à la série. Il peut y avoir des modalités pour le présentiel et/ou le virtuel. Les modalités pour le présentiel et le virtuel doivent être documentées pour une série hybride. Une série contient donc au maximum deux offres. | 1..2 | 1..2 | Objets de la classe utilitaire Offre |