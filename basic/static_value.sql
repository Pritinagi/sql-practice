SELECT 123 as STATIC_VALUE;
SELECT 'hello' as static_string;
--this is not stored inside the table data it is an add on 
--for example
SELECT id, first_name,
'new_customer' as custmer_type
from customers
