--Определите среднюю цену товаров внутри каждой категории, 
--рассматривая только категории, в которых более 9 товаров.


with product_prices as (
	select DISTINCT 
		CategoryID,
		avg(price) over (partition by CategoryID),
		count(ProductID) over (partition by CategoryID) as cnt
	from Products
)
Select *
from product_prices 
where cnt > 9;

