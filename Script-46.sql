-- HW1Задание No8: Количество заказов за 2024 год
-- Определите количество заказов за 2024 года, используя функцию STRFTIME для извлечения года.

SELECT COUNT(*) AS orders_2024
FROM Orders
WHERE YEAR(OrderDate) = 2024;
