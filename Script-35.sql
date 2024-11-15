/*Создайте представление с именем «DeliveredOrders». 
 которое отображает OrderID и OrderDate для заказов со статусом 'Delivered'*/

#Нам не хватает поля с датой, так что нам его нужно взять из таблицы Orders
#Чтобы таблицы соединились, нужна согласованность данных - нужно проапдейтить в таблице OrderStatus поля OrderID,
#чтобы они совпадали с полями OrderID из таблицы Orders
#Так же хочется, чтобы в таблице было больше данных, а не одна строчка - добавим данных

UPDATE OrderStatus 
SET OrderID = 10248
where OrderStatusID = 1

INSERT INTO OrderStatus
(OrderStatusID, OrderID, Status)
VALUES(2, 10249, 'Shipped');

INSERT INTO OrderStatus
(OrderStatusID, OrderID, Status)
VALUES(3, 10250, 'Delivered');

INSERT INTO OrderStatus
(OrderStatusID, OrderID, Status)
VALUES(4, 10251, 'Delivered');

INSERT INTO OrderStatus
(OrderStatusID, OrderID, Status)
VALUES(5, 10252, 'Shipped');

INSERT INTO OrderStatus
(OrderStatusID, OrderID, Status)
VALUES(6, 10253, 'Delivered');

#############

create view DeliveredOrders as 
select
	os.OrderID,
	OrderDate,
	Status 
from Orders o 
join OrderStatus os on o.OrderID = os.OrderID 
where Status = 'Delivered';

############
select * 
from deliveredorders d 