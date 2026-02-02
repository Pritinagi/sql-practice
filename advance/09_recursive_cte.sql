--generate A sequence of numbers from 1 to 20 

with series as (
--anchor query 
SELECT 1
as mynumber

--recursive query 
union all 
SELECT
mynumber+1
From series
where mynumber <20

)

--main query 
select *
from series

--option (maxrecursion 26)