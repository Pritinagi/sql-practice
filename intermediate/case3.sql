--retrive customer details with abbreviated country code
/* SELECT 
customerid,
firstname,
lastname,
country,
CASE when Country='Germany' then 'DE'
	 when Country='USA' then 'US'
	 ELSE 'n/a'
END
FROM Sales.Customers */


--retrive customer details with abbreviated country code
SELECT 
customerid,
firstname,
lastname,
country,
CASE Country
when 'Germany' then 'DE'
	 when 'USA' then 'US'
	 ELSE 'n/a'
END
FROM Sales.Customers