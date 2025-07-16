-- Write your PostgreSQL query statement below
SELECT (CASE WHEN COUNT(*) = 1 THEN num ELSE NULL END) as num
  FROM mynumbers
 GROUP BY num
 ORDER BY 1 DESC nulls last
 LIMIT 1
