--find the difference in sales between the curent and lowest 
select 
orderid,
ProductID,
sales,

FIRST_VALUE(sales) over(partition by productid order by sales ) lowest_sale,
last_value(sales) over(partition by productid order by sales rows between current row and unbounded following  ) highest_sale_by_lastvalue,
sales- FIRST_VALUE(sales) over(partition by productid order by sales ) comparison

from sales.orders
