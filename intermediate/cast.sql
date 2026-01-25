SELECT 
CAST ('123' AS int) as [string to  int],
CAST(123 AS VARCHAR) as [int to string],
CAST('2026-01-08' AS datetime) as [ string to datetime],
creationtime,
CAST(CreationTime AS date) as [ string to datetime]

FROM Sales.Orders