#Создайте процедуру с именем «UpdateOrderStatus». который принимает OrderID и Status в качестве параметров
#и обновляет статус в 'OrderStatus'.

##update OrderStatus 
##set Status = 'Shipped'
##where OrderID = 1;

CALL Shop.sp_update_status(10251, 'Shipped');
