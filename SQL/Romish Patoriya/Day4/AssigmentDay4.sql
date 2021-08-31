USE RDatabase

--Day 4 Assignment 

--1.Write a query to rank employees based on their salary for a month.
SELECT RANK() OVER (ORDER BY SALARY DESC) Rank, * FROM Employees

--2.Select 4th Highest salary from employee table using ranking function.
SELECT RANK() OVER (ORDER BY SALARY DESC) RIO, * INTO EMP FROM Employees
SELECT RIO,SALARY FROM EMP WHERE RIO = 4
DROP TABLE EMP

--3.Get department, total salary with respect to a department from employee table.
SELECT DepartmentID,SUM(Salary) AS 'Total Salary' FROM Employees
GROUP BY DepartmentID

--4.Get department, total salary with respect to a department from employee table order by total salary descending.
SELECT DepartmentID,SUM(Salary) AS 'Total Salary' FROM Employees
GROUP BY DepartmentID ORDER BY [Total Salary] DESC

--5.Get department wise maximum salary from employee table order by salary ascending.
SELECT DepartmentID,MAX(Salary) AS 'MAX_SALARY' FROM Employees
GROUP BY DepartmentID ORDER BY [MAX_SALARY] ASC

--6.Get department wise minimum salary from employee table order by salary ascending.
SELECT DepartmentID,MIN(Salary) AS 'MIN_SALARY' FROM Employees
GROUP BY DepartmentID ORDER BY [MIN_SALARY] ASC

--7.Select department, total salary with respect to a department from employee table where total salary greater than 50000 order by TotalSalary descending.
SELECT DepartmentID,SUM(Salary) AS 'Total Salary' FROM Employees
GROUP BY DepartmentID HAVING SUM(Salary) > 50000 ORDER BY [Total Salary] DESC