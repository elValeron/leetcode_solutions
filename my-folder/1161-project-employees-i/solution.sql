-- Write your PostgreSQL query statement below
SELECT p.project_id AS project_id,
       ROUND(SUM(e.experience_years)/COUNT(p.project_id)::numeric, 2) as average_years
  FROM project AS p
  LEFT JOIN employee AS e
    ON e.employee_id = p.employee_id
 GROUP BY p.project_id
