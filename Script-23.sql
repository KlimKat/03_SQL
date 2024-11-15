--Выведем имена покупателей, которые совершили как минимум одну покупку 12 декабря

select DISTINCT c.CustomerName 
from Customers c 
join Orders o on c.CustomerID = o.CustomerID 
where OrderDate = '2023-12-12'