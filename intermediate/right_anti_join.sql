--get all orders without matching customers 
/*
SELECT *
FROM customers as c 
RIGHT JOIN orders as o
ON c.id=o.customer_id
WHERE c.id is null

*/


--using left join instead of right join for same results 
SELECT * 
FROM orders as o
LEFT JOIN customers as c 
ON o.customer_id = c.id
WHERE c.id is null