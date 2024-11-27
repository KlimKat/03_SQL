-- HW4Задание 3: Средняя продолжительность кредитного срока для клиентов
-- Задание: Рассчитайте среднюю продолжительность кредитного срока для клиентов по категориям образования.

SELECT
    education AS Education,
    AVG(credit_term) AS AverageCreditTerm
FROM Clusters
GROUP BY education;