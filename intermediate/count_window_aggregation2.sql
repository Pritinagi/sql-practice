--check whether the table 'orders' contains any duplicates

/*
SELECT 
OrderID,
count(*) over(partition by orderid) checkprimary_key 
FROM Sales.Orders
*/

--identifiy the duplicates 

SELECT 
*
from(
SELECT 
OrderID,
count(*) over(partition by orderid) checkpk
FROM Sales.OrdersArchive
)t  
where checkpk>1 