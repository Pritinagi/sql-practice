--stored procedure multiple staement
--define stored procedure 

ALTER PROCEDURE getcustomersummarynew @country NVARCHAR(50)= 'USA'
AS 
BEGIN
SELECT 
count(*) total_custmers,
avg(Score) avg_score
from Sales.Customers
where country = @country;


--2nd query in sp 
--find the total no. of orders and total sales 
SELECT 
count(orderid) totalorders,
sum(sales) totalsales
from sales.orders o 
join sales.Customers c
on c.CustomerID=o.CustomerID
where c.Country=@country;

END

--execute the stored procedure
GO
EXEC getcustomersummarynew 

EXEC getcustomersummarynew @country = 'GERMANY';
--drop procedure getcustomersummarynew


