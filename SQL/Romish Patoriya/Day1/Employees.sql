CREATE TABLE Employees
(
Employee_Id int primary key,
FirstName varchar(20),
LastName varchar(20),
Email varchar(25),
PhoneNumber numeric(10),
Hire_Date Date,
JobId int FOREIGN KEY (JobId) REFERENCES Jobs(JobId),
Salary money,
Commission float,
Manager_Id int ,
Department_Id int CONSTRAINT fkDepartmentId FOREIGN KEY REFERENCES Departments(Department_Id)
)

/* for foreign key references */
CREATE TABLE Departments(
Department_Id int primary key,
Department_Name varchar(20) not null
)
