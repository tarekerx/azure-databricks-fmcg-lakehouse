# 🏢 FMCG M&A Data Integration: End-to-End Azure & Databricks Lakehouse Pipeline

[![Azure](https://img.shields.io/badge/Azure-0089D6?style=for-the-badge&logo=microsoft-azure&logoColor=white)](https://azure.microsoft.com/)
[![Databricks](https://img.shields.io/badge/Databricks-FF3621?style=for-the-badge&logo=databricks&logoColor=white)](https://databricks.com/)
[![Apache Spark](https://img.shields.io/badge/Apache_Spark-E25A1C?style=for-the-badge&logo=apachespark&logoColor=white)](https://spark.apache.org/)
[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Delta Lake](https://img.shields.io/badge/Delta_Lake-000000?style=for-the-badge&logo=delta-lake&logoColor=white)](https://delta.io/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

---

## 📌 Project Overview

Following a recent Merger & Acquisition (M&A) event, **Atliqon (FMCG Retailer)** acquired **Sportsbar Co.**, a specialized enterprise operating without a centralized or scalable data infrastructure. 

This project implements an end-to-end, enterprise-grade ETL pipeline that ingests, cleanses, transforms, and unifies legacy transactional systems into a unified **Databricks Lakehouse** using the **Medallion Architecture**. The resulting framework delivers reliable data governance, automated data transformations, and business intelligence reporting accessible on free/community-tier cloud resources.

---

## 📑 Table of Contents
- [Architecture](#-architecture)
- [Tech Stack & Versions](#-tech-stack--versions)
- [Medallion Architecture Layers](#-medallion-architecture-layers)
- [Project Directory Structure](#-project-directory-structure)
- [Setup & Deployment Guide](#-setup--deployment-guide)
- [Key Learning Outcomes](#-key-learning-outcomes)
- [Repository Enhancements](#-repository-enhancements)
- [Contributing](#-contributing)
- [License](#-license)

---

## 🏗️ Architecture

```text
[ Legacy Systems / CSV Sources ] 
               │
               ▼
[ Azure Data Lake Storage Gen2 (ADLS) ] ────► Landing Zone (Raw Storage)
               │
               ▼
[ Azure Databricks (PySpark + Delta Lake) ]
       ├── 🥉 Bronze Layer : Raw schema-on-read ingestion + audit timestamps
       ├── 🥈 Silver Layer : Cleansed, deduplicated, schema-enforced data
       └── 🥇 Gold Layer   : Star Schema dimensional modeling & aggregates
               │
               ▼
[ Databricks Dashboards / BI ] ──────────────► Analytics & Business Intelligence
