-- HW4Задание 1: Анализ прибыли по категориям продуктов
-- Задание: Определите общую прибыль для каждой категории продуктов, используя таблицы 
-- OrderDetails, Orders и Products. Для расчета прибыли
-- умножьте цену продукта на количество, а затем суммируйте результаты по категориям.

SELECT
    c.CategoryName,
    SUM(p.Price * od.Quantity) AS TotalProfit
FROM OrderDetails od
JOIN Orders o ON od.OrderID = o.OrderID
JOIN Products p ON od.ProductID = p.ProductID
JOIN Categories c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName;
