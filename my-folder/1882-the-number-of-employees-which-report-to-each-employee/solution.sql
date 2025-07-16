-- Write your PostgreSQL query statement below


SELECT e1.employee_id, e1.name, COUNT(*) as reports_count, ROUND(AVG(CASE WHEN e2.reports_to = e1.employee_id THEN e2.age ELSE NULL END)) as average_age
  FROM employees as e1
  JOIN employees as e2
    ON e1.employee_id = e2.reports_to
 GROUP BY e1.employee_id, e1.name
 ORDER BY e1.employee_id
