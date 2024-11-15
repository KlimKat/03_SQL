--Видим, что есть большие кластеры 0, 4, 3. Остальные маленькие.
--Давайте маленькие кластеры объединим в большой и посмотрим средний возраст, доход, кредит и пол в больших кластерах
(--с помощью функции CASE).

select 
	case
		when cluster in (1,2,5,6) then -1
		else cluster
	End as common_cluster,
	count(*),
	avg(age),
	avg(income),
	avg(credit_amount),
	avg(case 
			when sex='male' then 1.0 
			else 0 
		end) as avg_sex
from Clusters
group by common_cluster 
order by cluster