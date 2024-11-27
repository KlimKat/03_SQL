-- HW4Задание 2: Количество заказов по регионам Задание:
-- Определите количество заказов, размещенных клиентами из различных стран, за каждый месяц.

SELECT
    c.Country AS Country,
    MONTH(o.OrderDate) AS Month,
    YEAR(o.OrderDate) AS Year,
    COUNT(o.OrderID) AS OrderCount
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.Country, MONTH(o.OrderDate), YEAR(o.OrderDate);
