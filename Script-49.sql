-- HW2Задание No3: Вывод наиболее популярных продуктов по количеству заказов
-- Описание: Выведите список продуктов (название ProductName), отсортированных 
-- по количеству заказов в порядке убывания. Подсчитайте общее количество заказов 
-- (Quantity) для каждого продукта. Выведите результаты, включая:
-- ● ProductName
-- ● Общее количество заказов (total_quantity)
-- Отсортируйте результаты по убыванию общего количества заказов (total_quantity). 
-- Используйте таблицы Products и OrderDetails.

SELECT
    p.ProductName,
    SUM(od.Quantity) AS total_quantity
FROM
    OrderDetails od
JOIN
    Products p ON od.ProductID = p.ProductID
GROUP BY
    p.ProductName
ORDER BY
    total_quantity DESC;
