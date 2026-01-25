--segment all orders into 3 categories high , medium, low sales
SELECT *,
case
when grouped = 1 then 'high'
when grouped = 2 then 'medium'
when grouped = 3 then 'low'
end salessegmentation
from(select
orderid,
sales,
ntile(3) over (order by sales desc) as grouped
from sales.Orders)t