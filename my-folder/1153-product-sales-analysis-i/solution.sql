-- Write your PostgreSQL query statement below
SELECT (
    SELECT product_name
      FROM product
     WHERE product_id = s.product_id
       ) AS product_name, s.year, s.price
  FROM sales AS s
