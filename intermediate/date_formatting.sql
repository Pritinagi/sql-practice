--show creation time using the following format:
--day web jan q1 2025 12:34:56 pm

SELECT OrderID,
CreationTime,
'DAY ' + FORMAT(CreationTime, 'ddd MMM ') + 
' Q' + DATENAME(QUARTER,creationTime) +
' ' + FORMAT(CreationTime, 'yyyy hh:mm:ss tt') Customeformat
FROM Sales.Orders