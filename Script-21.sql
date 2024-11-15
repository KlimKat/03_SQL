--А теперь напишем запрос, который обеспечит целостное представление деталей заказа, 
--включая информацию как о клиентах,так и о сотрудниках.
--Будем использовать JOIN для соединения информации из таблиц Orders, Customers и Employees.

select *
from Customers c 
join Orders o on c.CustomerID = o.CustomerID 
join Employees e on e.EmployeeID = o.EmployeeID 