-- HW5Задание 1: Создание таблицы и изменение данных
-- Задание: Создайте таблицу EmployeeDetails для хранения информации о
-- сотрудниках. Таблица должна содержать следующие столбцы:
-- ● EmployeeID(INTEGER,PRIMARYKEY) 
-- ● EmployeeName(TEXT)
-- ● Position(TEXT)
-- ● HireDate(DATE)
-- ● Salary(NUMERIC)
-- После создания таблицы добавьте в неё три записи с произвольными данными о сотрудниках.


-- Создание таблицы
CREATE TABLE EmployeeDetails (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Position VARCHAR(100),
    HireDate DATE,
    Salary DECIMAL(10, 2)
);

-- Добавление данных
INSERT INTO EmployeeDetails (EmployeeID, EmployeeName, Position, HireDate, Salary) 
VALUES (1, 'John Smith', 'Sales Manager', '2022-01-15', 55000.00);

INSERT INTO EmployeeDetails (EmployeeID, EmployeeName, Position, HireDate, Salary) 
VALUES (2, 'Jane Doe', 'Marketing Specialist', '2021-06-30', 48000.00);

INSERT INTO EmployeeDetails (EmployeeID, EmployeeName, Position, HireDate, Salary) 
VALUES (3, 'Emily Johnson', 'Software Engineer', '2023-03-22', 65000.00);

-- Просмотр добавленных данных
SELECT * FROM EmployeeDetails;
