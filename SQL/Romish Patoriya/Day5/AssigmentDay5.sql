--Day 5

--ASSIGNMENT
--1.Get difference between JOINING_DATE and INCENTIVE_DATE from employee and incentives table.
SELECT E.JOINING_DATE AS 'Joining Date', I.INCENTIVE_DATE AS 'Incentive Date',DATEDIFF(day,E.JOINING_DATE,I.INCENTIVE_DATE) AS 'Difference of Date'
FROM Employee1 E JOIN Incentives I ON EMPLOYEE_ID = EMPLOYEE_REF_ID

--2.Select first_name, incentive amount from employee and incentives table for those employees who have incentives and incentive amount greater than 3000.
SELECT E.FIRST_NAME AS 'First Name',I.INCENTIVE_AMOUNT AS 'Incentive Amount'
FROM Employee1 E JOIN Incentives I ON EMPLOYEE_ID = EMPLOYEE_REF_ID
WHERE I.INCENTIVE_AMOUNT > 3000

--3.Select first_name, incentive amount from employee and incentives table for all employees even if they didn’t get incentives.
SELECT E.FIRST_NAME AS 'First Name',I.INCENTIVE_AMOUNT AS 'Incentive Amount'
FROM Employee1 E LEFT JOIN Incentives I ON EMPLOYEE_ID = EMPLOYEE_REF_ID

--4.Select EmployeeName, ManagerName from the employee table.
SELECT LE.FIRST_NAME +' ' +LE.LAST_NAME AS 'Employee Name',RE.FIRST_NAME + ' ' + RE.LAST_NAME AS 'Manager Name'
FROM Employee1 LE left JOIN Employee1 RE ON LE.MANAGER_ID = RE.EMPLOYEE_ID

--5.Select first_name, incentive amount from employee and incentives table for all employees even if they didn’t get incentives and set incentive amount as 0 for those employees who didn’t get incentives.
SELECT E.FIRST_NAME AS 'First Name' ,ISNULL(I.INCENTIVE_AMOUNT,0) AS 'Incentive Amount' 
FROM Employee1 E LEFT JOIN Incentives I ON E.EMPLOYEE_ID = I.EMPLOYEE_REF_ID