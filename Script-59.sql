-- HW5Задание 4: Создание хранимой процедуры
-- Задание: Создайте хранимую процедуру GetProductSales с одним параметром ProductID. Эта процедура должна возвращать список всех заказов, в которых участвует продукт с заданным ProductID, включая следующие столбцы:
-- ● OrderID(идентификаторзаказа),
-- ● OrderDate(датазаказа),
-- ● CustomerID(идентификаторклиента).

-- Создание хранимой процедуры для получения заказов по ID продукта
CREATE PROCEDURE GetSalesForProduct(IN ProductIDInput INT)
BEGIN
    -- Выбор данных о заказах с фильтром по ID продукта
    SELECT 
        Orders.OrderID, 
        Orders.OrderDate, 
        Orders.CustomerID
    FROM Orders
    JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
    WHERE OrderDetails.ProductID = ProductIDInput;
END;
