create nonclustered index idx_dbcustmers_lastname 
on sales.dbcustomers(lastname)

create index idx_dbcustmers_firstname 
on sales.dbcustomers(firstname)


SELECT *
FROM sales.dbcustomers
where firstname='anna'