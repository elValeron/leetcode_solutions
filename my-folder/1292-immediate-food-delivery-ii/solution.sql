-- Write your PostgreSQL query statement below
WITH first AS (
               SELECT customer_id,
                      MIN(order_date) as min_order
                 FROM delivery
                GROUP BY customer_id
              )
SELECT ROUND(
    100.0 * SUM(CASE WHEN d.order_date = d.customer_pref_delivery_date THEN 1 ElSE 0 END)/COUNT(*), 2) AS immediate_percentage
  FROM delivery d
  JOIN first f
    ON d.customer_id = f.customer_id AND d.order_date = f.min_order

