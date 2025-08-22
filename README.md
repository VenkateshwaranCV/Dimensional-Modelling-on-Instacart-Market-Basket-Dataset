Dimensional Modelling on Instacart Market Basket Dataset

This mini project was created to understand **dimensional modeling concepts** and **data warehousing workflows** using the Instacart Market Basket Analysis dataset. The focus was on exploring data organization through facts and dimensions, building a star schema, and practicing cloud-based ETL operations using Snowflake and AWS.

---

## 📊 Project Workflow

- First, the dataset was explored and the columns were analyzed.
- Based on the analysis, fact and dimension tables were separated.
- A **star schema** was created to organize the data model efficiently.
- The files were uploaded to **Amazon S3** and **access keys** were generated via AWS IAM.
- A **stage** was created in **Snowflake** using the credentials.
- A **CSV file format** was defined for importing the data.
- Using **Snowflake COPY statements**, all data files were imported into tables.
- **CTAS (Create Table As Select)** statements were used to build final fact and dimension tables.
- Finally, analytical SQL queries were performed on these tables to simulate market basket insights.


---

## 📁 Dataset Schema Overview

### Orders Table

| Column Name            | Data Type | Description                                 |
|------------------------|-----------|---------------------------------------------|
| order_id               | integer   | Unique identifier for an order              |
| user_id                | integer   | Unique identifier for a user                |
| order_number           | integer   | A counter for the orders of a user          |
| order_dow              | integer   | Day of the week the order was placed        |
| order_hour_of_day      | integer   | Hour of the day the order was placed        |
| days_since_prior_order | integer   | Number of days since the previous order     |

### Products Table

| Column Name  | Data Type | Description                   |
|--------------|-----------|-------------------------------|
| product_id   | integer   | Unique identifier for product |
| product_name | varchar   | Name of the product           |
| aisle_id     | integer   | Foreign key to Aisles         |
| department_id| integer   | Foreign key to Departments    |

### Order Products Table

| Column Name        | Data Type | Description                                 |
|--------------------|-----------|---------------------------------------------|
| order_id           | integer   | Order ID                                    |
| product_id         | integer   | Product ID                                  |
| add_to_cart_order  | integer   | Order in which the product was added to cart|
| reordered          | boolean   | Whether product was ordered before          |

### Aisles Table

| Column Name | Data Type | Description         |
|-------------|-----------|---------------------|
| aisle_id    | integer   | Unique Aisle ID     |
| aisle       | varchar   | Name of the aisle   |

### Departments Table

| Column Name   | Data Type | Description           |
|---------------|-----------|-----------------------|
| department_id | integer   | Unique Department ID  |
| department    | varchar   | Name of the department|

---

## 🛠️ Tech Stack

- **Snowflake** – Data warehouse and SQL processing
- **Amazon S3** – File storage
- **AWS IAM** – Access control and credentials
- **SQL** – Data querying and schema creation

---

## 📁 Files in Repo

- `InstaCart Create Table.sql` – Table definitions for staging
- `InstaCart Fact Dim.sql` – CTAS statements to create fact/dim tables
- `InstaCart Analytics.sql` – Sample analytical queries
- `Instacart_Star_Schema.jpg` – Star schema diagram

---

## 🚀 Purpose

This project was created as a hands-on learning experience to understand how dimensional modeling works in practice. It simulates the structure and logic of a data warehouse and showcases how analytical pipelines are built from raw files to query-ready tables.
