--rank the orders based on their sales fromhighest to lowest 

/*SELECT OrderID,
productid,
sales,
row_number() over(order by sales desc) as ranking
from Sales.Orders*/

--find the top highest sales for each product 
/*select * 
from
(
SELECT OrderID,
productid,
sales,
row_number() over(partition by productid order by sales desc) as ranking
from Sales.Orders
)t

where ranking =1
*/
--lowest 2 customer based on total sales
SELECT 
customerid,
sum(sales) totalsales,
row_number() over(order by sum(sales) ) as ranking
from Sales.Orders
group by customerid