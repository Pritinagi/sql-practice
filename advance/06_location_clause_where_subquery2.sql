--show the details of orders made by customers in germany 
SELECT *
from sales.Orders o
where CustomerID in (
SELECT CustomerID
from sales.Customers
where country != 'germany');
SELECT *
from sales.Orders o
where CustomerID in (
SELECT CustomerID
from sales.Customers
where country = 'germany');

SELECT *
from sales.Orders o
where CustomerID not in (
SELECT CustomerID
from sales.Customers
where country != 'germany');
