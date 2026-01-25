SELECT 
orderid,
productid,
orderdate,
sales,
avg(sales) over(partition by productid) as product_avg ,
avg(sales) over(partition by productid order by orderdate rows between current row and 1 following ) as product_avg_moving_avg
from sales.Orders