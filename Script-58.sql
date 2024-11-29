-- HW5Задание 3: Удаление данных и таблиц
-- Задание: Удалите все записи из таблицы EmployeeDetails, где Salary меньше
-- 50000. Затем удалите таблицу EmployeeDetails из базы данных.

-- Проверка, есть ли в таблице сотрудники с зп меньше 50000
SELECT * FROM EmployeeDetails WHERE Salary < 50000;

-- Удаление сотрудников с зарплатой меньше 50000
DELETE FROM EmployeeDetails 
WHERE Salary < 50000;

-- Проверим, удалилось ли
SELECT * FROM EmployeeDetails

-- Удаление таблицы EmployeeDetails после очистки данных
DROP TABLE IF EXISTS EmployeeDetails;