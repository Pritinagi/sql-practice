--without inner join 
SELECT *
FROM customers as c
FULL JOIN orders as o
on c.id = o.customer_id
where c.id = o.customer_id

SELECT *
FROM customers as c
LEFT JOIN orders as o
on c.id = o.customer_id
where o.customer_id IS NOT NULL
