--show all customer details and find the total orders of each customers 
select *,
		(select 
		count(*)
		from sales.orders o
		where o.customerid = c.CustomerID) t_orders
from sales.Customers c





/* 
-- this will shhow total orders counting every order with no window partition or group by
select *,
(select 
count(*) 
from sales.orders)as t_orders 
from sales.Customers;
*/