🏢 FMCG M&A Data Integration: End-to-End Azure & Databricks Lakehouse Pipeline

Status: Work in Progress
Azure | Databricks | Apache Spark | Python | Delta Lake

================================================================================

📌 Project Problem Statement

Following a recent Merger & Acquisition (M&A) event, Atliqon (FMCG Retailer) acquired Sportsbar Co., a specialized enterprise operating without a centralized or scalable data infrastructure.

Goal: Build an enterprise-grade ETL pipeline that ingests, cleanses, transforms, and unifies legacy transactional systems into a unified Databricks Lakehouse using the Medallion Architecture.

Note: This repository is currently under active development. Pipeline components are being built step-by-step.

================================================================================

📑 Table of Contents

1. Planned Architecture
2. Target Tech Stack
3. Project Roadmap & Implementation Status
4. Repository Structure (Target)

================================================================================

🏗️ Planned Architecture

[ Legacy Data Sources ]
│
▼
[ Azure Data Lake Storage Gen2 (ADLS) ] ────► Ingestion (Raw landing)
│
▼
[ Azure Databricks (PySpark + Delta Lake) ]
├── 🥉 Bronze Layer : Raw schema-on-read ingestion
├── 🥈 Silver Layer : Cleaned, deduplicated, enriched data
└── 🥇 Gold Layer   : Star Schema / Aggregated business metrics
│
▼
[ Databricks Dashboards / BI ] ──────────────► Analytics & Reporting

================================================================================

🛠️ Target Tech Stack

+------------------+----------------------------------+-----------------------------------------+
| Component        | Technology                       | Role in Project                         |
+------------------+----------------------------------+-----------------------------------------+
| Cloud Storage    | Azure Data Lake Storage Gen2     | Storing raw legacy data & Delta files   |
| Data Engine      | Databricks (PySpark + Delta Lake)| Data transformations & Medallion layers |
| Orchestration    | Databricks Workflows / ADF       | Automated execution (Planned)           |
| Analytics        | Databricks Dashboards / SQL      | Visualizing business KPIs               |
+------------------+----------------------------------+-----------------------------------------+

================================================================================

🗺️ Project Roadmap & Implementation Status

Phase 1: Project Scoping & Environment Setup
[x] Define business use-case (Atliqon acquisition of Sportsbar Co.)
[x] Create GitHub repository & documentation design
[ ] Set up Azure ADLS Gen2 containers
[ ] Configure Databricks Free / Community environment

Phase 2: Ingestion & Bronze Layer
[ ] Source legacy CSV files from both companies
[ ] Write DBFS mount configuration scripts
[ ] Build 01_ingestion_bronze.py notebook to store raw Delta tables

Phase 3: Transformation & Silver Layer
[ ] Design schema validation rules
[ ] Build 02_transform_silver.py notebook (deduplication & merging)

Phase 4: Analytics & Gold Layer
[ ] Build 03_analytics_gold.py (Fact/Dimension modeling)
[ ] Build executive dashboards in Databricks

================================================================================

📁 Repository Structure (Target)

azure-databricks-fmcg-lakehouse/
├── config/                  # Storage mount scripts & configurations
├── data/                    # Sample legacy data files
├── docs/                    # Architecture diagrams
├── notebooks/
│   ├── 01_ingestion_bronze.py   # [WIP] Raw file processing
│   ├── 02_transform_silver.py  # [Planned] Data cleansing & enrichment
│   └── 03_analytics_gold.py    # [Planned] Star schema modeling
└── README.md

================================================================================

What to do next?

Now that your repository accurately reflects your starting point, where would you like to begin building?

1. Setting up the mock data: Generate sample CSV datasets for Atliqon and Sportsbar Co.
2. Azure ADLS & Databricks connection: Write the code to mount Azure storage into Databricks.
3. Bronze Layer Notebook: Write the actual PySpark script to ingest raw data into Delta format.
