--Получить максимальную и минимальную сумму кредита в разрезе пола и 
--Хороших клиентов для клиентов с высшим/неполным высшим образованием. 
--В чем особенность плохих и хороших клиентов?

--select DISTINCT 
	--education 
--from Clusters
--where education = 'Higher education' or education = 'Incomplete higher education' --так тоже можно делать, но мы заменили на like



select 
	bad_client_target,
	sex,
	max(credit_amount),
	min(credit_amount)
from Clusters
where education like '%Higher%'
group by bad_client_target, sex 
