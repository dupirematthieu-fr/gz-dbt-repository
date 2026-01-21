# Greenweez Marketing & Sales Analytics – dbt 

<p align="center">
  <img src="https://img.shields.io/badge/language-SQL-blue" />
  <img src="https://img.shields.io/badge/tool-dbt-orange" />
  <img src="https://img.shields.io/badge/warehouse-BigQuery-lightgrey" />
  <img src="https://img.shields.io/badge/category-Analytics%20Engineering-purple" />
  <img src="https://img.shields.io/badge/status-Portfolio%20Project-success" />
</p>


Ce projet dbt modélise les données marketing et sales d’un e-commerce inspiré de Greenweez. 
Il unifie plusieurs sources d'acquisition (Adwords, Bing, Criteo, Facebook), les données de 
ventes, de produits et de shipping, afin de construire des modèles financiers quotidiens 
et mensuels permettant de piloter la rentabilité des campagnes marketing.

---

## 🎯 Objectifs du projet

- Centraliser plusieurs sources marketing hétérogènes
- Nettoyer et standardiser les données dans une couche **staging**
- Construire des modèles **intermediate** reflétant les coûts, les marges et les performances
- Produire des data marts financiers **finance_days** et **finance_campaigns_month**
- Permettre une vision consolidée : campagnes, ventes, marge, shipping, ROI

---

## 🧱 Architecture du projet

Le projet suit les bonnes pratiques de l’Analytics Engineering :


### 🗂 Structure dbt

models/
├── staging/
│ ├── raw_ads/
│ │ stg_raw__bing.sql
│ │ stg_raw__adwords.sql
│ │ stg_raw__criteo.sql
│ │ stg_raw__facebook.sql
│ ├── raw_sales/
│ │ stg_raw__sales.sql
│ │ stg_raw__product.sql
│ │ stg_raw__ship.sql
├── intermediate/
│ int_campaigns.sql
│ int_campaigns_day.sql
│ int_sales_margin.sql
│ int_orders_margin.sql
│ int_orders_operational.sql
├── marts/
  finance_days.sql
  finance_campaigns_day.sql
  finance_campaigns_month.sql

---

## 🔍 Description des principales tables

### 🟦 **Staging (stg_raw__)**
Objectif : nettoyer, renommer, typer et harmoniser les colonnes issues des différentes plateformes.

- `stg_raw__bing`
- `stg_raw__adwords`
- `stg_raw__criteo`
- `stg_raw__facebook`
- `stg_raw__sales`
- `stg_raw__product`
- `stg_raw__ship`

### 🟧 **Intermediate (int__)**
Objectif : enrichir et unifier les données pour le calcul des marges, coûts et performances :

- `int_campaigns` : unification des sources marketing
- `int_campaigns_day` : dépenses et KPI journaliers
- `int_sales_margin` : marge unitaire
- `int_orders_margin` : marge par commande
- `int_orders_operational` : vues opérationnelles (coûts shipping, retours…)

### 🟥 **Finance Marts**
Objectif : fournir des tables prêtes pour la BI et les équipes Finance/Acquisition :

- `finance_days` : consolidation journalière de toutes les dépenses & ventes
- `finance_campaigns_day` : suivi ROI/jour par campagne
- `finance_campaigns_month` : vision mensuelle (CAC, ROAS, marge)

---

## 🧪 Tests & Documentation

Le projet inclut :

- Tests `unique` et `not null` sur les IDs clés
- Tests `relationships` entre sources marketing et ventes
- Tests de cohérence sur les dates et les montants
- Documentation dbt accessible via :
dbt docs generate
dbt docs serve

---

## 🧵 Lineage

Le graphe ci-dessous montre la transformation complète :

<img width="932" height="399" alt="Capture d’écran 2025-11-15 à 15 13 43" src="https://github.com/user-attachments/assets/b331c463-6123-492d-9443-42be19b57d16" />

---

## 🚀 Exécution du projet

Pour générer tous les modèles :
dbt deps
dbt run
dbt test
dbt docs generate

---

## 📈 Résultats

- Harmonisation de 4 sources marketing
- Automatisation de la marge par commande
- Vision consolidée finance + acquisition
- Construction d'un data mart complet pour la BI

---

## 👩‍💻 Technologies utilisées

- **dbt Core**
- **BigQuery**
- **SQL**
- **dbt tests & documentation**
- **Visualisation lineage dbt**
