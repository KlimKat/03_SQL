--Давайте посмотрим тоже самое, но только среди клиентов банка.

select
	sex,
	education,
	count(*) as cnt
from Clusters
where is_client = 1
group by sex, education
having cnt < 40;