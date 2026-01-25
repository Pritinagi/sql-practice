
SELECT 
first_name,
substring(trim(first_name),2,len(first_name))
from customers