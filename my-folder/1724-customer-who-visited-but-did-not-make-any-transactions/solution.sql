-- Write your PostgreSQL query statement below
SELECT v.customer_id, COUNT(customer_id) AS count_no_trans
  FROM visits AS v
 WHERE visit_id NOT IN (SELECT visit_id FROM transactions)
 GROUP BY v.customer_id
