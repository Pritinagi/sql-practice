SELECT 
orderid,
sales,
ntile(1) over(order by sales desc ) onebucket ,
ntile(2) over(order by sales desc ) twbucket ,
ntile(3) over(order by sales desc)threebucket,
ntile(4) over(order by sales desc) fourbucket,
ntile(5) over(order by sales desc) fourbucket
from sales.orders