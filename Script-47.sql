-- HW2Задание No1: Анализ влияния категорий продуктов на общий доход
-- Описание: Вам необходимо проверить, как различные категории продуктов влияют на общий доход (общую сумму заказов) в таблице OrderDetails. Подсчитайте общее
-- количество заказов (сумму количества) и общий доход (сумму количества * цену) для каждой категории продуктов. Выведите результаты, включая:
-- ● CategoryID
-- ● Общее количество заказов (total_quantity)
-- ● Общий доход (total_revenue)
-- Отсортируйте результаты по убыванию общего дохода (total_revenue). Используйте таблицы Products, OrderDetails и Categories.

SELECT
    p.CategoryID,
    SUM(od.Quantity) AS total_quantity,
    SUM(od.Quantity * p.Price) AS total_revenue
FROM
    OrderDetails od
JOIN
    Products p ON od.ProductID = p.ProductID
GROUP BY
    p.CategoryID
ORDER BY
    total_revenue DESC;
    