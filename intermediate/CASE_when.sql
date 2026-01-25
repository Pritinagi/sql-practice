/*SELECT
customerid,
COALESCE(score,999999)
FROM Sales.Customers
order by COALESCE(score,999999)*/


SELECT
customerid,
Score
FROM Sales.Customers
order by CASE WHEN Score is null then 1 else 0 end, score