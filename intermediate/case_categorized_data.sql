--generate a report showing the toal sales for each category 
--high if the sales higher than 50 
--medium if the sales is between 20 and 50 
--low if the sales equal or lower then 20
--sort the result from lowest to highest 

SELECT
categories,
sum(sales) as totalsales
from(

SELECT 
orderid,sales,
CASE 
WHEN sales>50 then 'high'
WHEN sales between 21 and 50 then 'medium'
WHEN sales<=20 then 'low'
END categories
FROM Sales.Orders

)t 
group by categories
order by totalsales desc