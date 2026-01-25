--datediff()
/*
SELECT
EmployeeID,
BirthDate,
DATEDIFF(year, BirthDate, getdate())
FROM Sales.Employees


*/

--find the average shippingduration in days for each month 

/*
SELECT 

month(orderdate),
avg(datediff(day,OrderDate,ShipDate)) as avgship
FROM Sales.Orders
group by month(OrderDate)

*/






SELECT 
OrderID,
Orderdate currentorderdate,
LAG(orderdate) over (order by orderdate) previous
FROM Sales.Orders