--На какие цели берут кредит десять пенсионеров с наименьшим доходом.

SELECT DISTINCT product_type, income 
FROM Clusters
WHERE (sex = 'female' AND age >= 60
OR sex = 'male' AND age >= 65)
order by income
limit 10;