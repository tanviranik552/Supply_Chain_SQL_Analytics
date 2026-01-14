#SERVICE LEVEL CHECKING
#1 On-Time delivery rate
SELECT
  COUNT(*) AS total_orders,
  SUM(CASE
      WHEN order_delivered_customer_date <= order_estimated_delivery_date
      THEN 1 ELSE 0 END) AS on_time_orders,
  ROUND(
    SUM(CASE
        WHEN order_delivered_customer_date <= order_estimated_delivery_date
        THEN 1 ELSE 0 END) / COUNT(*) * 100, 2
  ) AS on_time_delivery_pct
FROM orders
WHERE order_delivered_customer_date IS NOT NULL;
#Answer: 91.89%

#2 Average Delivery Lead Time
SELECT
  ROUND(AVG(
    DATEDIFF(order_delivered_customer_date, order_purchase_timestamp)
  ), 2) AS avg_lead_time_days
FROM orders
WHERE order_delivered_customer_date IS NOT NULL;
#Answe 12.50 days

#3 Late Delivery Trend (Monthly)
SELECT
  DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS month,
  COUNT(*) AS total_orders,
  SUM(CASE
      WHEN order_delivered_customer_date > order_estimated_delivery_date
      THEN 1 ELSE 0 END) AS late_orders
FROM orders
WHERE order_delivered_customer_date IS NOT NULL
GROUP BY month
ORDER BY month;

