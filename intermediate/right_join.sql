SELECT 
c.id,
c.first_name,
o.order_id,
o.sales
FROM customers as c
right join orders as o
on c.id= o.customer_id


--using only left join but result as rigt join 
/*
SELECT 
o.order_id,
o.sales,
c.id,
c.first_name

FROM  orders as o
left join customers as c
on  o.customer_id =c.id


*/