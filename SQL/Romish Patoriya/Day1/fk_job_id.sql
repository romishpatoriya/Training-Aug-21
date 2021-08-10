CREATE TABLE JobHistory 
(
EmployeeId int primary key,
StartData Date ,
EndDate Date check (EndDate LIKE '--/--/----'),
Job_Id int CONSTRAINT fk_job_id FOREIGN KEY REFERENCES Jobs(JobId),
Department_Id int 
)

/* for drop the existing foreign key fk_job_id from JobHistory */

ALTER TABLE JobHistory
DROP CONSTRAINT fk_job_id