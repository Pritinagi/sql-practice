SELECT 
Orderid,
orderdate,
DATEADD(month,-2,OrderDate) as twomonthearlier,
DATEADD(day,12,OrderDate) as twelwedayslater,
DATEADD(year,2,OrderDate) as twoyearslater
FROM Sales.Orders