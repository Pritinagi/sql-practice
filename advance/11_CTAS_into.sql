--
SELECT 
datename(MONTH, orderdate) ordermonth,
count(orderid)  totalorders
INTO sales.monthlyorders
from sales.orders
group by  datename(MONTH, orderdate)

--DROP Table sales.monthlyorders

--SELECT *
--from sales.monthlyorders