--Ранжируйте сотрудников на основе общего количества обработанных ими заказов.

SELECT 
	EmployeeID,
	rank() over (order by count(OrderID))
from Orders
group by EmployeeID 