--find the deviation of each sales from the minimum and maximum sales amounts
SELECT 
orderid,
OrderDate,
productid,
min(sales) over() as min_sales,
max(sales) over() as max_sales,
sales- min(sales) over() deviationfrommin,
max(sales) over() -sales deviationmax
FROM Sales.Orders