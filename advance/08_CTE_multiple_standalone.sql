--step -1 : find the total sales per customers(standalone CTE) 


with CTE_total_sales as
(
SELECT 
	customerid,
	sum(sales) as totalsales
from sales.Orders
group by CustomerID
),
--step 2: Find the last order date for eachc customer
CTE_last_order as 
(

SELECT 
customerid,
max(orderdate) as last_order_date
from sales.Orders
group by CustomerID

) 


--

-- main query 

SELECT 
c.customerid,
c.firstname,
c.lastname,
cts.totalsales,
clo.last_order_date
from sales.Customers c
left join CTE_total_sales as cts
on cts.CustomerID=c.CustomerID
left join CTE_last_order as clo
on clo.CustomerID=c.CustomerID