-- HW1Задание No4: Средний возраст сотрудников на 2024-01-01 
-- Вычислите средний возраст сотрудников на дату 2024-01-01.

SELECT AVG(AGE) AS AverageAge
FROM (
    SELECT TIMESTAMPDIFF(YEAR, BirthDate, '2024-01-01') AS AGE
    FROM Employees
) AS AgeTable;