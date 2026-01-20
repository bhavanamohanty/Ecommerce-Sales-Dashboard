create database ecommerce_analysis;
use ecommerce_analysis;
create table ecommerce_sales(
	orderdate DATE,
    customerid VARCHAR(50),
    product VARCHAR(100),
    category VARCHAR(50),
    region VARCHAR(50),
    quantity INT,
    sales DECIMAL(10,2),
    total_sales DECIMAL(10,2),
    order_month VARCHAR(10)
    );
select* from cleaned_ecommerce_data;
SELECT COUNT(*) AS total_rows FROM cleaned_ecommerce_data;
SELECT SUM(total_sales) AS total_sales FROM cleaned_ecommerce_data;
SELECT COUNT(DISTINCT `Customer ID`) AS total_customers
FROM ecommerce_data;
SELECT AVG(total_sales) AS avg_order_value FROM cleaned_ecommerce_data;
SELECT order_month,SUM(total_sales) AS monthly_sales
FROM cleaned_ecommerce_data
GROUP BY order_month
ORDER BY order_month;
SELECT product,SUM(total_sales) AS product_sales
FROM cleaned_ecommerce_data
GROUP BY product
ORDER BY product_sales DESC LIMIT 10;
SELECT region, SUM(total_sales) AS region_sales
FROM cleaned_ecommerce_data GROUP BY region ORDER BY region_sales DESC;
SELECT COUNT(*) FROM (SELECT `Customer ID`FROM cleaned_ecommerce_data GROUP BY `Customer ID`) t;