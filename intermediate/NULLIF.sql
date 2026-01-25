SELECT 
orderid,
sales,
Quantity,
SALES / NULLIF(quantity,0) as price
FROM Sales.Orders