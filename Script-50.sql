-- HW3Задание 1: Ранжирование продуктов по средней цене
-- Задание: Ранжируйте продукты в каждой категории на основе их средней цены
-- (AvgPrice). Используйте таблицы OrderDetails и Products. Результат: В результате запроса будут следующие столбцы:
-- ● CategoryID:идентификаторкатегориипродукта, 
-- ● ProductID:идентификаторпродукта,
-- ● ProductName:названиепродукта,
-- ● AvgPrice:средняяценапродукта,
-- ● ProductRank:рангпродуктавнутрисвоейкатегориинаосновесреднейценыв порядке убывания.

-- Рассчитываем среднюю цену для каждого продукта
WITH ProductAvgPrice AS (
SELECT
 
p.CategoryID,
        p.ProductID,
        p.ProductName,
        AVG(p.Price) AS AvgPrice
    FROM Products p
    JOIN OrderDetails od ON p.ProductID = od.ProductID
    GROUP BY p.CategoryID, p.ProductID, p.ProductName
)
-- Ранжируем продукты по средней цене внутри каждой категории
SELECT
CategoryID,
ProductID,
    ProductName,
AvgPrice,
    RANK() OVER (PARTITION BY CategoryID ORDER BY AvgPrice DESC) AS
ProductRank
FROM ProductAvgPrice;