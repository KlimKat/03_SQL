--Давайте проверим, Customer пришедшие из какой страны совершили наибольшее число Orders. 
--Используем сортировку по убыванию по полю числа заказов.
--И выведем сверху в результирующей таблице название лидирующей страны.

SELECT 
	count(*),
	Country 
from Customers c 
join Orders o on c.CustomerID = o.CustomerID 
group by Country 
ORDER by count(*) DESC 
limit 1