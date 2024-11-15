--Получить распределение (min, max, avg) возрастов клиентов в зависимости от пола и оператора связи.
--Есть ли какие-нибудь здесь инсайды.

SELECT 
	phone_operator,
	sex,
	min(age),
	max(age),
	avg(age)
from Clusters
group by phone_operator, sex