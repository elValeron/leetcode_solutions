-- Write your PostgreSQL query statement below
SELECT teacher_id, COUNT(DISTINCT subject_id) as cnt
  FROM teacher
 GROUP BY teacher_id
