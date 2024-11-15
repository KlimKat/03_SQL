/*Обновите параметр OrderStatus' идентификатора заказа 101 на 'Delivered'.*/

UPDATE OrderStatus 
SET Status = 'Delivered'
where OrderID = 101