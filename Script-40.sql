-- HW1Задание No2: Клиенты из Бразилии
-- Определите количество клиентов, которые проживают в Бразилии.

SELECT COUNT(*) AS brazil_customers
FROM Customers
WHERE Country = 'Brazil';