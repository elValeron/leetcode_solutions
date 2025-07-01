-- Write your PostgreSQL query statement below
SELECT s.user_id,
       ROUND(
        COUNT(c.action) FILTER (WHERE c.action = 'confirmed')::numeric 
        / COUNT(*)::numeric

       , 2) as confirmation_rate
  FROM signups s
  LEFT JOIN confirmations c
    ON c.user_id = s.user_id
 GROUP BY s.user_id
