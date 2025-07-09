-- Write your PostgreSQL query statement below
SELECT patient_id, patient_name, conditions
  FROM patients
 WHERE conditions ~ '(^|\s)DIAB1.*'
