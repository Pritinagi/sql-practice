SELECT 
DATETRUNC(year, CreationTime) creation ,
COUNT(*)


FROM Sales.Orders
GROUP BY DATETRUNC (year, creationTime)