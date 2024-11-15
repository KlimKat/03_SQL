--Приджойним к данным о заказах данные о покупателях. 
--Данные, которые нас интересуют — имя заказчика и страна, из которой совершается покупка.

select 
	o.*,
	CustomerName, Country
from Customers c 
join Orders o on c.CustomerID = o.CustomerID 