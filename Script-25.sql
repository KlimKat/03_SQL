--Определите первую и последнюю даты заказа для каждого клиента

--через группировки
select
	min(OrderDate),
	max(OrderDate),
	count(*),
	CustomerID 
from Orders 
group by CustomerID 

--через оконные функции
select
	OrderDate,
	min(OrderDate) over (partition by CustomerID) as min_date,
	max(OrderDate) over (partition by CustomerID) as max_date,
	count(*) over (partition by CustomerID) as cnt,
	CustomerID 
from Orders 