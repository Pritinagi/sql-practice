--updating view 
--drop view sales.v_monthly_sumamry
--first run drop then recreate the view with pdate version 
create view sales.v_monthly_sumamry  as 
(
SELECT 
datetrunc(month, orderdate) ordermonth,
sum(sales) totalsales,
count(orderid) total_orderss
from sales.Orders
group by datetrunc(month, orderdate)
)
--select * from sales.v_monthly_sumamry
--uncomment and run the code to learn it