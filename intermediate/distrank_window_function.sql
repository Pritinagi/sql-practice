--fin th products that fall within highest 40% of the price 
select *,
concat(distrank*100, '%') distrankss
from (select *,
--percent_rank() over(order by price desc) as distrank 
cume_dist() over(order by price desc) as distrank 
from sales.Products)t
where distrank<=0.4