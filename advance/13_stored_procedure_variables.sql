--stored procedure variable
--define stored procedure 

ALTER PROCEDURE getcustomersummarynew @country NVARCHAR(50)= 'USA'
AS 
BEGIN

DECLARE @total_customers INT , @Avgscore float;


SELECT 
@total_customers = count(*),
@Avgscore = avg(Score)
from Sales.Customers
where country = @country;

PRINT 'totsl customers from ' + @country + 'is' + CAST(@total_customers as Nvarchar);
PRINT 'Average score from germany ' + @country + ':' +CAST(@Avgscore as Nvarchar);


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


