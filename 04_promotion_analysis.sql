/* Who was promoted recently? (YearsSinceLastPromotion = 0)
Average years since last promotion by department
Employees who haven’t been promoted in 5+ years
Do promotions correlate with high performance rating? */

-- soln 1
select EmployeeNumber, Department, YearsSinceLastPromotion
from employee
where YearsSinceLastPromotion = 0;

-- soln 2
select department,
avg(YearsSinceLastPromotion) from employee
group by department;

-- soln 3
select EmployeeNumber, Department, YearsSinceLastPromotion
from employee
where YearsSinceLastPromotion >= 5;

-- soln 4
select PerformanceRating,
avg(YearsSinceLastPromotion)
from employee
group by PerformanceRating;
