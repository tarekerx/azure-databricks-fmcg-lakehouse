```markdown
# 🏢 FMCG M&A Data Integration: End-to-End Azure & Databricks Lakehouse Pipeline

![Status: Work in Progress](https://img.shields.io/badge/Status-Work_in_Progress-yellow?style=for-the-badge)
[![Azure](https://img.shields.io/badge/Azure-0089D6?style=for-the-badge&logo=microsoft-azure&logoColor=white)](https://azure.microsoft.com/)
[![Databricks](https://img.shields.io/badge/Databricks-FF3621?style=for-the-badge&logo=databricks&logoColor=white)](https://databricks.com/)
[![Apache Spark](https://img.shields.io/badge/Apache_Spark-E25A1C?style=for-the-badge&logo=apachespark&logoColor=white)](https://spark.apache.org/)
[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Delta Lake](https://img.shields.io/badge/Delta_Lake-000000?style=for-the-badge&logo=delta-lake&logoColor=white)](https://delta.io/)

---

## 📌 Project Problem Statement

Following a recent Merger & Acquisition (M&A) event, **Atliqon (FMCG Retailer)** acquired **Sportsbar Co.**, a specialized enterprise operating without a centralized or scalable data infrastructure. 

**Goal:** Build an enterprise-grade ETL pipeline that ingests, cleanses, transforms, and unifies legacy transactional systems into a unified **Databricks Lakehouse** using the **Medallion Architecture**.

> **Note:** This repository is currently under active development. Pipeline components are being built step-by-step.

---

## 📑 Table of Contents
- [Planned Architecture](#-planned-architecture)
- [Target Tech Stack](#-target-tech-stack)
- [Project Roadmap](#-project-roadmap)
- [Project Directory Structure](#-project-directory-structure)

---

## 🏗️ Planned Architecture

```text
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

```

---

## 🛠️ Target Tech Stack

| Component | Technology | Role in Project |
| --- | --- | --- |
| **Cloud Storage** | Azure Data Lake Storage Gen2 | Storing raw legacy data & Delta files |
| **Data Engine** | Databricks (PySpark + Delta Lake) | Data transformations & Medallion layers |
| **Orchestration** | Databricks Workflows / Azure Data Factory | Automated execution (Planned) |
| **Analytics** | Databricks Dashboards / SQL Warehouse | Visualizing business KPIs |

---

## 🗺️ Project Roadmap & Implementation Status

* [x] **Phase 1: Project Scoping & Environment Setup**
* [x] Define business use-case (Atliqon acquisition of Sportsbar Co.)
* [x] Create GitHub repository & documentation design
* [ ] Set up Azure ADLS Gen2 containers
* [ ] Configure Databricks Free / Community environment


* [ ] **Phase 2: Ingestion & Bronze Layer**
* [ ] Source legacy CSV files from both companies
* [ ] Write DBFS mount configuration scripts
* [ ] Build `01_ingestion_bronze.py` notebook to store raw Delta tables


* [ ] **Phase 3: Transformation & Silver Layer**
* [ ] Design schema validation rules
* [ ] Build `02_transform_silver.py` notebook (deduplication & merging)


* [ ] **Phase 4: Analytics & Gold Layer**
* [ ] Build `03_analytics_gold.py` (Fact/Dimension modeling)
* [ ] Build executive dashboards in Databricks



---

## 📁 Repository Structure (Target)

```text
azure-databricks-fmcg-lakehouse/
├── config/                   # Storage mount scripts & configurations
├── data/                     # Sample legacy data files
├── docs/                     # Architecture diagrams
├── notebooks/
│   ├── 01_ingestion_bronze.py   # [WIP] Raw file processing
│   ├── 02_transform_silver.py  # [Planned] Data cleansing & enrichment
│   └── 03_analytics_gold.py    # [Planned] Star schema modeling
├── README.md

```

```

---

### What to do next?

Now that your repository accurately reflects your starting point, where would you like to begin building?

1. **Setting up the mock data:** Generate sample CSV datasets for Atliqon and Sportsbar Co.
2. **Azure ADLS & Databricks connection:** Write the code to mount Azure storage into Databricks.
3. **Bronze Layer Notebook:** Write the actual PySpark script to ingest raw data into Delta format.

```
