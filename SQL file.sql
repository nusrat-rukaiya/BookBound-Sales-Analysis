-- ============================================
-- BOOKBOUND SALES ANALYSIS
-- SQL Portfolio Project
-- Author: Nusrat Ruakiya
-- ============================================

-- Total Revenue ,Number of Orders and Unique Customers

SELECT
    SUM(total_amount) AS revenue,
    COUNT(order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers
FROM orders;

| Revenue | Total Orders | Total Customers |
| ------- | ------------ | --------------- |
| 75628.66| 500          | 307             |
