#SUPPLIER PERFORMANCE ANALYSIS
# 1 Orders & Late Rate per Seller (ADVANCED)
WITH seller_performance AS (
  SELECT
    oi.seller_id,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(CASE
        WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date
        THEN 1 ELSE 0 END) AS late_orders
  FROM orders o
  JOIN order_items oi ON o.order_id = oi.order_id
  WHERE o.order_delivered_customer_date IS NOT NULL
  GROUP BY oi.seller_id
)
SELECT
seller_id,
  total_orders,
  late_orders,
  ROUND(late_orders / total_orders * 100, 2) AS late_pct,
  RANK() OVER (ORDER BY late_orders DESC) AS delay_rank
FROM seller_performance;

# 2 Pareto (80/20) Delay Analysis
WITH seller_delay AS (
  SELECT
    oi.seller_id,
    COUNT(*) AS delay_count
  FROM orders o
  JOIN order_items oi ON o.order_id = oi.order_id
  WHERE o.order_delivered_customer_date > o.order_estimated_delivery_date
  GROUP BY oi.seller_id
),
total_delay AS (
  SELECT SUM(delay_count) AS total_delays FROM seller_delay
)
SELECT
sd.seller_id,
  sd.delay_count,
  ROUND(sd.delay_count / td.total_delays * 100, 2) AS delay_pct,
  ROUND(
    SUM(sd.delay_count) OVER (ORDER BY sd.delay_count DESC)
    / td.total_delays * 100, 2
  ) AS cumulative_delay_pct
FROM seller_delay sd
JOIN total_delay td
ORDER BY cumulative_delay_pct;

# 3 PRODUCT & COST ANALYSIS
SELECT
  p.product_category,
  ROUND(AVG(oi.freight_value / oi.price) * 100, 2) AS avg_freight_pct
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_category
ORDER BY avg_freight_pct DESC;

# 4 Top Revenue Categories
SELECT
  p.product_category,
  ROUND(SUM(oi.price), 2) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_category
ORDER BY total_revenue DESC;
