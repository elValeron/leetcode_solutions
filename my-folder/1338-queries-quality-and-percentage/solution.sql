-- Write your PostgreSQL query statement below
SELECT query_name,
       ROUND(SUM(rating/position::decimal)/COUNT(query_name)::decimal, 2) AS quality,
       ROUND(COUNT(CASE WHEN rating < 3 THEN 1 END)/COUNT(query_name)::decimal*100, 2) AS poor_query_percentage 
  FROM queries
 GROUP BY query_name
