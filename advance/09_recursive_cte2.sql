--show the employee hierarchy by displaying eeah emloyees level within the orginization



with CTE_emp_hierarchy as 
(
--anchor query 
SELECT 
EmployeeID,
FirstName,
ManagerID,
1 as Level --static value 
from sales.Employees
where managerid is null


union all 

--recursive query 
select 
e.EmployeeID,
e.FirstName,
e.ManagerID,
 level +1
from sales.Employees as e
inner join CTE_emp_hierarchy ceh 
on e.ManagerID=ceh.EmployeeID

)

--main query 
select *
from CTE_emp_hierarchy