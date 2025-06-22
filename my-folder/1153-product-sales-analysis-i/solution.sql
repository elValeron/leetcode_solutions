-- Write your PostgreSQL query statement below
SELECT p.product_name, year, price
FROM sales s
LEFT JOIN Product p
ON s.product_id = p.product_id;
