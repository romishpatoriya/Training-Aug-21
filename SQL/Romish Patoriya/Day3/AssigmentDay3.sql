--1
SELECT Name = FirstName,NameLen=LEN(FirstName) FROM Employees
WHERE FirstName LIKE 'M%' OR FirstName LIKE 'A%' OR FirstName LIKE 'J%' ORDER BY FirstName

--2
SELECT FirstName,FORMAT(Salary,'$000000000') AS SALARY FROM Employees

--3
SELECT EmployeeID,FirstName,LastName,HireDate FROM Employees
WHERE DATEPART(m,HireDate) = 7 OR DATEPART(d,HireDate) = 7

--4
SELECT FirstName,LEN(FirstName) AS LENGTH FROM Employees
WHERE FirstName LIKE '__c%'

--5
SELECT PhoneNumber,SUBSTRING(PhoneNumber,LEN(PhoneNumber)-3,LEN(PhoneNumber)) FROM Employees

--6
UPDATE Employees
SET PhoneNumber = REPLACE(PhoneNumber,'124','999')
WHERE PhoneNumber LIKE '%124%'

--7
DECLARE @DOB DATE = '2000-03-02 00:00:00.000'
SELECT AGE=DATEDIFF(yy,@DOB,GETDATE())

SELECT GETDATE()

--8
SELECT DISTINCT HIREDAY = DATENAME(DW,HireDate) , HireDate FROM Employees
WHERE DATENAME(DW,HireDate) = 'Monday'

--9
SELECT FirstName,HireDate FROM Employees
WHERE HireDate BETWEEN '1987-06-01' AND '1987-07-30'

--10
SELECT FORMAT(GETDATE(),'hh:mm tt MMM dd,yyyy')

--11
SELECT FirstName,LastName,HireDate FROM Employees
WHERE DATENAME(mm,HireDate) = 'June'

--12
SELECT FirstName,HireDate,ExperienceInYear = DATEDIFF(yy ,HireDate,GETDATE()) FROM Employees

--13
SELECT FirstName FROM Employees
WHERE DATEPART(YYYY,HireDate) = 1987
