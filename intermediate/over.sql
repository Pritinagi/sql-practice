/*
--find the total sales accross all orders
SELECT 
SUM(sales) totl_sales
from sales.orders


--find the total sales fro eac product orders
SELECT 
productid,
SUM(sales) total_sales
from sales.orders
group by ProductID

*/
--find the total sales for each product 
--additionaly provide details such order id, oder_date
SELECT 
OrderID,
OrderDate,
ProductID,
SUM(sales) over(partition by productid) as totl_sales

from sales.orders
