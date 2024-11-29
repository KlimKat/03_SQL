-- HW5Задание 2: Создание представления
-- Задание: Создайте представление HighValueOrders для отображения всех заказов,
-- сумма которых превышает 10000. В представлении должны быть следующие столбцы:
-- ● OrderID(идентификаторзаказа),
-- ● OrderDate(датазаказа),
-- ● TotalAmount(общаясуммазаказа,вычисленнаякаксуммавсехQuantity*
-- Price).
-- Используйте таблицы Orders, OrderDetails и Products.

-- Создание представления HighValueOrders для заказов с суммой больше 10000
CREATE VIEW HighValueOrders AS
SELECT 
    o.OrderID, 
    o.OrderDate, 
    SUM(od.Quantity * p.Price) AS TotalAmount
FROM Orders o
LEFT JOIN OrderDetails od ON o.OrderID = od.OrderID
LEFT JOIN Products p ON od.ProductID = p.ProductID
GROUP BY o.OrderID, o.OrderDate
HAVING SUM(od.Quantity * p.Price) > 10000;
