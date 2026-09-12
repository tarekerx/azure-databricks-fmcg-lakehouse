# 🏢 Atliqon M&A Data Integration: Azure Databricks Lakehouse

---

## 📌 Project Overview

**Atliqon**, a child company of a larger parent organization, operated with inconsistent data sources and no standardized enterprise ETL pipeline.

This project implements an end-to-end data engineering solution using **Azure**, **Azure Data Lake Storage Gen2**, **Azure Databricks**, **PySpark**, and **Delta Lake**.

The purpose of the project was to ingest, clean, transform, and integrate Atliqon's data with the parent company's data using the **Medallion Architecture**.

Historical data was processed using batch processing, while future data was handled using incremental processing. The pipeline can be executed daily or monthly depending on the source data, business requirements, data volume, and data-quality challenges.

> ✅ **Project Status:** The data ingestion, transformation, dimension processing, fact processing, and parent-company integration components are complete. Analytics and dashboard development are the remaining project components.

---

## 🎯 Business Problem

Atliqon did not have a consistent data platform or reliable ETL pipeline. Its data was stored across different systems and contained several data-quality and consistency issues, including:

- Inconsistent source structures.
- Different column names and naming conventions.
- Missing and invalid values.
- Duplicate records.
- Inconsistent data types.
- Different source-system business rules.
- Historical data requiring full batch processing.
- New data requiring incremental processing.
- No centralized data model.
- Limited data lineage and auditability.
- Difficulty integrating Atliqon's data with the parent company.

The goal was to create a scalable data pipeline that standardized Atliqon's data and integrated it with the parent company's data for future reporting and analytics.

---

## 🎯 Project Objectives

The project was designed to:

- Ingest Atliqon's legacy data.
- Store the data in Azure Data Lake Storage Gen2.
- Process historical data using batch processing.
- Process future data using incremental processing.
- Clean and standardize inconsistent source data.
- Remove duplicate records.
- Apply data-quality and schema validations.
- Transform the data using PySpark.
- Store processed data using Delta Lake.
- Implement the Medallion Architecture.
- Create dimension and fact tables.
- Integrate Atliqon's data with the parent company.
- Support daily and monthly pipeline execution.
- Provide a reliable foundation for analytics and dashboards.

---

## 🏗️ Solution Architecture

```text
┌────────────────────────────────────┐
│ Atliqon Legacy Data Sources        │
│ Inconsistent Source Systems        │
└─────────────────┬──────────────────┘
                  │
                  ▼
┌────────────────────────────────────┐
│ Azure Data Lake Storage Gen2       │
│ Raw Data Landing Zone              │
└─────────────────┬──────────────────┘
                  │
                  ▼
┌────────────────────────────────────┐
│ Azure Databricks                   │
│ PySpark + Delta Lake               │
└─────────────────┬──────────────────┘
                  │
       ┌──────────┼──────────┐
       ▼          ▼          ▼
┌──────────┐ ┌──────────┐ ┌──────────┐
│ Setup    │ │ Dimension│ │ Fact     │
│ Layer    │ │ Processing│ │ Processing│
└──────────┘ └──────────┘ └─────┬────┘
                                │
                                ▼
┌────────────────────────────────────┐
│ Unified Parent and Atliqon Data    │
│ Curated Delta Tables               │
└─────────────────┬──────────────────┘
                  │
                  ▼
┌────────────────────────────────────┐
│ Analytics and Dashboards           │
│ Databricks SQL                    │
└────────────────────────────────────┘
```

---

## 🥉 Medallion Architecture

### Bronze Layer

The Bronze layer stores the raw data ingested from Atliqon's source systems.

The raw ingestion process preserves the original source data and includes metadata such as:

- Source-system name.
- File name.
- Ingestion timestamp.
- Batch identifier.
- Processing date.
- Record count.

### Silver Layer

The Silver layer contains cleansed, standardized, and validated data.

The Silver-layer processing includes:

- Standardizing column names.
- Converting data types.
- Handling missing values.
- Removing duplicates.
- Validating schemas.
- Applying data-quality rules.
- Harmonizing source-system structures.
- Standardizing business entities.
- Preparing data for dimension and fact processing.

### Gold Layer

The Gold layer contains curated data for enterprise reporting and analytics.

The Gold layer includes:

- Date dimensions.
- Customer dimensions.
- Product dimensions.
- Pricing dimensions.
- Fact tables.
- Full-load fact data.
- Incrementally loaded fact data.
- Business-ready reporting datasets.

---

## 🔄 Batch and Incremental Processing

### Historical Batch Processing

Historical data was processed using full batch loads.

Batch processing was used to load and transform the existing historical data in its entirety. This allowed the project to establish the initial data foundation and create complete dimension and fact tables.

The historical workflow included:

1. Reading the available historical source data.
2. Loading the data into the data lake.
3. Validating and cleansing the data.
4. Creating dimension tables.
5. Creating the initial fact tables.
6. Integrating Atliqon's data with the parent company's data.

### Future Incremental Processing

Future data is processed incrementally to avoid reprocessing the entire dataset.

Incremental processing identifies new or changed records using available source-system information, such as:

- Transaction dates.
- Last-modified timestamps.
- Ingestion timestamps.
- Batch identifiers.
- File arrival dates.
- Watermarks.
- Delta Lake merge conditions.

The incremental fact-load process inserts new records and updates existing records when required.

This approach improves:

- Performance.
- Scalability.
- Processing time.
- Cost efficiency.
- Data freshness.
- Pipeline reliability.

---

## ⏱️ Pipeline Execution Frequency

The pipeline execution frequency depends on the source-system behavior, data volume, data availability, and business reporting requirements.

| Data Type | Processing Method | Execution Frequency |
| --- | --- | --- |
| Historical source data | Full batch processing | Initial load or backfill |
| New transactional data | Incremental processing | Daily or as required |
| Low-volume reference data | Batch or incremental processing | Monthly or as required |
| Corrected historical records | Targeted batch processing | As required |
| Data affected by quality issues | Selective reprocessing | As required |

The pipeline can be updated daily or monthly depending on the variety of data and the problems encountered in the source systems.

---

## 🧩 Parent Company Integration

After Atliqon's data was cleansed and standardized, it was merged with the parent company's data.

The integration process included:

- Aligning schemas between both companies.
- Standardizing column names.
- Standardizing data types.
- Mapping equivalent business entities.
- Harmonizing customer, product, pricing, and transaction information.
- Removing duplicate records.
- Applying common business rules.
- Preserving the original source-company information.
- Creating unified enterprise data products.

Source metadata was maintained to support data lineage and identify whether records originated from Atliqon or the parent company.

---

## 🛠️ Technology Stack

| Component | Technology | Role in Project |
| --- | --- | --- |
| Cloud Platform | Microsoft Azure | Cloud infrastructure |
| Cloud Storage | Azure Data Lake Storage Gen2 | Raw and processed data storage |
| Data Processing | Azure Databricks | Pipeline execution and transformation |
| Programming Language | Python | Pipeline development |
| Processing Framework | PySpark | Data cleansing and transformation |
| Storage Format | Delta Lake | Reliable transactional storage |
| Architecture | Medallion Architecture | Bronze, Silver, and Gold data organization |
| Historical Processing | PySpark batch processing | Full historical data loads |
| Incremental Processing | Delta Lake merge and incremental loads | Processing new and changed records |
| Orchestration | Databricks Workflows / Azure Data Factory | Pipeline scheduling |
| Analytics | Databricks SQL | Querying and reporting |
| Version Control | GitHub | Source-code and documentation management |

---

## 📁 Repository Structure

```text
Denormalized View/
│
├── consolidated_pipeline/
│   │
│   ├── 1_setup/
│   │   ├── dim_date_table_creation.ipynb
│   │   ├── setup_catalog.ipynb
│   │   └── utilities.ipynb
│   │
│   ├── 2_dim_data_processing/
│   │   ├── full_customers_dimension_pipeline.ipynb
│   │   ├── full_pricing_dimension_pipeline.ipynb
│   │   └── full_products_dimension_pipeline.ipynb
│   │
│   └── 3_fact_data_processing/
│       ├── 1_full_load_fact.ipynb
│       └── 1_incr_load_fact.ipynb
│
├── dashboard/
│   └── queries/
│       ├── Average Monthly Revenue Trend.sql
│       └── Top 10 Products by Revenue.sql
│
└── README.md
```

---

## 📓 Notebook Responsibilities

### `1_setup`

The setup notebooks create the common project configuration and reusable components.

#### `dim_date_table_creation.ipynb`

Responsible for:

- Creating the date dimension.
- Generating calendar attributes.
- Creating reporting periods.
- Supporting time-based analysis.

#### `setup_catalog.ipynb`

Responsible for:

- Setting up the Databricks catalog.
- Creating schemas and database objects.
- Preparing the environment for Delta tables.

#### `utilities.ipynb`

Responsible for:

- Providing reusable helper functions.
- Managing common transformation logic.
- Supporting data validation and pipeline execution.

### `2_dim_data_processing`

The dimension-processing notebooks create and populate the main business dimensions.

#### `full_customers_dimension_pipeline.ipynb`

Responsible for:

- Processing customer source data.
- Cleaning customer attributes.
- Removing duplicate customers.
- Creating the customer dimension.
- Integrating customer information across companies.

#### `full_pricing_dimension_pipeline.ipynb`

Responsible for:

- Processing pricing data.
- Standardizing pricing attributes.
- Validating price records.
- Creating the pricing dimension.

#### `full_products_dimension_pipeline.ipynb`

Responsible for:

- Processing product data.
- Standardizing product attributes.
- Handling product classifications.
- Removing duplicate products.
- Creating the product dimension.

### `3_fact_data_processing`

The fact-processing notebooks create historical and incremental fact datasets.

#### `1_full_load_fact.ipynb`

Responsible for:

- Performing the initial full fact-table load.
- Processing historical transactions.
- Joining transactions with dimensions.
- Creating the initial curated fact table.

#### `1_incr_load_fact.ipynb`

Responsible for:

- Processing new transaction records.
- Identifying incremental data.
- Loading new records into the fact table.
- Updating changed records where required.
- Preventing unnecessary full-table reprocessing.

---

## 🔍 Data Quality and Reliability

The pipeline addresses the following data-quality requirements:

- Schema validation.
- Required-field validation.
- Data-type validation.
- Null-value handling.
- Duplicate detection.
- Invalid-record identification.
- Standardized naming conventions.
- Source-system reconciliation.
- Record-count validation.
- Full-load validation.
- Incremental-load validation.
- Historical and current-data consistency checks.
- Pipeline audit metadata.

Delta Lake provides transactional consistency and reliable merge operations for incremental processing.

---

## 📊 Dashboard Queries

The dashboard query directory contains SQL queries prepared for business analytics.

Current queries include:

- **Average Monthly Revenue Trend**
- **Top 10 Products by Revenue**

These queries use the curated fact and dimension data produced by the pipeline.

> 🚧 **Current Status:** The data engineering pipeline is complete. Analytics and dashboard development is still in progress.

---

## 📌 Current Implementation Status

| Component | Status |
| --- | --- |
| Business problem definition | Completed |
| Azure and Databricks architecture | Completed |
| Repository setup | Completed |
| Data ingestion design | Completed |
| Historical batch processing | Completed |
| Incremental processing | Completed |
| Setup notebooks | Completed |
| Date dimension | Completed |
| Customer dimension pipeline | Completed |
| Pricing dimension pipeline | Completed |
| Product dimension pipeline | Completed |
| Full fact-table load | Completed |
| Incremental fact-table load | Completed |
| Atliqon and parent-company integration | Completed |
| Data cleansing and standardization | Completed |
| Pipeline scheduling approach | Completed |
| Dashboard query development | In progress |
| Analytics and dashboards | In progress |

---

## ✅ Project Outcome

The project created a scalable and reliable data engineering platform for Atliqon and its parent company.

The implemented solution:

- Standardizes inconsistent Atliqon data.
- Uses Azure Data Lake Storage Gen2 as the centralized data lake.
- Uses Databricks and PySpark for data processing.
- Implements the Medallion Architecture.
- Supports historical batch processing.
- Supports future incremental processing.
- Creates reusable dimensions and fact tables.
- Integrates Atliqon's data with the parent company.
- Preserves source-system lineage.
- Supports daily and monthly pipeline execution.
- Provides curated data for analytics and reporting.

The remaining project work is focused on completing analytics and dashboard development using the curated data products.
