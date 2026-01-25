--orders data are sorted in seprated tables(orders and ordersarchieve)
--combine all orders data into one report without duplicates

SELECT 
'Orders' as SourceTable,
[OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
FROM Sales.Orders

UNION

SELECT 
'OrdersArchive' as sourcetable,
  [OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]

FROM Sales.OrdersArchive
ORDER BY OrderID