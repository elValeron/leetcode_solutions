-- Write your PostgreSQL query statement below
SELECT product_id
FROM products
WHERE recyclable != 'N' AND low_fats != 'N'
