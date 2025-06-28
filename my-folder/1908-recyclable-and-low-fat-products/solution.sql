-- Write your PostgreSQL query statement below
SELECT product_id
  FROM products
 WHERE low_fats <> 'N'
   AND recyclable <> 'N'
