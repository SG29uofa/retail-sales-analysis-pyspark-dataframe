-- Total Sales
SELECT ROUND(SUM(sales),2) AS total_sales
FROM demo.default.retail_dashboard_ready;

-- Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM demo.default.retail_dashboard_ready;

-- Unique Customers
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM demo.default.retail_dashboard_ready;

-- Sales by Category
SELECT
  category,
  ROUND(SUM(sales), 2) AS total_sales
FROM demo.default.retail_dashboard_ready
GROUP BY category
ORDER BY total_sales DESC;

-- Sales by region
SELECT
  region,
  ROUND(SUM(sales), 2) AS total_sales
FROM demo.default.retail_dashboard_ready
GROUP BY region
ORDER BY total_sales DESC;

-- Top 10 States by Sales
SELECT
  state,
  ROUND(SUM(sales), 2) AS total_sales
FROM demo.default.retail_dashboard_ready
GROUP BY state
ORDER BY total_sales DESC
LIMIT 10;

-- Customer Segements
SELECT
  segment,
  COUNT(DISTINCT customer_id) AS customers
FROM demo.default.retail_dashboard_ready
GROUP BY segment
ORDER BY customers DESC;



