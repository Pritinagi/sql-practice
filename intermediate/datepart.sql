SELECT 
OrderID,
CreationTime,
Year(CreationTime) Year, 
MONTH(CreationTime) MONTH ,
DATEPART(day, CreationTime) day_dp,
DATEPART(hour, CreationTime) day_hour,
DATEPART(quarter, CreationTime) day_quater,
DATEPART(week, CreationTime) day_week,
DATENAME(weekday, CreationTime) day_dn

FROM Sales.Orders
