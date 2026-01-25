/*
UPDATE customers
SET score = 0,
country = 'UK'
where id=10
SELECT * FROM customers 
where id= 10
*/


UPDATE customers
SET score =0
where score is NULL
SELECT * FROM customers
where score IS NULL