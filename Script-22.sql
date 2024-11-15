--Наша следующая задача — проанализировать данные заказа, рассчитать ключевые показатели, 
--связанные с выручкой, и соотнести результаты с ценовой информацией из таблицы Products.
--Давайте посмотрим на общую выручку, а также минимальный, максимальный чек в разбивке по странам.

select
	c.Country,
	sum(p.Price * od.Quantity) as total_sum,
	max(p.Price * od.Quantity),
	min(p.Price * od.Quantity)
from Customers c 
join Orders o on c.CustomerID = o.CustomerID 
join OrderDetails od on od.OrderID = o.OrderID 
join Products p on p.ProductID = od.ProductID
group by c.Country 
order by total_sum desc