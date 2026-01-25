SELECT  
c.id,
c.first_name,
o.order_id,
o.sales
FROM customers as c
left join orders as o
on c.id= o.customer_id