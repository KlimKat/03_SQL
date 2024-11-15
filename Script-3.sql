--Получите только женатых пенсионеров.
SELECT *
FROM Clusters
WHERE (sex = 'female' AND age >= 60
OR sex = 'male' AND age >= 65)
and family_status = 'Married'
order by sex, age;