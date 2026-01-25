--find the total sales of each product 
SELECT 
OrderID,
orderdate,
sales,
productid,
sum(sales) over() as totalsales,
sum(sales) over(partition by productid) as totalsales_per_product
from Sales.Orders