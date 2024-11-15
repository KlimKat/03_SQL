--Получить среднюю величину запрашиваемого кредита и дохода клиентов для клиентов банка в разрезе образования и пола клиентов

select
	sex,
	education,
	round(avg(income), 2) as avg_income,
	round(avg(credit_amount), 2) as avg_credit
from Clusters
where is_client = 1
group by sex, education
order by avg_credit 