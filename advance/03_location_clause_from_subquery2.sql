--- rank customers based on their total amount of sales
select
*,
rank() over(order by totalsales) as ranking
from (
	select 
	CustomerID,
	sum(sales) as totalsales
	from sales.Orders
	group by CustomerID
	) t