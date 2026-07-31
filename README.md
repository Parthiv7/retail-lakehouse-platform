# 🛒 Walmart Retail Data Platform
### End-to-End Lakehouse Architecture using Databricks, Apache Airflow, dbt & Delta Lake

<p align="center">

<img src="docs/Walmart Retail Data Platform Architecture.png" width="100%">

</p>

<p align="center">

![Databricks](https://img.shields.io/badge/Databricks-FF3621?style=for-the-badge&logo=databricks&logoColor=white)
![dbt](https://img.shields.io/badge/dbt-FF694B?style=for-the-badge&logo=dbt&logoColor=white)
![Apache Airflow](https://img.shields.io/badge/Apache%20Airflow-017CEE?style=for-the-badge&logo=apacheairflow&logoColor=white)
![Delta Lake](https://img.shields.io/badge/Delta%20Lake-003366?style=for-the-badge)
![Unity Catalog](https://img.shields.io/badge/Unity%20Catalog-orange?style=for-the-badge)
![Apache Spark](https://img.shields.io/badge/Apache%20Spark-E25A1C?style=for-the-badge&logo=apachespark&logoColor=white)

</p>

---

# 📖 Overview

This project demonstrates an enterprise-scale Retail Lakehouse Platform built using Databricks, Apache Airflow, dbt and Delta Lake following the Medallion Architecture.

The platform ingests operational retail data from PostgreSQL using CDC and streaming review data from Amazon S3, transforms it into analytics-ready dimensional models, builds reusable semantic metrics, and serves executive dashboards through Databricks SQL.

---

# ✨ Key Features

- Bronze, Silver Technical, Silver Business & Gold architecture
- Change Data Capture (CDC) ingestion
- Delta Lake storage
- dbt transformation framework
- Operational Business Table (OBT)
- Star Schema dimensional modeling
- Semantic Layer
- Databricks SQL Dashboards
- Apache Airflow orchestration
- Unity Catalog governance
- Data Quality Testing with dbt

---

# 🏗️ Architecture

> Complete platform architecture

<p align="center">

<img src="docs/Walmart Retail Data Platform Architecture.png" width="85%">

</p>

---

# ⚙️ Technology Stack

| Layer | Technology |
|---------|------------|
| Cloud Platform | Databricks |
| Storage | Delta Lake |
| Data Warehouse | Databricks SQL Warehouse |
| Transformation | dbt |
| Orchestration | Apache Airflow |
| Governance | Unity Catalog |
| Source Systems | PostgreSQL |
| Streaming | Amazon S3 |
| BI | Databricks SQL Dashboards |
| Version Control | Git & GitHub |

---

# 📂 Data Sources

## PostgreSQL

Operational Retail Database

- Orders
- Customers
- Products
- Stores
- Employees

CDC ingestion into Bronze layer.

---

## Amazon S3

Streaming Dataset

- reviews.csv

Processed independently into a Streaming Delta Table.

---

# 🥉 Bronze Layer

Raw Delta Tables

Responsibilities

- CDC ingestion
- Historical Landing
- Raw Storage
- Immutable Data

---

# 🥈 Silver Technical Layer

Responsibilities

- Data Cleaning
- Deduplication
- Standardization
- Technical Validation

✔ dbt Technical Tests

---

# 🥈 Silver Business Layer

Business-ready Operational Business Table (OBT)

Built using LEFT JOINs across all Silver Technical tables.

Responsibilities

- Business Rules
- Conformed Business Data
- Aggregations

✔ dbt Business Tests

---

# 🥇 Gold Layer

Analytics-ready Star Schema

### Fact

- fact_orders

### Dimensions

- dim_customers
- dim_products
- dim_stores
- dim_employees

### Streaming

- reviews

---

# 📊 Semantic Layer

Reusable business metrics built in dbt.

Models

- customer_metrics
- sales_metrics
- store_metrics
- product_metrics
- review_metrics

---

# 📈 Dashboards

## Retail Customer & Store Analytics

<p align="center">

<img src="docs/Retail Customer And Store Analytics Dashboard.png" width="95%">

</p>

Features

- KPI Cards
- Top Customers
- Top Stores
- Revenue by Province
- Orders by Store
- Customer Lifetime Summary

---

## Sales & Product Performance

<p align="center">

<img src="docs/Sales & Product Performance Dashboard.png" width="95%">

</p>

Features

- Revenue KPIs
- Product Revenue
- Category Revenue
- Top Stores
- Revenue by Province
- Product Performance

---

# 🔄 Airflow Orchestration

<p align="center">

<img src="docs/Airflow DAG Only Graph View .png">

</p>

Pipeline

```text
ingest_cdc
      │
clean_target
      │
source_freshness
      │
silver_technical
      │
silver_technical_tests
      │
silver_business
      │
silver_business_tests
      │
gold_ephemeral
      │
gold_dimensions
      │
gold_facts
      │
semantic_metrics
```

---


---

## 8. Update project structure

Since your repo actually looks like this:

```text
retail-lakehouse-platform/
│
├── analytics_engineering/
│   ├── config/
│   ├── dags/
│   ├── walmart_project/
│   ├── docker-compose.yaml
│   ├── Dockerfile
│   ├── requirements.txt
│   └── .env
│
├── walmart_dataset/
│   ├── data/
│   ├── ddl/
│   └── load_data.py
│
├── docs/
│   ├── Walmart Retail Data Platform Architecture.png
│   ├── Airflow DAG Only Graph View .png
│   ├── Retail Customer And Store Analytics Dashboard.png
│   ├── Sales & Product Performance Dashboard.png
│   └──  Airflow DAG Graph and task View .png
│ 
│
├── README.md
├── LICENSE
└── .gitignore
```

---

# 🔐 Governance

Unity Catalog provides

- Metadata Management
- Access Control
- Data Lineage
- Audit Logs
- Data Ownership

---

# 📊 Skills Demonstrated

- Data Engineering
- Databricks
- Apache Airflow
- dbt
- Delta Lake
- Apache Spark
- CDC Pipelines
- Medallion Architecture
- Star Schema
- Semantic Layer
- SQL Analytics
- Data Modeling
- Data Governance

---

# 🚀 Future Enhancements

- AI Retail Analytics Assistant
- Natural Language to SQL
- RAG over Retail Metadata
- CI/CD Pipeline
- Terraform
- Monitoring & Alerting

---

# ⭐ Project Highlights

- End-to-End Retail Lakehouse
- Production-inspired Architecture
- Automated Data Pipeline
- Semantic Business Metrics
- Executive Dashboards
- Enterprise Data Governance
