USE employees;

select * from employees
where first_name in ('Irena', 'Vidya','Maya')
ORDER BY last_name, first_name;

select * from employees
where last_name like 'E%';

select *
from employees
where hire_date like '199%';

select *
from employees
where birth_date like '%12-25';

select *
from employees
where last_name like '%q%';

select * from employees
where (first_name = 'Irena' OR
       first_name = 'Vidya' OR
       first_name ='Maya')
  AND gender = 'M';


-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.

# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
select CONCAT(first_name, ' ', last_name)
from employees
where last_name like 'e%'
   AND last_name like '%e';

-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.

select *
from employees
where last_name like 'e%e';

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())
select CONCAT(first_name, ' ', last_name) as name, CONCAT('Working at the company for ', DATEDIFF(NOW(), hire_date) / 365, ' years') as years_at_company_message
from employees
where birth_date like '%12-25'
  AND hire_date like '199%'
ORDER BY birth_date, hire_date DESC;

DESCRIBE employees;

select *
from employees
where last_name like '%q%' and last_name not like '%qu%';