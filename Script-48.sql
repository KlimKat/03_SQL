-- HW2Задание No2: Анализ частоты заказа продуктов по категориям
-- Описание: Напишите запрос SQL для подсчета количества заказов продуктов по каждой категории. 
-- Подсчитайте количество уникальных заказов (OrderID) для каждой категории продуктов. Выведите результаты, включая:
-- ● CategoryID
-- ● Количество уникальных заказов (order_count)
-- Отсортируйте результаты по убыванию количества уникальных заказов (order_count). 
-- Используйте таблицы Products, OrderDetails и Categories.

SELECT
    p.CategoryID,
    COUNT(DISTINCT od.OrderID) AS order_count
FROM
    OrderDetails od
JOIN
    Products p ON od.ProductID = p.ProductID
GROUP BY
    p.CategoryID
ORDER BY
    order_count DESC;
