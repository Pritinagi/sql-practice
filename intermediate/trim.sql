--trim
SELECT First_Name, 
len(first_name) as len_name,
trim(first_name) as trim_name,
len(trim(first_name) )as len_trim_name
from Customers
--Where First_Name!=TRIM(first_name)