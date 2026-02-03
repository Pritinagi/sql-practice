--find the running total of sales fro each month 
/*
with CTE_monthly_summary as
(
SELECT 
datetrunc(month, orderdate) ordermonth,
sum(sales) totalsales,
count(orderid) total_orderss,
sum(quantity) total_quantities 
from sales.Orders
group by datetrunc(month, orderdate)
)

SELECT 
ordermonth,
sum(totalsales) over (order by ordermonth) as running_total
from CTE_monthly_summary
*/



--using view 

create view v_monthly_sumamry  as 
(
SELECT 
datetrunc(month, orderdate) ordermonth,
sum(sales) totalsales,
count(orderid) total_orderss,
sum(quantity) total_quantities 
from sales.Orders
group by datetrunc(month, orderdate)
)

--now the viw can be used as any other table in data base 
select * from v_monthly_sumamry

