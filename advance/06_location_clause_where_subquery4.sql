--find female employees whose salaries are greater 
--than the salaries of any mae employee
SELECT 
EmployeeID,
FirstName,
Salary
from sales.Employees
where gender='m'
and salary > all (select salary from sales.Employees where gender='f')