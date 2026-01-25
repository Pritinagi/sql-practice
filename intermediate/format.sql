SELECT 
FORMAT(OrderDate , 'MMM yy') OrderDates,
count(*)
FROM Sales.Orders
Group By FORMAT(OrderDate, 'MMM yy')