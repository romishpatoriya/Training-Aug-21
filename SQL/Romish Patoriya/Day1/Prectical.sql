--Exercise 1:

CREATE TABLE Countries 
(
CountryId INT PRIMARY KEY,
CountryName VARCHAR(20) CHECK ( CountryName IN ('Italy','India','Chine')) NOT NULL,
RegionId VARCHAR(10)
)

--Exercise 2:

CREATE TABLE Job_History1 
(
	EmployeeId INT PRIMARY KEY,
	StartData DATE ,
	EndDate VARCHAR(10) CHECK (EndDate LIKE '--/--/----'),
	Job_Id INT ,
	Department_Id INT 
)

--Exercise 3:

CREATE TABLE Jobs (
    JobId INT PRIMARY KEY,
    JobTitle VARCHAR(20) DEFAULT '',
    MinSalary MONEY DEFAULT 8000,
    MaxSalary MONEY DEFAULT NULL
)

--Exercise 4:

CREATE TABLE Employees
(
    Employee_Id INT PRIMARY KEY,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20 NOT NULL,
    Email VARCHAR(25) CONSTRAINT chkEmail (Email LIKE %_@_%._%) NOT NULL,
    PhoneNumber NUMERIC(10),
    Hire_Date DATE NOT NULL,
    JobId INT FOREIGN KEY (JobId) REFERENCES Jobs(JobId),
    Salary MONEY,
    Commission FLOAT,
    Manager_Id INT ,
    Department_Id INT CONSTRAINT fkDepartmentId FOREIGN KEY REFERENCES Departments(Department_Id)
)

/* for foreign key references */
CREATE TABLE Departments(
    Department_Id INT PRIMARY KEY,
    Department_Name VARCHAR(20) NOT NULL
)

---Alter statement

/* 1. add a foreign key constraint named fk_job_id */

ALTER TABLE job_history 
ADD CONSTRAINT fkjobid FOREIGN KEY(Job_Id) REFERENCES Jobs(JobId)

/* 2. for drop the existing foreign key fk_job_id from JobHistory */

ALTER TABLE JobHistory
DROP CONSTRAINT fk_job_id

/* 3. Add a new column named location to the JobHistory */

ALTER TABLE JobHistory
ADD location varchar(10)

---Assigment

CREATE TABLE  Employees1 (
    EmployeeID INT PRIMARY KEY,
	FirstName VARCHAR(20) NOT NULL,
	LastName VARCHAR(20) NOT NULL,
	Email VARCHAR(25) CONSTRAINT chkEmail CHECK(Email LIKE '%_@%_.%') NOT NULL,
	PhoneNumber VARCHAR(20) DEFAULT NULL,
	HireDate DATE NOT NULL,
	JobId VARCHAR(10) NOT NULL,
	Salary DECIMAL(8,2) DEFAULT NULL,
	CommissionPct DECIMAL(2,2) DEFAULT NULL	
 )

 CREATE TABLE Inventory (
	Inve_Id INT PRIMARY KEY,
	CarName VARCHAR(25) NOT NULL,
	Car_Number VARCHAR(20),
	Cust_ID INT CONSTRAINT fk_Invt_Cust FOREIGN KEY REFERENCES Customer(Customer_Id) NOT NULL
	)

	CREATE TABLE Sales (
	Sales_Id INT PRIMARY KEY,
	Emp_ID INT CONSTRAINT fk_Emp_Sales FOREIGN KEY REFERENCES Employees1(EmployeeID) NOT NULL,
	Customer_Id INT CONSTRAINT fk_Sale_Cust FOREIGN KEY REFERENCES Customer(Customer_Id) NOT NULL
	)

	CREATE TABLE Customer (
	Customer_Id INT PRIMARY KEY,
	CustomerName VARCHAR(30) NOT NULL,
	Address VARCHAR(50) ,
	PhoneNo INT CONSTRAINT chk_PhoneNo CHECK ( PhoneNo BETWEEN 0000000001 AND 9999999999)
	)