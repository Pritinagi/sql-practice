--analyze the month over month performance
--by finding the percentage change in
--sales between the curent and previous month 
select *
,
currentmonthsales - previousvalue as mom_change,
round(cast((currentmonthsales - previousvalue) as float )/previousvalue *100,1)
from(SELECT 
month(orderdate) ordermonth, 
sum(sales) currentmonthsales,
lag(sum(sales)) over(order by month(orderdate)) as previousvalue
from sales.Orders
group by month(OrderDate))t