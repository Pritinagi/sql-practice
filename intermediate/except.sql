--find the employees who are not customers
SELECT 
FirstName,
LastName
FROM Sales.Employees

EXCEPT 

SELECT 
FirstName,
LastName
FROM Sales.Customers