SELECT FirstName as names,
LastName
FROM Sales.Customers

UNION 

SELECT FirstName,
LastName 
FROM Sales.Employees