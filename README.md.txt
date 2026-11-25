# Retail Sales Analysis using PostgreSQL and Power BI

## Project Overview

This project focuses on analyzing Brazilian E-Commerce sales data to understand business performance, customer purchasing patterns, monthly sales trends, and product performance.

In this project, I used PostgreSQL for database management and SQL queries, and Microsoft Power BI to create an interactive dashboard for visualizing sales data and generating business insights.

## Project Objectives

- Analyze overall e-commerce sales performance.
- Identify monthly sales trends.
- Analyze state-wise sales performance.
- Identify top-performing product categories.
- Find the top 5 products based on sales value.
- Create an interactive Power BI dashboard.
- Present meaningful business insights using data visualization.

## Tools and Technologies Used

| Tool | Purpose |
|---|---|
| PostgreSQL | Database management |
| SQL | Data extraction and analysis |
| Microsoft Power BI | Dashboard development |
| DAX | KPI calculations and measures |
| Excel / CSV | Dataset files and data handling |

## Dataset Information

**Dataset Name:** Brazilian E-Commerce Public Dataset by Olist

**Dataset Source:** Kaggle

https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

The dataset contains information about Brazilian e-commerce orders, customers, products, sellers, and order items.

The dataset was downloaded and used locally for this project. The original dataset files are not included in this repository.

### Main Database Tables

- customers
- orders
- order_items
- products
- sellers

## Project Workflow

### Step 1: Database Creation and Data Import

- Created a PostgreSQL database for retail sales analysis.
- Imported the Olist dataset into PostgreSQL.
- Organized the data into separate relational tables.
- Checked the imported tables.

### Step 2: SQL Data Analysis

Used SQL queries to analyze the e-commerce data.

The analysis included:

- Total sales calculation.
- Total order count.
- Average order value.
- Monthly sales analysis.
- State-wise sales analysis.
- Product category analysis.
- Top-selling product analysis.

### Step 3: Power BI Connection

- Connected Microsoft Power BI to PostgreSQL.
- Imported the required database tables.
- Created relationships between the tables.
- Prepared the data for visualization.

### Step 4: DAX Measures

Created measures to calculate important business KPIs:

- Total Sales
- Total Orders
- Average Order Value

### Step 5: Dashboard Development

Developed an interactive Power BI dashboard using KPI cards, charts, and slicers.

## Dashboard Preview

![Retail Sales Analysis Dashboard](dashboard_screenshot.png)

## Dashboard Features

### 1. Total Sales
Displays the overall sales value.

### 2. Total Orders
Shows the total number of orders.

### 3. Average Order Value
Displays the average sales value per order.

### 4. Monthly Sales Trend
Shows how sales change over different months.

### 5. Top 10 States by Sales
Identifies the states contributing the highest sales.

### 6. Top 5 Product Categories by Sales
Highlights the top-performing product categories.

### 7. Top 5 Products by Sales
Displays the five products with the highest sales value based on the sum of item prices.

### 8. Interactive State Slicer
Allows users to select a state and dynamically filter the dashboard visuals.

## Key Dashboard Results

The following KPI values were displayed in my Power BI dashboard:

| KPI | Value |
|---|---:|
| Total Sales | 13.59M |
| Total Orders | 96K |
| Average Order Value | 137.04 |

*Values are based on the dashboard screenshot and may change with filters.*

## Business Insights

The dashboard helps understand:

- Overall e-commerce sales performance.
- Monthly sales patterns and changes.
- States contributing the highest sales.
- Product categories generating higher sales.
- Products with the highest sales value.
- How business performance changes when different states are selected.

## Project Files

| File | Description |
|---|---|
| Retail_Sales_Analysis.pbix | Power BI dashboard |
| sales_queries.sql | SQL analysis queries |
| README.md | Project information |
| Retail_Sales_Analysis_Documentation.pdf | Detailed project documentation |
| dashboard_screenshot.png | Dashboard preview |

## Skills Gained

Through this project, I gained practical experience in:

- PostgreSQL database management.
- SQL querying and data aggregation.
- Connecting PostgreSQL with Power BI.
- Data modeling and table relationships.
- DAX measures.
- Data visualization.
- Interactive dashboard development.
- Business data analysis.

## Conclusion

This project helped me understand how to work with real-world e-commerce data using PostgreSQL, SQL, and Power BI.

I learned how to manage database tables, write SQL queries, calculate business KPIs, create interactive visualizations, and analyze sales performance.

The final dashboard presents sales information in a simple and interactive way, helping users understand business performance and make data-driven decisions.

## Author

**Divyabala**

Aspiring Data Analyst | Python | SQL | PostgreSQL | Power BI
