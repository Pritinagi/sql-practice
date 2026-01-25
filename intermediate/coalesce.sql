SELECT 
customerid,
FirstName,
LastName,
score,
firstname +' '+ coalesce(LastName,'') as full_name,
COALESCE(score,0)+10 as bonus
FROM Sales.Customers