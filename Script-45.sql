-- HW1Задание No7: Количество заказов за январь 2024 года (используя LIKE)
-- Найдите количество заказов за январь 2024 года, используя оператор LIKE для фильтрации даты.

SELECT COUNT(*) AS january_orders
FROM Orders
WHERE OrderDate LIKE '2024-01%';