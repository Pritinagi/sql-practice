--ank customers based on their total sales
SELECT 
CustomerID,
sum(sales) totalsales,
rank() over(order by sum(sales) desc) rankcustomers
from Sales.Orders
group by customerid