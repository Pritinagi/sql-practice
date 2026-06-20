SELECT *
FROM sales.dbcustomers
where Country='USA' AND score> 500


SELECT *
FROM sales.dbcustomers
where Country='USA' --[leftmost prefix rule] -- it will use the index 

SELECT *
FROM sales.dbcustomers
where score> 500 --thisquery will not use index

create index idx_dbcustomer_countryscore
on sales.dbcustomers(country, score)


