--Рассчитайте среднее количество товаров, 
--заказанных каждым покупателем (используя оконную функцию).

--через группировку
SELECT 
	AVG(Quantity),
	CustomerID
FROM orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY o. CustomerID

--через оконную функцию
SELECT DISTINCT 
	AVG(Quantity) over (partition by o.CustomerID) as AvgQuantityOrdered,
	CustomerID
FROM orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY o. CustomerID