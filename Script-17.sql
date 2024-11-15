--Давайте сейчас проверим гипотезу, что доход клиентов связан с регионом проживания.

select 
	region,
	avg(income) as average
from Clusters
group by region 
order by average