/* 🔹 What’s the overall attrition rate?
🔹 Which department has the highest attrition?
🔹 Attrition rate by gender?
🔹 Who got promoted recently?
🔹 Attrition rate by job role?
🔹 Are younger employees more likely to leave? (Use age brackets)*/

-- Soln 1
Select count(*) AS total_employees,
sum(CASE WHEN attrition = 'yes' THEN 1 ELSE 0 END) AS attritions,
100*sum(case when attrition = 'yes' then 1 else 0 end)/count(*) AS attrition_rate
from employee;

-- Soln 2
select department,
count(*) as total_employees,
sum(CASE WHEN attrition = 'yes' THEN 1 ELSE 0 END) AS attritions,
100*sum(case when attrition = 'yes' then 1 else 0 end)/count(*) AS attrition_rate
from employee
group by department
order by attrition_rate Desc

-- Soln 3
select gender,
sum(CASE WHEN attrition = 'yes' THEN 1 ELSE 0 END) as attritions,
100*sum(case when attrition = 'yes' then 1 else 0 end )/count(*) as attrition_rate
from employee
group by gender
order by attrition_rate Desc;

-- Soln 4
select employeenumber, department, yearssincelastpromotion
from employee
where YearsSinceLastPromotion = 0
order by department;

-- Soln 5
select jobrole,
sum(CASE WHEN attrition = 'yes' THEN 1 ELSE 0 END) as attritions,
100*sum(case when attrition = 'yes' then 1 else 0 end )/count(*) as attrition_rate
from employee
group by jobrole
order by attrition_rate Desc;

-- Soln 6
-- 60-48; 48-36; 36-24; 24-12	
select 
	age_bracket,  
	count(*) as total_employees,
	sum(case when Attrition = 'Yes' then 1 else 0 end) as attrited_employees,
	100 * sum(case when Attrition = 'Yes' then 1 else 0 end)/count(*) as attrition_rate
from (
select *,
case when age < 24 then '<24'
	when age between 24 and 36 then '24-36'
	when age between 36 and 48 then '36-48'
    else '>48' end as age_bracket
    from employee) as age
group by age_bracket
order by age_bracket;