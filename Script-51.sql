-- HW3Задание 2: Средняя и максимальная сумма кредита по месяцам
-- Задание: Рассчитайте среднюю сумму кредита (AvgCreditAmount) 
-- для каждого кластера в каждом месяце и сравните её с 
-- максимальной суммой кредита (MaxCreditAmount) за тот же месяц. 
-- Используйте таблицу Clusters.
-- Результат: В результате запроса будут следующие столбцы:
-- ● month:месяц,
-- ● cluster:кластер,
-- ● AvgCreditAmount:средняясуммакредитадлякаждогокластеравкаждом месяце,
-- ● MaxCreditAmount:максимальнаясуммакредитавкаждоммесяце.

-- Рассчитываем среднюю сумму кредита для каждого кластера и месяца
WITH AvgCredit AS (
    SELECT
        month,
cluster,
        AVG(credit_amount) AS AvgCreditAmount
    FROM Clusters
    GROUP BY month, cluster
),
-- Рассчитываем максимальную сумму кредита для каждого месяца
MaxCredit AS (
SELECT
month,
        MAX(credit_amount) AS MaxCreditAmount
    FROM Clusters
    GROUP BY month
)
-- Объединяем результаты и выводим их
SELECT
    a.month,
    a.cluster,
    a.AvgCreditAmount,
    m.MaxCreditAmount
FROM AvgCredit a
JOIN MaxCredit m ON a.month = m.month;


