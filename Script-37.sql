#Создайте таблицу с именем «EmployeeRoles». со столбцами EmployeeRoleID, EmployeeID (INT), Role (VARCHAR).

create table EmployeeRoles(
	`EmployeeRoleID` INT PRIMARY KEY,
	`EmployeeID` INT,
	`Role` VARCHAR(100)
)