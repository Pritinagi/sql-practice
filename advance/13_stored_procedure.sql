--step 1; write a query 
--for US customers find the total numbers of customers and the avegae scor e
/*

SELECT count(*) total_custmers,
avg(Score) avg_score
from sales.customers
where country ='USA'

--step 2 : turning the query into a stored procedure

CREATE PROCEDURE getcustomersummary as 
begin
SELECT count(*) total_custmers,
avg(Score) avg_score
from sales.customers
where country ='USA'
end

--step 3:execute the stored procedure

--EXEC getcustomersummary
*/