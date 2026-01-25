SELECT 
OrderID,
CreationTime,
Year(CreationTime) Year, 
MONTH(CreationTime) MONTH ,
DATETRUNC(minute, CreationTime) day_min,
DATETRUNC(hour, CreationTime) day_hour,
DATETRUNC(day, CreationTime) day_day,
DATETRUNC(year, CreationTime) day_year,


DATENAME(weekday, CreationTime) day_dn

FROM Sales.Orders
