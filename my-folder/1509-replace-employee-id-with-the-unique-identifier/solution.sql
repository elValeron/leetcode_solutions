-- Write your PostgreSQL query statement below
SELECT euni.unique_id, e.name
FROM employees e
LEFT JOIN EmployeeUNI euni
ON e.id = euni.id

