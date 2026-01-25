SELECT 
OrderId, OrderDate,
ShipDate,
CreationTime,
'2025-08-20' hardcoded,
GETDATE () Today 
FROM Sales.Orders