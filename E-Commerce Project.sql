select * from retail_data

-- Total No.Of Unique Customers?
select count(distinct customer_id) as Total_Unique_Customers
from retail_data;

-- Total available Unique products?
select count(distinct stock_code) as Toatl_Unique_Products
from retail_data;

-- Total Revenue generated from Sales?
select SUM(quantity * Unitprice) as Total_Revenue
from retail_data;

-- Which product has the Highest Total Revenue?
select description, SUM(quantity * Unitprice) as Total_Revenue
from retail_data
group by description
order by Total_Revenue desc
limit 1;

-- Average quantity of products sold per order?
SELECT AVG("quantity") AS "AverageQuantityPerOrder"
FROM retail_data;

-- Which Country has Highest No.Of Orders?
SELECT "country", COUNT(DISTINCT "invoice_no") AS "NumOrders"
FROM retail_data
GROUP BY "country"
ORDER BY "NumOrders" DESC
LIMIT 1;

-- Identify Top 10 Customers who spent most?
SELECT "customer_id", SUM("quantity" * "unitprice") AS "TotalSpent"
FROM retail_data
GROUP BY "customer_id"
ORDER BY "TotalSpent" DESC
LIMIT 10;

-- Most Popular Product categories based on the quantity sold.
select "description", sum("quantity") as "Total_Qty_Sold"
from retail_data
group by "description"
order by "Total_Qty_Sold"
limit 10;

-- Calculate the Average Unit Price for each Product?
select "description", avg("unitprice") as "Avg_Unit_Price"
from retail_data
group by "description"
order by "Avg_Unit_Price";

-- Calculate the Average Revenue per Customer?
select "customer_id", avg("quantity" * "unitprice") as "Avg_Revenue"
from retail_data
group by "customer_id"
order by "Avg_Revenue";

-- Calculate the Average number of Products Per Order?
SELECT "invoice_no", AVG("quantity") AS "Avg_No_Of_Orders"
FROM retail_data
GROUP BY "invoice_no"
order by "Avg_No_Of_Orders" desc;

-- Identify the Top 10 Countries with the Highest Revenue?
select "country", sum("quantity" * "unitprice") as "Highest_Revenue"
FROM retail_data
group by "country"
order by "Highest_Revenue"
limit 10;

-- Identify the top 5 Customers who made the Most Orders?
select "customer_id", count("invoice_no") as "Most_Orders"
from retail_data
group by "customer_id"
order by "Most_Orders"
limit 5;

-- Calculate the Total Revenue for each Product Category?
select "description", sum("quantity" * "unitprice") as "Total_Revenue"
from retail_data
group by "description"
order by "Total_Revenue";

-- Identify the top-selling products by counting the number of orders they appear in?
SELECT "description", COUNT(DISTINCT "invoice_no") AS "Num_Of_Orders"
FROM retail_data
GROUP BY "description"
ORDER BY "Num_Of_Orders" DESC
LIMIT 10;

