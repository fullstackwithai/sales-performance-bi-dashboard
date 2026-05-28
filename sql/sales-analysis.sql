-- Sales Performance BI Dashboard
-- Portfolio SQL queries for revenue analysis

-- Total revenue by month
SELECT
  order_date,
  SUM(revenue) AS total_revenue
FROM sales
GROUP BY order_date
ORDER BY order_date;

-- Revenue by region
SELECT
  region,
  SUM(revenue) AS total_revenue,
  COUNT(order_id) AS total_orders
FROM sales
GROUP BY region
ORDER BY total_revenue DESC;

-- Revenue by product category
SELECT
  category,
  SUM(revenue) AS total_revenue,
  SUM(units) AS units_sold
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;

-- Customer segment performance
SELECT
  customer_segment,
  SUM(revenue) AS total_revenue,
  AVG(revenue) AS average_order_value,
  COUNT(order_id) AS total_orders
FROM sales
GROUP BY customer_segment
ORDER BY total_revenue DESC;

-- Sales channel performance
SELECT
  channel,
  SUM(revenue) AS total_revenue,
  COUNT(order_id) AS total_orders
FROM sales
GROUP BY channel
ORDER BY total_revenue DESC;

-- Top products
SELECT
  product,
  category,
  SUM(revenue) AS total_revenue,
  SUM(units) AS units_sold
FROM sales
GROUP BY product, category
ORDER BY total_revenue DESC;
