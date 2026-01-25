--find the highest and lowest sales across all orders and the highest and lowest sales for each product .
--additionally provide details such as order id and order date

SELECT 
orderid,
OrderDate,
productid,
min(sales) over() as min_sales,
max(sales) over() as max_sales,
min(sales) over(partition by productid) as min_sales_p,
max(sales) over(partition by productid) as max_sales_p
FROM Sales.Orders