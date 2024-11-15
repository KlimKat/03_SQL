--Провести первый анализ данных: посмотреть отдельно уникальные значения по полям 
--sex (пол), education (образование), product_type (тип продукта), family_status (семейное положение).

select distinct sex 
from Clusters;

select distinct education 
from Clusters;

select distinct product_type 
from Clusters;

select distinct family_status 
from Clusters;
