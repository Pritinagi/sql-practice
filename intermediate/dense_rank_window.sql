SELECT OrderID,
productid,
sales,
dense_rank() over(order by sales desc) as ranking
from Sales.Orders