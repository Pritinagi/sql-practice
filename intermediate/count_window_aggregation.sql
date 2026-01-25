--
/*SELECT 
orderid,
orderdate,
customerid,
count(*) over()as totalorders,
count(*) over(partition by customerid)as totalorderscustomer

FROM Sales.Orders
*/



--find the total number of customers and additionaly provide all customers details
/*SELECT 
*,
/*CustomerID,
firstname,
lastname,
country,
score,*/
count(customerid) over() as total_customers
from Sales.Customers
*/

--find the total number of scores for the customers
select
*,
count(score) over () as totalscore
from Sales.Customers