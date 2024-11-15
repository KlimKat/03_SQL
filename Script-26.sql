--Получите общее количество заказов для каждого клиента, а также имя и город клиента.

--через группировку
select 
	c.CustomerID,
	City,
	OrderDate,
	count(*)
from Orders o 
join customers c on o.CustomerID = c.CustomerID 
group by c.CustomerID 

--через оконные функции
select DISTINCT 
	c.CustomerID,
	City,
	OrderDate,
	count(*) over (partition by c.CustomerID) as cnt
from Orders o 
join customers c on o.CustomerID = c.CustomerID 