/*
--create log table 
create table sales.employeelogs
(
logID int IDENTITY(1,1) primary key,
employeeid int,
logmessage VARCHAR(255),
logdate date
)
*/


--create trigggers on employee table
CREATE TRIGGER trg_Afterinsertemployee on sales.employees
after insert 
AS
BEGIN

	INSERT INTO sales.employeelogs (employeeid,logmessage,logdate)
	SELECT
		Employeeid,
		'new employe added=' + cast(employeeid as nvarchar),
		getdate()
	FROM INSERTED
END



--insert new data into employees
SELECT * from sales.Employeelogs

INSERT INTO sales.Employees
values (7,'maria' ,'doe','hr', '1988-01-12','F',80000,3)