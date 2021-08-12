--1
 SELECT * FROM Employees

--2
 SELECT FirstName,LastName FROM Employees

 --3
 SELECT FirstName 'Employee Name' FROM Employees

 --4
 SELECT * FROM Employees
 WHERE FirstName = 'Steven'

 --5
 SELECT * FROM Employees
 WHERE FirstName IN ('Neena','Lex')

 --6
 SELECT * FROM Employees
 WHERE FirstName IN ('Neena','Neena')

--7
SELECT * FROM Employees
--WHERE Salary > 5000 AND Salary < 8000
WHERE Salary BETWEEN 5000 AND 8000

--8
SELECT FirstName,LastName,Salary,PF = Salary *.12 FROM Employees

--9
SELECT * FROM Employees
WHERE FirstName LIKE 'N%'

--10
SELECT DISTINCT DepartmentID FROM Employees

--11
SELECT * FROM Employees ORDER BY FirstName DESC

--12
SELECT EmployeeID,FirstName,LastName,Salary FROM Employees ORDER BY Salary ASC

--13
SELECT TOP 10 Salary FROM Employees