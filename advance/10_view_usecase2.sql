--provide a view for EU sales team
--that combines from all tables
--and excludes data related to the USA

Create VIEW sales.v_order_details_EU as (
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
on e.EmployeeID=o.SalesPersonID


where c.country !='USA' --added this line and creating new view on it 
)

SELECT *
FROM sales.v_order_details_EU