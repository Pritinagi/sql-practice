--find the averaage score of customers.
--additionally procide such as customer id and last name 
/*SELECT 
CustomerID,
LastName,
avg(score) over() as average_score,
avg(coalesce(score,0)) over() as average_score
FROM Sales.Customers
*/

--find all orders where sales are higher than the average sales across all orders.

select *
from (SELECT 
orderid,
productid,
sales,
avg(coalesce(sales,0)) over () as avg_score
FROM Sales.Orders
)t
where sales > avg_score