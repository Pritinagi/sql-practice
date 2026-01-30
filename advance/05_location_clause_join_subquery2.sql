--show all customers details and find the total orders for each customer
SELECT c.*
from sales.Customers as c
left join(
	select 
	customerid,
	count(*) as total_order
	from sales.Orders 
	group by CustomerID) o
on c.CustomerID= o.CustomerID
