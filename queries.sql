-- Project 1: Retail Sales Performance Analysis
-- Tool: MySQL Workbench

USE retail_sales;

-- Query 1: Total Revenue by Region
SELECT Region, 
       ROUND(SUM(Sales), 2) AS Total_Revenue
FROM superstore
GROUP BY Region
ORDER BY Total_Revenue DESC;

-- Query 2: Top 10 Best Selling Products
SELECT Product_Name, 
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Query 3: Revenue and Profit by Category
SELECT Category,
       ROUND(SUM(Sales), 2) AS Total_Sales,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Query 4: Revenue and Profit by Segment
SELECT Segment,
       ROUND(SUM(Sales), 2) AS Total_Sales,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;