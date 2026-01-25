--calculate moving average of sales for each product
--

SELECT 
orderid,
productid,
orderdate,
sales,
avg(sales) over(partition by productid) as product_avg ,
avg(sales) over(partition by productid order by orderdate) as product_avg_moving_avg
from sales.Orders
