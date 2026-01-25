SELECT 
orderid,
OrderDate,
OrderStatus,
Sales,
sum(sales)
--over (partition by orderstatus ORDER BY orderdate
over (partition by orderstatus )
--ROWS BETWEEN CURRENT row AND 2 FOLLOWING) toalsales
--ROWS BETWEEN 2 preceding AND current row) toalsales
--ROWS 2 preceding) toalsales
--ROWS unbounded preceding) toalsales
--ROWS 2 preceding) toalsales


FROM SALES.Orders