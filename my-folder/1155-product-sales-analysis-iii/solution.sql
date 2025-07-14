-- Write your PostgreSQL query statement below
WITH first AS (
     SELECT product_id, MIN(year) AS first_year
     FROM sales
     GROUP BY product_id
     )
SELECT DISTINCT s.product_id, s.year AS first_year, SUM(s.quantity) as quantity, s.price
  FROM sales AS s
  JOIN first AS f
    ON s.product_id = f.product_id AND s.year IN (SELECT f.first_year FROM first)
 GROUP BY s.product_id, s.year, s.price
