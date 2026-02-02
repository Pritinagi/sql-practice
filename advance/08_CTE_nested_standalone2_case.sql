--step -1 : find the total sales per customers(standalone CTE) 


with CTE_total_sales as
(
SELECT 
	customerid,
	sum(sales) as totalsales
from sales.Orders
group by CustomerID
),
--step 2: Find the last order date for eachc customer(multiple cte)
CTE_last_order as 
(

SELECT 
customerid,
max(orderdate) as last_order_date
from sales.Orders
group by CustomerID

) ,
--step 3-- rank customer basedon total salesper customers (nested cte)
CTE_customer_rank as 
 (

SELECT 
customerid,
rank() over(order by totalsales desc) as ranking 
FROM CTE_total_sales
 ),
 --SELECT * from CTE_customer_rank
 
--step4 -- segment customers baased on their total sales 
CTE_customer_segment as 
(
SELECT 
customerid,
case when totalsales>100  then 'high'
	when totalsales> 80 then 'medium'
	else 'low'
end customersegments
from CTE_total_sales

)

--SELECT * from CTE_customer_segment


-- main query 

SELECT 
c.customerid,
c.firstname,
c.lastname,
cts.totalsales,
clo.last_order_date,
ccr.ranking,
ccs.customersegments
from sales.Customers c
left join CTE_total_sales as cts
on cts.CustomerID=c.CustomerID
left join CTE_last_order as clo
on clo.CustomerID=c.CustomerID
left join CTE_customer_rank as ccr
on ccr.CustomerID=c.CustomerID

left join CTE_customer_segment as ccs
on ccs.CustomerID = c.CustomerID

