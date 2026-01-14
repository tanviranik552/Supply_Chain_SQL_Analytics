#indexing
CREATE INDEX idx_orders_dates
ON orders(order_delivered_customer_date, order_estimated_delivery_date);
