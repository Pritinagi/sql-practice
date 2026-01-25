SELECT 
creationtime,
--CONVERT (int,'123') as [string to int convert],
--CONVERT (DATE, '2026-01-08') AS  [String to date ],
CONVERT (DATE, Creationtime) AS  [datetime to date ],
CONVERT (VARCHAR, creationtime, 32) AS  [usa standard 32],
CONVERT (VARCHAR, creationtime, 34) AS  [usa standard 34]

FROM Sales.Orders