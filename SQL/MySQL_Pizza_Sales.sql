CREATE DATABASE pizza_db;

CREATE TABLE pizza(
	order_details_id INT,	
    order_id INT,
	pizza_id TEXT,
    quantity INT,	
    order_date DATE,
    order_time TIME,
    unit_price DECIMAL(10,2),
    total_price DECIMAL(10,2),
    pizza_size TEXT,
    pizza_category TEXT,	
    pizza_ingredients TEXT,	
    pizza_name TEXT
);

SET GLOBAL LOCAL_INFILE=ON;

LOAD DATA LOCAL INFILE 'C:/Internship_Unified_Mentor/My_Projects_DA/Project_5_pizza sales  Dashboard ( Business Analyst)/Pizza_Sales.csv'
INTO TABLE pizza
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- queries :

-- 1. Total Revenue
SELECT SUM(total_price) AS Total_Revenue FROM pizza;

-- 2. Average Order values
SELECT SUM(total_price) / COUNT(DISTINCT(order_id)) AS Avg_Order_Value
FROM pizza;

-- 3. Total Pizzas Sold
SELECT SUM(quantity) AS Total_Pizza_Sold FROM pizza;

-- 4. Total Orders
SELECT COUNT(DISTINCT(order_id)) AS Total_Orders FROM pizza;

-- 5. Average Pizza’s Per Order
SELECT SUM(quantity) / COUNT(DISTINCT(order_id)) AS Avg_pizzas_Per_Order
FROM pizza;

-- 6. Daily Trend For Total Orders
SELECT DAYNAME(order_date) AS Order_Days, COUNT(DISTINCT(order_id)) AS Total_Orders
FROM pizza
GROUP BY DAYNAME(order_date);

-- 7. Monthly Trend For Total Orders
SELECT MONTHNAME(order_date) AS Order_Months, COUNT(DISTINCT(order_id)) AS Total_Orders
FROM pizza
GROUP BY MONTHNAME(order_date);

-- 8.Percentage of Sales By Pizza Category
SELECT pizza_category,
ROUND(SUM(total_price) / (SELECT SUM(total_price) FROM pizza) *100,2) AS Percentage_Total_Sales
FROM pizza
GROUP BY pizza_category;

-- 9.Percentage of Sales By Pizza Size
SELECT pizza_size,
ROUND(SUM(total_price) / (SELECT SUM(total_price) FROM pizza) *100,2) AS Percentage_Total_Sales
FROM pizza
GROUP BY pizza_size;

-- 10.Top 5 Best Sellers By Revenue, Total Quantities and Total Orders
-- By Total Revenue
SELECT pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza
GROUP BY pizza_name
ORDER BY Total_Revenue DESC
LIMIT 5;

-- By Total Quantities
SELECT pizza_name, SUM(quantity) AS Total_Quantity
FROM pizza
GROUP BY pizza_name
ORDER BY Total_Quantity DESC
LIMIT 5;

-- By Total Orders
SELECT pizza_name, COUNT(DISTINCT(order_id)) AS Total_Orders
FROM pizza
GROUP BY pizza_name
ORDER BY Total_Orders DESC
LIMIT 5;

-- 11.Bottom 5 Best Sellers By Revenue, Total Quantities and Total Orders
-- By Total Revenue
SELECT pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza
GROUP BY pizza_name
ORDER BY Total_Revenue 
LIMIT 5;

-- By Total Quantities
SELECT pizza_name, SUM(quantity) AS Total_Quantity
FROM pizza
GROUP BY pizza_name
ORDER BY Total_Quantity 
LIMIT 5;

-- By Total Orders
SELECT pizza_name, COUNT(DISTINCT(order_id)) AS Total_Orders
FROM pizza
GROUP BY pizza_name
ORDER BY Total_Orders 
LIMIT 5;
