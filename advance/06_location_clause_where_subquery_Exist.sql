--show the detaails of orders made by customer in germany 
SELECT *
from sales.Orders o
where exists (
	select 1
	from sales.Customers c
	where c.CustomerID = o.CustomerID and c.Country='germany' 
);
--show the detaails of orders made by customer in germany 
SELECT *
from sales.Orders o
where not exists (
	select 1
	from sales.Customers c
	where c.CustomerID = o.CustomerID and c.Country='germany' 
)