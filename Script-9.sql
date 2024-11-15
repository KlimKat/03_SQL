--Теперь необходимо сравнить распределение по полу
--и образованию (отдельно) для клиентов и не клиентов банка.
--Продумать, какая сортировка будет оптимальной.

select 
	is_client, 
	sex,
	education,
	count(*) as cnt
from Clusters
group by is_client, sex, education
order by cnt desc;