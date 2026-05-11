# postgress_SQL
# PostgreSQL Enterprise Analytics System

## Overview
This project is a PostgreSQL-based enterprise analytics system developed using Google Colab and Python. The project demonstrates advanced SQL and PostgreSQL concepts including relational schema design, recursive Common Table Expressions (CTEs), window functions, stored procedures, joins, aggregations, indexing concepts, and analytics queries.

The system simulates a real-world enterprise environment with:
- Departments
- Employees
- Products
- Sales transactions

# Features

- Relational database schema design
- Foreign key relationships
- Advanced SQL queries
- Window functions for ranking and analytics
- Recursive CTEs for hierarchy analysis
- Aggregate and grouping operations
- Stored procedures using PL/pgSQL
- Sales and employee performance analytics
- PostgreSQL transaction handling
- Google Colab PostgreSQL setup

---

# Technologies Used

- PostgreSQL
- Python
- psycopg2
- Google Colab
- SQL
- PL/pgSQL

---

# Database Schema

## Tables

### Departments
Stores department details.

| Column | Type |
|---|---|
| dept_id | SERIAL PRIMARY KEY |
| dept_name | VARCHAR(50) |

---

### Employees
Stores employee information.

| Column | Type |
|---|---|
| emp_id | SERIAL PRIMARY KEY |
| emp_name | VARCHAR(100) |
| manager_id | INT |
| dept_id | INT (Foreign Key) |
| salary | INT |

---

### Products
Stores product catalog information.

| Column | Type |
|---|---|
| product_id | SERIAL PRIMARY KEY |
| product_name | VARCHAR(100) |
| category | VARCHAR(50) |
| price | NUMERIC |

---

### Sales
Stores sales transaction details.

| Column | Type |
|---|---|
| sale_id | SERIAL PRIMARY KEY |
| emp_id | INT (Foreign Key) |
| product_id | INT (Foreign Key) |
| quantity | INT |
| sale_date | DATE |

---

# Advanced SQL Concepts Used

## Window Functions
Used for employee sales ranking.
## stored procedure
reusable database programs which can be called again and again 

Example:
```sql
RANK() OVER (ORDER BY total_sales DESC)
