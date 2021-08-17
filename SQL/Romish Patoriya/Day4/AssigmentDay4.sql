USE RDatabase

--Day 4 Assignment 

--1
SELECT RANK() OVER (ORDER BY SALARY DESC) Rank, * FROM Employees

--2
SELECT RANK() OVER (ORDER BY SALARY DESC) RIO, * INTO EMP FROM Employees
SELECT RIO,SALARY FROM EMP WHERE RIO = 4
DROP TABLE EMP

--3
SELECT DepartmentID,SUM(Salary) AS 'Total Salary' FROM Employees
GROUP BY DepartmentID

--4
SELECT DepartmentID,SUM(Salary) AS 'Total Salary' FROM Employees
GROUP BY DepartmentID ORDER BY [Total Salary] DESC

--5
SELECT DepartmentID,MAX(Salary) AS 'MAX_SALARY' FROM Employees
GROUP BY DepartmentID ORDER BY [MAX_SALARY] ASC

--6
SELECT DepartmentID,MIN(Salary) AS 'MIN_SALARY' FROM Employees
GROUP BY DepartmentID ORDER BY [MIN_SALARY] ASC

--7
SELECT DepartmentID,SUM(Salary) AS 'Total Salary' FROM Employees
GROUP BY DepartmentID HAVING SUM(Salary) > 50000 ORDER BY [Total Salary] DESC