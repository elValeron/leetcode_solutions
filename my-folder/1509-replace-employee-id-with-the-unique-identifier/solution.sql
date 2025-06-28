-- Write your PostgreSQL query statement below
SELECT (
    SELECT unique_id
      FROM employeeUNI
     WHERE id = e.id
       ) AS unique_id, e.name
  FROM employees AS e
 
