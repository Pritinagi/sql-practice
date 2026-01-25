--find the average scores of customers and treat nulls as 0 
--and additional provide details such cusomer id and lastname
SELECT 
customerid,
lastname,
score,
case 
when score is null then 0
else score
END scoreclean,
avg(case 
when score is null then 0
else score
END ) over() avgcustomerclean,
avg(Score) over() avgcustomer
from Sales.Customers