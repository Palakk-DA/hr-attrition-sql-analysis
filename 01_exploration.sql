-- Show the structure/schema of the table
describe employee;

-- View dataset
select * from employee;

-- View sample dataset
select * from employee limit 10; -- or 100, 500 etc

-- Count total employees
select count(*) from employee;

-- List all column names
show columns from employee;

-- Distinct values from key columns
select distinct Department from employee;
select distinct JobRole from employee;
select distinct attrition from employee;

-- Check for NULLs in key columns
select 
sum(case when monthlyincome IS NULL then 1 else 0 end) As nullincome,
sum(case when department is null then 1 else 0 end) as nulldept
from employee;