--find the total sales for each product 
--additionaly provide details such order id, oder_date
SELECT 
OrderID,
OrderDate,
ProductID,
sales,
--SUM(sales) over() as totl_sales,
--SUM(sales) over(partition by productid) as totl_sales_pid,
--SUM(sales) over(partition by productid order by orderdate) as totl_sales_orderid,
--SUM(sales) over(partition by productid ,orderstatus) as totl_sales_os,



RANK() over( order by sales desc) as ranks

from sales.orders