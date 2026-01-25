/*SELECT 
OrderID,
ShipAddress,
BillAddress,
ISNULL(Shipaddress,BillAddress) as in_null,
COALESCE(Shipaddress,BillAddress,'unknown') as colesce_e
FROM Sales.orders*/


SELECT 
customerid,
Score,
AVG(Score) over() as avgscoress,
AVG(COALESCE(score,0)) over() AVGSCORE2
FROM Sales.Customers