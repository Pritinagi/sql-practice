--stored procedure using paramwter 
--define stored procedure 

CREATE PROCEDURE getcustomersummarynew @country NVARCHAR(50)='USA'
as 
begin
SELECT 
count(*) total_custmers,
avg(Score) avg_score
from Sales.Customers
where country = @country;
end

--execute the stored procedure

EXEC getcustomersummarynew @country = 'USA';
EXEC getcustomersummarynew 
--drop procedure getcustomersummarynew