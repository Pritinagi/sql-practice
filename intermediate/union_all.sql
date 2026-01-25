--combine the data from employees and customers 
SELECT 
FirstName,
LastName
FROM Sales.Customers

UNION 

SELECT 
FirstName,
LastName
FROM Sales.Employees