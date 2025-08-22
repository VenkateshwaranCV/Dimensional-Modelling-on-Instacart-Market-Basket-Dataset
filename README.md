# Dimensional Modelling on Instacart Market Basket Dataset

This is a mini project aimed at understanding **dimensional modeling** and **data warehousing** using the Instacart Market Basket Analysis dataset. The main goal is to convert raw data into a star schema format, load it into Snowflake via AWS, and perform sample analytical queries to simulate real-world BI workflows.

---

## Dataset Overview

The project uses the publicly available Instacart dataset which includes:

### Orders Table
| Column Name              | Data Type | Description                                   |
|--------------------------|-----------|-----------------------------------------------|
| order_id                 | integer   | Unique identifier for an order                |
| user_id                  | integer   | Unique identifier for a user                  |
| order_number             | integer   | Counter for orders placed by the user         |
| order_dow                | integer   | Day of the week when the order was placed     |
| order_hour_of_day        | integer   | Hour of the day when the order was placed     |
| days_since_prior_order   | integer   | Days since the previous order                 |

### Products Table
| Column Name     | Data Type | Description                    |
|-----------------|-----------|--------------------------------|
| product_id      | integer   | Unique identifier for product  |
| product_name    | varchar   | Name of the product            |
| aisle_id        | integer   | Aisle ID where product is found|
| department_id   | integer   | Department ID of the product   |

### Order Products Table
| Column Name        | Data Type | Description                                         |
|--------------------|-----------|-----------------------------------------------------|
| order_id           | integer   | Order identifier                                    |
| product_id         | integer   | Product identifier                                  |
| add_to_cart_order  | integer   | Order in which product was added to cart           |
| reordered          | boolean   | Whether the product was ordered previously or not  |

### Aisles Table
| Column Name | Data Type | Description            |
|-------------|-----------|------------------------|
| aisle_id    | integer   | Aisle identifier       |
| aisle       | varchar   | Name of the aisle      |

### Departments Table
| Column Name   | Data Type | Description               |
|---------------|-----------|---------------------------|
| department_id | integer   | Department identifier     |
| department    | varchar   | Name of the department    |

---

## Data Modeling Process

1. **Data Analysis & Schema Design**:  
   Columns were reviewed, and tables were categorized into facts and dimensions. A **Star Schema** was designed based on the dataset.

2. **AWS S3 Setup**:  
   All dataset files were uploaded to an AWS S3 bucket. IAM was configured to generate access keys for Snowflake to connect securely.

3. **Snowflake Configuration**:
   - Created an external **stage** in Snowflake pointing to the S3 bucket using the generated credentials.
   - Defined the file format for reading CSVs.
   - Used **`COPY INTO`** statements to load raw data into Snowflake tables.

4. **Fact & Dimension Tables Creation**:  
   Using SQL `SELECT` and `JOIN` statements, the data was transformed into dimensional and fact tables using **CTAS (Create Table As Select)** queries.

5. **Sample Data Analysis**:  
   Basic analytical queries were performed to validate data modeling and simulate market basket insights.

---

## Star Schema

![Star Schema](Instacart_Star\ Schema.jpg)

---

## Tech Stack

- **AWS S3**
- **Snowflake**
- **SQL**
- **Dimensional Modeling**
- **Data Warehousing Concepts**
