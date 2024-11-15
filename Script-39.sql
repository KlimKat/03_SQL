-- HW1Задание No1: Уникальные страны клиентов
-- Определите, сколько уникальных стран представлено среди клиентов.

SELECT COUNT(DISTINCT Country) AS unique_countries
FROM Customers;