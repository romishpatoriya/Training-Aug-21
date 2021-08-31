--1.Write a query that displays the FirstName and the length of the FirstName for all employees whose name starts with the letters ‘A’, ‘J’ or ‘M’.
-- Give each column an appropriate label. Sort the results by the employees’ FirstName
SELECT Name = FirstName,NameLen=LEN(FirstName) FROM Employees
WHERE FirstName LIKE 'M%' OR FirstName LIKE 'A%' OR FirstName LIKE 'J%' ORDER BY FirstName

--2.Write a query to display the FirstName and Salary for all employees.
-- Format the salary to be 10 characters long, left-padded with the $ symbol. Label the column SALARY.
SELECT FirstName,FORMAT(Salary,'$000000000') AS SALARY FROM Employees

--3.Write a query to display the employees with their code, first name, last name and hire date who hired either on seventh day of any month or seventh month in any year.
SELECT EmployeeID,FirstName,LastName,HireDate FROM Employees
WHERE DATEPART(m,HireDate) = 7 OR DATEPART(d,HireDate) = 7

--4.Write a query to display the length of first name for employees where last name contains character ‘c’ after 2nd position.
SELECT FirstName,LEN(FirstName) AS LENGTH FROM Employees
WHERE FirstName LIKE '__c%'

--5.Write a query to extract the last 4 character of PhoneNumber.
SELECT PhoneNumber,SUBSTRING(PhoneNumber,LEN(PhoneNumber)-3,LEN(PhoneNumber)) FROM Employees

--6.Write a query to update the portion of the PhoneNumber in the employees table, within the phone number the substring ‘124’ will be replaced by ‘999’.
UPDATE Employees
SET PhoneNumber = REPLACE(PhoneNumber,'124','999')
WHERE PhoneNumber LIKE '%124%'

--7.Write a query to calculate the age in year.
DECLARE @DOB DATE = '2000-03-02 00:00:00.000'
SELECT AGE=DATEDIFF(yy,@DOB,GETDATE())

SELECT GETDATE()

--8.Write a query to get the distinct Mondays from HireDate in employees tables.
SELECT DISTINCT HIREDAY = DATENAME(DW,HireDate) , HireDate FROM Employees
WHERE DATENAME(DW,HireDate) = 'Monday'

--9.Write a query to get the FirstName and HireDate from Employees table where HireDate between ‘1987-06-01’ and ‘1987-07-30’
SELECT FirstName,HireDate FROM Employees
WHERE HireDate BETWEEN '1987-06-01' AND '1987-07-30'

--10.Write a query to display the current date in the following format.
-- Sample output : 12:00 AM Sep 5, 2014
SELECT FORMAT(GETDATE(),'hh:mm tt MMM dd,yyyy')

--11.Write a query to get the FirstName, LastName who joined in the month of June.
SELECT FirstName,LastName,HireDate FROM Employees
WHERE DATENAME(mm,HireDate) = 'June'

--12.Write a query to get first name, hire date and experience of the employees.
SELECT FirstName,HireDate,ExperienceInYear = DATEDIFF(yy ,HireDate,GETDATE()) FROM Employees

--13.Write a query to get first name of employees who joined in 1987.
SELECT FirstName FROM Employees
WHERE DATEPART(YYYY,HireDate) = 1987
