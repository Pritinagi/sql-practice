--show the employees who have the higest saleries

select *
from (SELECT 
*,
max(salary) over() highest_saley,
min(salary) over() as lowest 
from Sales.Employees
)t
where salary= highest_saley or Salary=lowest