-- Write your PostgreSQL query statement below
SELECT a1.machine_id, ROUND(AVG(a2.timestamp - a1.timestamp)::decimal, 3) as processing_time
  FROM activity AS a1
 
  LEFT JOIN activity as a2
    ON a1.process_id = a2.process_id
   AND a1.machine_id = a2.machine_id
   AND a2.activity_type = 'end'
   AND a1.activity_type = 'start'
    

 GROUP BY a1.machine_id
