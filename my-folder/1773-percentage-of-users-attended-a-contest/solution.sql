-- Write your PostgreSQL query statement below
SELECT r.contest_id AS contest_id,
       ROUND(COUNT(r.contest_id)*100/(SELECT COUNT(user_id) FROM users)::decimal, 2) AS percentage
  FROM register AS r
 GROUP BY r.contest_id
 ORDER BY percentage DESC, contest_id
