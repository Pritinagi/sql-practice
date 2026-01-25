SELECT 
OrderID,
productid,
sales,
sum(sales) over() as totalsales,
round(cast(sales as float)/ sum(sales) over() *100,2),
sum(sales) over(partition by productid) as totalsales_per_product
from Sales.Orders