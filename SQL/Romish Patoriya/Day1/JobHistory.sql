CREATE TABLE job_history(
Employee_Id int primary key,
Satrt_Date Date,
End_Date Date CHECK (End_Date LIKE'--/--/----'),
Job_id int,
Department_Id int)