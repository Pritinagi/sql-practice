SELECT OrderID,
productid,
sales,
rank() over(order by sales desc) as ranking
from Sales.Orders