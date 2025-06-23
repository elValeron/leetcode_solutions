-- Write your PostgreSQL query statement below
SELECT euni.unique_id, e.name
FROM employees e
LEFT JOIN employeeUNI euni
ON e.id = euni.id
