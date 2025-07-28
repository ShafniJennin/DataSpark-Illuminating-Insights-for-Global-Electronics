-- 1. Customer Gender Distribution
SELECT gender, COUNT(*) AS total_customers FROM customers GROUP BY gender;

-- 2. Average Order Value
SELECT ROUND(AVG(revenue), 2) AS avg_order_value FROM sales;

-- 3. Top 5 Selling Products
SELECT p.name, SUM(s.quantity) AS total_sold
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.name
ORDER BY total_sold DESC
LIMIT 5;

-- 4. Revenue by Store
SELECT store_id, SUM(revenue) AS total_revenue
FROM sales
GROUP BY store_id
ORDER BY total_revenue DESC;

-- 5. Customer Age Group Sales
SELECT c.age, COUNT(s.order_id) AS orders, ROUND(SUM(s.revenue), 2) AS total_spent
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.age
ORDER BY total_spent DESC;

-- 6. Sales by Product Category
SELECT p.category, SUM(s.revenue) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;

-- 7. Monthly Sales Trend
SELECT STRFTIME('%Y-%m', order_date) AS month, SUM(revenue) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;

-- 8. Product Profitability
SELECT p.name, SUM((p.unit_price - p.unit_cost) * s.quantity) AS profit
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.name
ORDER BY profit DESC
LIMIT 5;

-- 9. Currency Impact on Sales (USD Equivalent)
SELECT e.currency, SUM(s.revenue / e.rate_to_usd) AS revenue_usd
FROM sales s
JOIN stores st ON s.store_id = st.store_id
JOIN exchange_rates e ON st.country = e.currency
GROUP BY e.currency;

-- 10. Regional Store Performance
SELECT st.country, COUNT(DISTINCT st.store_id) AS store_count, SUM(s.revenue) AS total_revenue
FROM sales s
JOIN stores st ON s.store_id = st.store_id
GROUP BY st.country
ORDER BY total_revenue DESC;
