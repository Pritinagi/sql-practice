SELECT 
so.OrderID,
so.Sales,
sc.firstname as customer_name,
p.Product as Product_name,
p.Price ,
e.FirstName as sales_person_name
FROM Sales.Orders as so
LEFT JOIN Sales.Customers as sc
ON so.CustomerID= sc.CustomerID
LEFT JOIN Sales.Products as p
ON so.ProductID = p.ProductID
LEFT JOIN Sales.Employees as e
ON so.SalesPersonID= e.EmployeeID