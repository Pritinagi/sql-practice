--find the tottal numbers of customers
/* SELECT
count(*) as total_nmr_orders,
sum(sales) as total_sales,
avg(sales) as avg_sale,
min(sales) as minimu_sales,
max(sales) as maximum_sales
from orders
group by country
*/

--find the tottal numbers of customers
SELECT
count(*) as total_nmr_orders,
sum(score) as total_sales,
avg(score) as avg_sale,
min(score) as minimu_sales,
max(score) as maximum_sales
from customers
group by country

