--Вывести первых 10 человек с наибольшей разницей между доходом и запрашиваемым кредит.
--То есть люди много зарабатывают и мало просят.

select *, income - credit_amount as 'difference'
from Clusters
order by difference DESC 
limit 10;