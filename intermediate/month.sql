SELECT
MONTH(orderdate),
count(*) Nooforders
From Sales.Orders
Group by MONTH(OrderDate)