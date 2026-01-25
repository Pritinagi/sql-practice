--find the average scores of customers and treat nulls as 0 
--and additional provide details such cusomer id and lastname
SELECT 
CustomerID,
sum(CASE 
	WHEN sales>30 then 1
	ELSE 0
END) totalordershighsales ,
count(*) totalorders
from Sales.Orders
GROUP BY CustomerID