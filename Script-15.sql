--Давайте поработаем с колонкой cluster. Для начала посмотрим 
--сколько кластеров у нас есть и сколько людей попало в каждый кластер

select 
	cluster,
	count(*)
from Clusters
group by cluster 
order by cluster