--find the product that have price higher than the average price of all products 
--03_location_clause_from_subquery
select *
from (

	SELECT 
	Productid,
	price,
	avg(price) over() as avg_price
	from sales.Products

)t
where price >avg_price