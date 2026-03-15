# 🏠 Airbnb AWS dbt Snowflake

![Status](https://img.shields.io/badge/status-In%20Development-blue)
![Tech Stack](https://img.shields.io/badge/stack-AWS%20%7C%20dbt%20%7C%20Snowflake%20%7C%20SQL-blue)

A **production-ready analytics engineering pipeline** that takes raw Airbnb data stored in **AWS S3**, loads it into **Snowflake**, and transforms it using **dbt** into analytics-ready models. This project demonstrates modern ELT practices, layered data modeling, and production-oriented design.

---

## 🚀 Project Overview

This repository implements a full **ELT workflow**:

- 📥 **Raw data ingestion from AWS S3**  
- ❄️ **Data warehouse in Snowflake**  
- 🛠 **Transformations with dbt** to produce clean, analytics-ready models  
- 📊 **Analytics and BI-ready datasets**  
- 🧱 **Layered architecture**: raw → staging → core → analytics models  

---

## 🧩 Repository Structure
airbnb_aws_dbt_snowflake/
├── dbt_project.yml # dbt configuration
├── models/ # dbt transformation SQL models
│ ├── raw/ # Raw landing models
│ ├── staging/ # Cleaning & standardization
│ ├── core/ # Fact & dimension logic
│ └── marts/ # Analytics-ready models
├── seeds/ # Static seed data
├── snapshots/ # SCD & historical snapshots
├── macros/ # Reusable dbt SQL macros
├── tests/ # Custom dbt tests
├── profiles.yml.example # Snowflake connection example
└── README.md # Project documentation

---

## 🛠 Tech Stack

![AWS](https://img.shields.io/badge/AWS-S3%20%7C%20IAM-lightgray)
![Snowflake](https://img.shields.io/badge/Snowflake-00A3E0?style=flat&logo=snowflake&logoColor=white)
![dbt](https://img.shields.io/badge/dbt-FF6347?style=flat&logo=dbt&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=flat&logo=mysql&logoColor=white)

---

## 📈 Data Workflow

flowchart LR
    A[AWS S3 Raw Files] --> B[Snowflake Raw Schema]
    B --> C[dbt Staging Models]
    C --> D[dbt Core Models - Facts & Dimensions]
    D --> E[Analytics-Ready Datasets]
    E --> F[BI Dashboards / Reports]
