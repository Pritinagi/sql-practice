--average 
--find the average salesacross orders and the average sales for each product 
--additionally provide details such as order id and order date 

SELECT 
OrderID,
OrderDate,
productid,
avg(sales) over (partition by productid) as avg_product_sale,
avg(coalesce(sales,0)) over () as average_sale
from sales.orders