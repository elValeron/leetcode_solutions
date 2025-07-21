-- Write your PostgreSQL query statement below
DELETE FROM Person
 WHERE id not in (SELECT MIN(id) FROM person GROUP BY email)
