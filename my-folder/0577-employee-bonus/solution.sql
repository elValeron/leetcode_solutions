-- Write your PostgreSQL query statement below
SELECT e.name, b.bonus --Взять столбец имя из таблицы employee и bonus из таблицы бонус
FROM employee e -- запрос к таблице employee
LEFT JOIN bonus b -- присоединение таблицы bonus
ON e.empId = b.empId -- на основании фильтра если empId есть в двух таблицах
WHERE b.bonus < 1000 -- после присоединения, фильтруем бонус при условии, что бонус меньше 1000
OR b.bonus is NULL -- или бонуса нет, и выводим результат. 
