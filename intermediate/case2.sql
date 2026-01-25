--reetrive employee details with gender displayed as full text
SELECT 
EmployeeID,
FirstName,
LastName,
Gender,
CASE when gender ='f' then 'female'
	 when gender ='m' then 'male'
	 ELSE 'not available'
end genderfulltext
FROM Sales.Employees