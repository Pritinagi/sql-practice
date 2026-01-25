--find the lowest and highest sales for each product
select 
orderid,
ProductID,
 sales,
min(sales) over(partition by productid order by sales ) min_lowest_sale,
max(sales) over(partition by productid order by sales ) max_highest_sale,

FIRST_VALUE(sales) over(partition by productid order by sales ) lowest_sale,
FIRST_VALUE(sales) over(partition by productid order by sales desc ) highest_sale,
last_value(sales) over(partition by productid order by sales rows between current row and unbounded following  ) highest_sale_by_lastvalue
from sales.orders
