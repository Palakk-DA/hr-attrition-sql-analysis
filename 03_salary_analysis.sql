/*
1🔹 What’s the average salary by department and job role? 
2🔹 Which employees are top earners in their departments?
3🔹 Average monthly income by gender
4🔹 How does salary vary by education?
5🔹 Compare each employee’s salary to department average (use CASE logic + window function)
6🔹 Highest-paying job roles company-wide
*/

-- soln 1
Select department, jobrole,
avg(monthlyincome) AS average_salary
From employee
group by department, JobRole
order by average_salary desc;

-- soln 2
select * 
from (
Select employeenumber, department, jobrole, monthlyincome,
RANK () over (partition by department order by monthlyincome desc) AS income_rank
from employee
) AS ranked_employee
where income_rank <=3
order by department, income_rank;

-- soln 3
select gender,
avg(monthlyincome) AS average_salary
from employee
group by gender
order by average_salary DESC;

-- soln 4
select Education,
avg (monthlyincome) as avg_income
from employee
Group by Education
order by avg_income;

-- soln 5
select EmployeeNumber, Department, monthlyincome, dept_avg_salary,
Case when monthlyincome > dept_avg_salary then 'More'
	when monthlyincome < dept_avg_salary then 'Less'
    Else 'Same' END AS compare 
    from (
Select EmployeeNumber, department, monthlyincome,
AVG(monthlyincome) over (partition by department) as dept_avg_salary
From employee) as sub
order by EmployeeNumber, Department;

-- soln 6
select *
from(
select jobrole, monthlyincome,
rank() over (partition by jobrole order by monthlyincome desc) as pay_per_role
from employee) as dt
where pay_per_role <=1;
