--use case of view
--HIDE COMPLEXITY 
--provide a view that combines details from orders, products, customers and employees
Create view sales.v_order_details as(

SELECT 
o.OrderID,
o.OrderDate,
p.product,
coalesce (c.firstname, ' ', c.lastname) customer_name,
c.Country customer_country,
coalesce (e.firstname, ' ', e.lastname) employee_name,
e.Department,
o.Sales,
o.Quantity
from sales.Orders o

left join sales.Products p
on p.ProductID= o.ProductID

left join sales.Customers c
on c.CustomerID=o.CustomerID

left join Sales.Employees e
on e.EmployeeID=o.SalesPersonID)



--highlight and run 
SElECT *
from sales.v_order_details



