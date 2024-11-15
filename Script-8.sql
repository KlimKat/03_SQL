--Реализуем пример запроса VALUE_COUNTS, который возвращает количество для каждого элемента. Давайте посмотрим сколько среди наших клиентов мужчин
--и женщин. А затем посмотрим как люди разбиты по образованию.
--Не забываем, что в таком запросе нам важно получить отсортированный список, чтобы сверху были самые популярные экземпляры.

select sex,
	count(*) as cnt
from Clusters
group by sex
order by cnt desc;

select education,
	count(*) as cnt
from Clusters
group by education
order by cnt desc;

