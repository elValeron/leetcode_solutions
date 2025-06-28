-- Write your PostgreSQL query statement below
WITH vars as (
    SELECT 25000000 as pop, 3000000 as ar
)
SELECT w.name, w.population, w.area
  FROM world as w, vars as v
 WHERE population >= v.pop
    OR area >= v.ar
 ORDER BY area DESC;


