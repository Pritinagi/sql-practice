SELECT *
FROM customers as c
LEFT JOIN orders as o
ON c.id = o.customer_id
WHERE o.customer_id is NULL