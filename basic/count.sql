-- find the total score and total number of customers for each country SELECT 
select country, sum( score) as total_score, count(id) as totalnumber
FROM customers
group by country 