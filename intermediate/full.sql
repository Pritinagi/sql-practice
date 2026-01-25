--fulljoin
SELECT 
o.order_id,
o.sales,
c.id,
c.first_name

FROM  orders as o
FUll join customers as c
on  o.customer_id =c.id
