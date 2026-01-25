--in order to analyze customer loyalty 
--rank cusstomers on the averga days between their orders
select 
CustomerID,
avg(dayss) avgdayss,
rank() over(order by coalesce(avg(dayss),999999)) as rankingg
from(
	select OrderID,
	customerid,
	orderdate currentorderdate,
	lead(orderdate) over(partition by customerid order by orderdate) next_order,
	datediff(day,orderdate, lead(orderdate) over(partition by customerid order by orderdate) ) as dayss
	from sales.Orders)t
group by CustomerID