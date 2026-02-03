create view sales.v_monthly_sumamry  as 
(
SELECT 
datetrunc(month, orderdate) ordermonth,
sum(sales) totalsales,
count(orderid) total_orderss,
sum(quantity) total_quantities 
from sales.Orders
group by datetrunc(month, orderdate)
)