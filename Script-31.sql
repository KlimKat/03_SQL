/*Для каждого заказа сделайте новую колонку в которой 
 определите общий объем продаж за каждый месяц, учитывая все годы.*/

select DISTINCT 
	YEAR (o.OrderDate),
	MONTH (o.OrderDate),
	sum(Quantity * price) over (partition by month(o.OrderDate), YEAR (o.OrderDate) order by year(o.OrderDate)) as TotalRevenue
from Orders o 
join OrderDetails od on o.OrderID = od.OrderID 
join Products p on p.ProductID = od.ProductID