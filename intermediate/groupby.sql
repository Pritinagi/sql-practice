SELECT 
country, sum(score) as total_score
FROM customers
group by country 