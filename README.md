# 🏢 FMCG M&A Data Integration: End-to-End Azure & Databricks Lakehouse Pipeline

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
