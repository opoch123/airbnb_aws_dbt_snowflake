# 🏠 Airbnb AWS dbt Snowflake

![Status](https://img.shields.io/badge/status-in_development-blue)
![Tech Stack](https://img.shields.io/badge/stack-AWS%20%7C%20dbt%20%7C%20Snowflake%20%7C%20SQL-blue)

An **end‑to‑end analytics engineering pipeline** that takes raw Airbnb data stored in AWS, loads it into **Snowflake**, and transforms it using **dbt** into analytics‑ready models. This project demonstrates modern ELT practices, layered data modeling, and production‑oriented design.

---

## 🚀 Project Overview

This repository implements a complete data transformation workflow using industry‑standard tools and methodologies:

- 🗂 **Raw Data Landing on AWS S3**  
  Airbnb datasets (listings, reviews, hosts, etc.) sourced from cloud storage.

- ❄️ **Data Warehouse with Snowflake**  
  Data is loaded into Snowflake where dbt can access and transform it.

- 🛠 **dbt Transformations**  
  dbt (Data Build Tool) takes raw data and performs staged transformations into clean, tested, documentation‑ready datasets.

- 📊 **Analytics‑Ready Models**  
  Models are structured with dimensional views (facts & dimensions) suitable for BI tools and analytical dashboards.

- 📈 **Medallion/Layered Architecture**  
  Follows a multi‑stage transformation process: *raw → staging → core → analytics models*.

---

## 🧠 What’s Inside

Here’s what this project typically includes:

---

## 🛠 Tech Stack

![AWS](https://img.shields.io/badge/AWS-S3%20%7C%20IAM-lightgray)
![Snowflake](https://img.shields.io/badge/Snowflake-00A3E0?style=flat&logo=snowflake&logoColor=white)
![dbt](https://img.shields.io/badge/dbt-FF6347?style=flat&logo=dbt&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=flat&logo=mysql&logoColor=white)

- **Amazon S3**: Raw data storage  
- **Snowflake**: Cloud data warehouse  
- **dbt (Data Build Tool)**: SQL‑based transformation & testing  
- **SQL**: Core transformation language  

---

## 📈 Data Workflow

```mermaid
flowchart LR
    A[AWS S3 Raw Files] --> B[Snowflake Raw Schema]
    B --> C[dbt Staging Models]
    C --> D[dbt Core Models (Facts & Dimensions)]
    D --> E[Analytics‑Ready Datasets]
    E --> F[BI Dashboards / Reports]
