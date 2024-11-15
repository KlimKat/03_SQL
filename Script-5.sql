--Вывести первых 10 человек с наибольшей и наименьшей заработной платой (два запроса)

SELECT *
FROM Clusters
ORDER BY income
LIMIT 10;

SELECT *
FROM Clusters
ORDER BY income desc
LIMIT 10;