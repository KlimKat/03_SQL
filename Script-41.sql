-- HW1Задание No3: Средняя цена и количество товаров в категории 5
-- Посчитайте среднюю цену и общее количество товаров в категории с идентификатором 5.

SELECT
    AVG(Price) AS avg_price,
    COUNT(*) AS total_products
FROM Products
WHERE CategoryID = 5;