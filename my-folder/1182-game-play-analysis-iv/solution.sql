-- Write your PostgreSQL query statement below
WITH second AS (
    SELECT player_id,
           MIN(event_date)+1 as first_game
      FROM activity
     GROUP BY player_id
    )

SELECT ROUND(COUNT(*)::numeric/(SELECT COUNT(DISTINCT player_id) FROM activity), 2) AS fraction
  FROM activity
 WHERE (player_id, event_date) IN (SELECT player_id, first_game FROM second)

