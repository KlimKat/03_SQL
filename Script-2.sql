--Получите клиентов пенсионного возраста с сортировкой по полу и возрасту 
--(женщины 60 лет включительно, мужчины 65 лет).

SELECT *
FROM Clusters
WHERE sex = 'female' AND age >= 60
OR sex = 'male' AND age >= 65
order by sex, age;