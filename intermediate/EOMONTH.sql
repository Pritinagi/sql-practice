SELECT 
OrderID,
CreationTime,
EOMONTH(CreationTime) ENDOFMONth,
CAST(DATETRUNC(MONTH ,creationtime) AS DATE) STartofmonth

FROM Sales.Orders
