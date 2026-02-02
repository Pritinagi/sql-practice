--step -1 : find the total sales per customers(standalone CTE) 


with CTE_total_sales as
(
SELECT 
	customerid,
	sum(sales) as totalsales
from sales.Orders
group by CustomerID
)

-- main query 

SELECT 
c.customerid,
c.firstname,
c.lastname,
cts.totalsales
from sales.Customers c
left join CTE_total_sales as cts
on cts.CustomerID=c.CustomerID
order by CustomerID desc