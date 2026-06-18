SELECT *
--into sales.dbcustomers
from sales.customers
where customerid=1



create clustered index idx_dbcustmers_customerid 
on sales.dbcustomers(customerid)

/*
create clustered index idx_dbcustmers_firstname 
on sales.dbcustomers(firstname)

DROP INDEX idx_dbcustmers_customerid on sales.dbcustomers

*/



SELECT *
from sales.dbcustomers
where lastname='brown'