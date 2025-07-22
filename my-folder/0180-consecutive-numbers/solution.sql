-- Write your PostgreSQL query statement below
SELECT DISTINCT l.num as ConsecutiveNums
  FROM logs AS l
 WHERE l.num = (SELECT num FROM logs WHERE l.id = id + 1) AND l.num = (SELECT num FROM logs WHERE l.id = id + 2)
