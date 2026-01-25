--list all details for customers who have not placed any orders
--left anti join
SELECT 
c.*,
s.*
FROM Sales.Customers as c
LEFT JOIN Sales.orders as s
on c.CustomerID= s.CustomerID
where s.OrderID is null