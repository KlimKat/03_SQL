--Рассчитайте процент от общего объема (выручки) продаж каждого продукта в своей категории.

select
	ProductName,
	sum(price * quantity) / sum(sum(price * quantity)) over (partition by CategoryID) * 100 as cash
from OrderDetails od 
join products p on p.ProductID = od.ProductID
group by p.ProductID, CategoryID
order by cash desc