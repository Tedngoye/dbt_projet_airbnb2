Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

# Chapitre : Sources, Seeds et Snapshots

### Sources

Model du fichier "model/sources.yaml" pour définir des sources : 
"
version: 2

sources: 
  - name: raw_airbnb_data
    database: airbnb
    schema: raw
    tables:
      - name: hosts
      - name: listings
      - name: reviews

"

### Seeds

Le répertoire "seeds" contiens les données statics, qu'on peu assayer rapidement.
Exemple, en tant que data analyste, on a besoin de tester un jeu de données mais on ne souhaite pas demander aux dataIngénieur qui devront mettre en place un pipline  et autres pour nous mettre à 
dispo un dataset, nous avons un jeu de données statics qui peu permettre de faire le travail donc on le met dans le réperoire "seeds".

### Créer la table curation_tourits_per_year
with tourists_per_year as (
    SELECT year, tourists
   from {{ ref ("tourists_per_year") }}
)
SELECT
    DATE(year || '-12-31') as year,
    tourists 
from tourists_per_year 


### Snapshots
Pour la suite (demain : 19/05/2025)

Important: le nom de la base de données doit respecter la casse
En effet, pour ce projet, le nom de ma BDD utilisée dans Snowflake est AIRBNB2 mais dans certaines partie des transformations, j'ai mis airbnb2 par conséquent, les transformations n'étaient pas appliquée comme souhaitée dans la BDD AIRBNB2.