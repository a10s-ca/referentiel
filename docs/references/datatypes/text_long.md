# Texte long

**Nom:** Texte long

|                 |                                                |
| --------------- | ---------------------------------------------- |
| **Type**        | `string`                                       |
| **Requis**      | Non                                            |
| **Défini dans** | [root](../datatypes/partials/authorized_html) |

**Description:** Texte sans formatage, avec des changements de paragraphes (typiquement affiché sur plusieurs lignes).

Les textes longs ne sont pas prévus pour inclure des éléments de mise en page, mais permettent l'inclusion de quelques balises HTML lorsqu'elles sont nécessaires pour s'assurer que la description est compréhensible. Les balises HTML autorisées sont b, i, u, sup et sub.

**Exemples:**

```json
"<b>Texte en gras</b>"
```

```json
"<i>Texte en italique</i>"
```

```json
"<u>Texte souligné</u>"
```

```json
"<sup>Texte en exposant</sup>"
```

```json
"<sub>Texte en indice</sub>"
```

| Restrictions                                   |                                                                                                                                                                                                                                                                                                 |
| ---------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Longueur minimale**                          | 1                                                                                                                                                                                                                                                                                               |
| **Longueur maximale**                          | 6000                                                                                                                                                                                                                                                                                            |
| **Doit correspondre à l'expression régulière** | ```^(?!.*<[^bius][^>]*>)(?!.*</?(?!b\|i\|u\|sup\|sub)[^>]*>).*$``` [Test](https://regex101.com/?regex=%5E%28%3F%21.%2A%3C%5B%5Ebius%5D%5B%5E%3E%5D%2A%3E%29%28%3F%21.%2A%3C%2F%3F%28%3F%21b%7Ci%7Cu%7Csup%7Csub%29%5B%5E%3E%5D%2A%3E%29.%2A%24&testString=%22%3Cb%3ETexte+en+gras%3C%2Fb%3E%22) |

----------------------------------------------------------------------------------------------------------------------------
Généré avec [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) le 2026-01-07 at 12:04:40 -0500
