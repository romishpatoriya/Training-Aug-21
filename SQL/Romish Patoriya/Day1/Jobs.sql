CREATE TABLE Jobs (
JobId int primary key,
JobTitle varchar(20) DEFAULT '',
MinSalary money DEFAULT 8000,
MaxSalary money DEFAULT NULL
)