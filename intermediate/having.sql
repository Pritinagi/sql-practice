SELECT country , 
avg(score) as avg_score
FROM customers 
where score!=0
group by country
having avg(score)>430 

/*
SELECT country , 
sum(score) as total_score
FROM customers 
where score>550
group by country
having sum(score)>200 
*/