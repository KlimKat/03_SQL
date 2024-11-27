-- HW3Задание 3: Разница в суммах кредита по месяцам
-- Задание: 
-- Создайте таблицу с разницей (Difference) между суммой 
-- кредита и предыдущей суммой кредита по месяцам для каждого кластера. 
-- Используйте таблицу Clusters.
-- Результат: В результате запроса будут следующие столбцы:
-- ● month:месяц,
-- ● cluster:кластер,
-- ● credit_amount:суммакредита,
-- ● PreviousCreditAmount:суммакредитавпредыдущеммесяце,
-- ● Difference:разницамеждутекущейипредыдущейсуммойкредита.

-- Рассчитываем сумму кредита и сумму кредита в предыдущем месяце
WITH CreditWithPrevious AS (
    SELECT
        month,
cluster,
        credit_amount,
        LAG(credit_amount) OVER (PARTITION BY cluster ORDER BY
month) AS PreviousCreditAmount
    FROM Clusters
)
-- Вычисляем разницу между текущей и предыдущей суммой кредита
SELECT
    month,
    cluster,
    credit_amount,
    PreviousCreditAmount,
    COALESCE(credit_amount - PreviousCreditAmount, 0) AS Difference
FROM CreditWithPrevious;


