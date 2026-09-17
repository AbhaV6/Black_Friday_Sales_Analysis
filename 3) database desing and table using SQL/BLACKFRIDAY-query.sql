select count(*) from black_friday_data;

USE black_friday_db;

-- Check total rows
SELECT COUNT(*) AS total_rows
FROM black_friday_data;

-- Check first 10 records
SELECT *
FROM black_friday_data
LIMIT 10;

-- Check missing User_ID
SELECT COUNT(*) AS missing_user_id
FROM black_friday_data
WHERE User_ID IS NULL;

-- Check missing Product_ID

SELECT COUNT(*) AS missing_product_id
FROM black_friday_data
WHERE Product_ID IS NULL;

-- Check missing Purchase

SELECT COUNT(*) AS missing_purchase
FROM black_friday_data
WHERE Purchase IS NULL;

-- Check invalid Purchase values

SELECT COUNT(*) AS invalid_purchase
FROM black_friday_data
WHERE Purchase <= 0;

-- Check duplicate transactions

SELECT User_ID, Product_ID, COUNT(*) AS duplicate_count
FROM black_friday_data
GROUP BY User_ID, Product_ID
HAVING COUNT(*) > 1;

-- Check age categories

SELECT Age, COUNT(*) AS customers
FROM black_friday_data
GROUP BY Age
ORDER BY Age;

SELECT
    COUNT(*) AS total_rows,
    SUM(Product_Category_2 IS NULL) AS missing_category_2,
    SUM(Product_Category_3 IS NULL) AS missing_category_3
FROM black_friday_data;

# 5. 05_analysis_queries.sql
# total sales

SELECT
    SUM(Purchase) AS total_sales
FROM black_friday_data;

# Average purchase

SELECT
    AVG(Purchase) AS average_purchase
FROM black_friday_data;

# Sales by gender

SELECT
    Gender,
    SUM(Purchase) AS total_sales,
    AVG(Purchase) AS average_purchase
FROM black_friday_data
GROUP BY Gender
ORDER BY total_sales DESC;

# Sales by age group

SELECT
    Age,
    SUM(Purchase) AS total_sales,
    AVG(Purchase) AS average_purchase
FROM black_friday_data
GROUP BY Age
ORDER BY total_sales DESC;

# Sales by city
SELECT
    City_Category,
    SUM(Purchase) AS total_sales,
    AVG(Purchase) AS average_purchase
FROM black_friday_data
GROUP BY City_Category
ORDER BY total_sales DESC;

# Top 10 customers
SELECT
    User_ID,
    SUM(Purchase) AS total_spent
FROM black_friday_data
GROUP BY User_ID
ORDER BY total_spent DESC
LIMIT 10;

# Best-selling product categories
SELECT
    Product_Category_1,
    COUNT(*) AS transactions,
    SUM(Purchase) AS total_sales
FROM black_friday_data
GROUP BY Product_Category_1
ORDER BY total_sales DESC;

# Sales by occupation
SELECT
    Occupation,
    COUNT(*) AS transactions,
    SUM(Purchase) AS total_sales,
    AVG(Purchase) AS average_purchase
FROM black_friday_data
GROUP BY Occupation
ORDER BY total_sales DESC;










