/* 
🔹 Top 3 highest earners in each department (RANK)
🔹 Running total of income by department (SUM OVER)
🔹 Employee’s income compared to department average 
🔹 Percent rank or dense rank of employees by income
🔹 Avg attrition rate by department (optional, use window) */

-- soln 1
select *
From(
select Department, employeenumber, MonthlyIncome,
row_number() over (partition by Department order by MonthlyIncome desc) as top_earner 
-- or use rank() instead of row_number() for the same result
from employee) AS ranked
where top_earner <= 3
order by department;

-- soln 2
select department, monthlyincome,
sum(monthlyincome) over (partition by department) as income_total
from employee;

-- soln 3
select monthlyincome, dept_avg_salary,
Case when monthlyincome > dept_avg_salary then 'More'
	when monthlyincome < dept_avg_salary then 'Less'
    Else 'Same' END AS compare 
    from (
Select department, monthlyincome,
AVG(monthlyincome) over (partition by department) as dept_avg_salary
From employee) as sub
order by monthlyincome;

-- soln 4
select employeenumber, department, monthlyincome,
percent_rank() over (order by monthlyincome) as perc_rank_salary,
dense_rank() over (order by monthlyincome) as dense_rank_salary
from employee
order by monthlyincome desc;

-- soln 5
-- Using normal aggregation function:
select department,
avg(case when attrition = 'yes' then 1 else 0 end) as Avg_attrition
from employee
group by department
order by department;

-- using window function:
select department,
avg(case when attrition = 'yes' then 1 else 0 end) over (partition by department) as Avg_attrition
from employee;