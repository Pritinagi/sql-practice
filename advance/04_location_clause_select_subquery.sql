--show the product id, product name, prices and the total number of orders 
SELECT 
p.productid,
p.product,
p.Price,
(select count(*)  from sales.Orders) as total_orders
from sales.Products as p



