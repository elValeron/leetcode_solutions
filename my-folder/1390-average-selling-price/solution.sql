-- Write your PostgreSQL query statement below
SELECT p.product_id AS product_id,
       
        CASE
        WHEN SUM(s.units) IS NULL
        THEN 0
        ELSE
        ROUND(SUM(s.units*p.price)/SUM(s.units)::numeric, 2)
        END
        AS average_price
  FROM prices AS p
  LEFT JOIN unitssold AS s
    ON s.product_id = p.product_id
   AND s.purchase_date BETWEEN p.start_date AND p.end_date
 GROUP BY p.product_id

