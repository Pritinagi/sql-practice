--in order to export the data ,
--divid the oder into 2 groups.
select
orderid,
ntile(2) over(order by orderid asc) bukets
from sales.Orders