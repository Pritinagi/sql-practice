SELECT 
orderid,
OrderDate,
OrderStatus,
Sales,
sum(sales)
over (partition by orderstatus) totalsales

--ROWS BETWEEN CURRENT row AND 2 FOLLOWING) toalsales


FROM SALES.Orders
--order by sum(sales)
--over (partition by orderstatus) desc
where productid in(101,102)