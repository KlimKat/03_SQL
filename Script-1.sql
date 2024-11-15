--Получить клиентов банка женщин, с семейным статусом Another
select *
from Clusters
where `sex` = 'female'
and `family_status` = 'Another';

