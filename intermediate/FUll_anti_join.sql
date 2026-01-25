SELECT *
FROM customers as c
FULL JOIN orders as o 
on c.id= o.customer_id
WHERE c.id is null 
or o.customer_id is null