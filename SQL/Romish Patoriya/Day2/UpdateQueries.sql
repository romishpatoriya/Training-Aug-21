USE RDatabase
GO
--1
UPDATE Employees
SET Email='not available'

ALTER TABLE Employees
DROP CONSTRAINT ukEmail

--2
UPDATE Employees
SET Email = 'not avilable' , CommissionPct = 0.10

--3
UPDATE Employees
SET Email = 'not available' , CommissionPct = 0.10
WHERE DepartmentID = 110

--4
UPDATE Employees
SET Email = 'not available' 
WHERE DepartmentID = 80 AND CommissionPct < 0.20

--5
UPDATE Employees
SET Email = 'not available'
WHERE DepartmentID = (SELECT DepartmentID FROM Departments WHERE DepartmentName = 'Accounting')

--6
UPDATE Employees 
SET Salary = 8000
WHERE EmployeeID = 105 AND Salary < 5000

--7
UPDATE Employees
SET JobId = 'SH_CLERK'
WHERE EmployeeID = 118 AND DepartmentID = 30 AND NOT JobId LIKE 'SH%'

--8
UPDATE Employees
SET Salary = CASE DepartmentID
WHEN 40 THEN Salary + Salary * 0.25 WHEN 90 THEN Salary + Salary * 0.15 WHEN 110 THEN Salary + Salary * 0.10
ELSE Salary END WHERE DepartmentID IN (40,90,110)