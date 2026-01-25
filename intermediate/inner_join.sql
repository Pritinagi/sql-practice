--inner join
SELECT id, first_name, order_id , sales
FROM customers
inner join orders
on id=customer_id
