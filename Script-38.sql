#Вставьте образец данных в поле 'EmployeeRoles' таблица для идентификатора сотрудника 1 с должностью 'Manager'.

insert into EmployeeRoles 
set
	`EmployeeID` = 2,
	`Role` = 'Manager'
;
#а можно так, чтобы вставить можно было много строчек
INSERT INTO EmployeeRoles 
(EmployeeID, `Role`)
VALUES
	(1, 'CEO'),
	(3, 'CoCEO'),
	(4, 'TL'),
	(5, 'TL')
;

