--find the product that  have a price hugher than the avergae price of the all product 
 
SELECT 
product,
price
from sales.Products
where price>(select avg(price) from sales.Products)