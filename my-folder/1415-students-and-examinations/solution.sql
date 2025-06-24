-- Write your PostgreSQL query statement below
SELECT studs.student_id, studs.student_name, subj.subject_name, count(exam.student_id) as attended_exams --Сформировать запрос со столбцами #
FROM students studs -- Из таблицы students
CROSS JOIN subjects subj -- Создать все возможные варианты строк между таблицами students и subjects
LEFT JOIN examinations exam --Подключаем к запросу таблицу Examinations >>
ON exam.student_id = studs.student_id and subj.subject_name = exam.subject_name -- По фильтрам если student_id совпадает в таблицах students и examinations и subject_name совпадает в таблицах subjects и examinations
GROUP BY studs.student_id, subj.subject_name, studs.student_name -- Группируем результат по student_id, subject_name, student_name
