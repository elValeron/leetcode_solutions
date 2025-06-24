-- Write your PostgreSQL query statement below
SELECT e.name --Получить значение name из таблицы employee
FROM employee e 
LEFT JOIN employee e2 --подключить через left join таблицу employee для подсчета кол-ва сотрудников у менеджера
ON e.id = e2.managerId --по условию id сотрудника равно id менеджера
GROUP BY e.name, e.id -- сгруппировать по имени как того требует запрос
HAVING count(e2.managerId) >=5 --отфильтровать того сотрудника, у которого кол-во вхождений его id в колонку managerId(id менеджера) у остальных сотрудников больше или равно 5

