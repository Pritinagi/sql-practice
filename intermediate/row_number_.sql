--find the top highest salesfor each product 
/*
SELECT *
from (
SELECT 
orderid,
sales,
productid,
ROW_NUMBER() over(partition by productid order by sales desc) as ranking
from Sales.Orders)t
where ranking=1
*/
--find the lowest 2 customers based on their total sales
/*
select *
from(
SELECT 
CustomerID,
sum(sales) as total_sales,
ROW_NUMBER() over (order by sum(sales))  ranking

from Sales.Orders
group by CustomerID)t

where ranking<=2
*/



--assign unique ids to the rows of the orderarchive
/*SELECT 
ROW_NUMBER() over(order by orderid,orderdate)as uniqueid 
,
*
from Sales.OrdersArchive
*/
--identify duplicates rows in the tab;e ordersarchive and return a clean result without duplicates

SELECT *
from (SELECT 
row_number() over(partition by orderid order by creationtime desc) as rn,
*
from Sales.OrdersArchive)t
where rn=1

