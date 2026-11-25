-- Retail Sales Analysis (SQL + Power BI)
-- Database: retail_sales_db
-- Dataset: Brazilian E-Commerce Public Dataset by Olist
-- Tables used: customers, orders, order_items, products, sellers
--
-- Query 1: Total Sales Revenue
-- Calculates total product revenue across all order statuses.
SELECT
    SUM(price) AS total_sales
FROM order_items;


-- Query 2: Sales by Product Category
-- Joins order_items with products and calculates category-wise sales.
SELECT
    p.product_category_name,
    SUM(oi.price) AS total_sales
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY
    p.product_category_name
ORDER BY
    total_sales DESC;


-- Query 3: Order Status Classification using CASE
-- Groups orders into readable business categories.
SELECT
    order_status,
    CASE
        WHEN order_status = 'delivered'
            THEN 'Completed'
        WHEN order_status = 'shipped'
            THEN 'In Transit'
        WHEN order_status = 'canceled'
            THEN 'Cancelled'
        ELSE 'Other Status'
    END AS order_category,
    COUNT(*) AS total_orders
FROM orders
GROUP BY
    order_status,
    CASE
        WHEN order_status = 'delivered'
            THEN 'Completed'
        WHEN order_status = 'shipped'
            THEN 'In Transit'
        WHEN order_status = 'canceled'
            THEN 'Cancelled'
        ELSE 'Other Status'
    END
ORDER BY total_orders DESC;


-- Query 4: Monthly Sales Analysis
-- Calculates monthly product sales for delivered orders only.
SELECT
    DATE_TRUNC('month', o.order_purchase_timestamp) AS sales_month,
    SUM(oi.price) AS monthly_sales
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY
    DATE_TRUNC('month', o.order_purchase_timestamp)
ORDER BY sales_month;


-- Query 5: Top 5 Product Categories using a CTE
-- Uses a Common Table Expression to calculate and rank category sales.
WITH category_sales AS (
    SELECT
        p.product_category_name,
        SUM(oi.price) AS total_sales
    FROM order_items oi
    JOIN products p
        ON oi.product_id = p.product_id
    GROUP BY p.product_category_name
)
SELECT
    product_category_name,
    total_sales
FROM category_sales
ORDER BY total_sales DESC
LIMIT 5;


-- Query 6: Top 10 Products using a Window Function
-- Uses RANK() to rank products by their total sales.
WITH product_sales AS (
    SELECT
        p.product_id,
        p.product_category_name,
        SUM(oi.price) AS total_sales
    FROM products p
    JOIN order_items oi
        ON p.product_id = oi.product_id
    GROUP BY
        p.product_id,
        p.product_category_name
)
SELECT
    product_id,
    product_category_name,
    total_sales,
    RANK() OVER (
        ORDER BY total_sales DESC
    ) AS sales_rank
FROM product_sales
ORDER BY sales_rank
LIMIT 10;


-- Query 7: Sales by Customer State (Region)
-- Joins customers, orders, and order_items to calculate delivered sales by state.
SELECT
    c.customer_state,
    SUM(oi.price) AS total_sales,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_state
ORDER BY total_sales DESC;


-- Query 8: Average Order Value (AOV)
-- Calculates average product revenue per delivered order.
SELECT
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.price) AS total_sales,
    ROUND(
        SUM(oi.price) / COUNT(DISTINCT o.order_id),
        2
    ) AS average_order_value
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered';
