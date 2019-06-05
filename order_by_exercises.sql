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

select *
from employees
where last_name like 'e%'
   OR last_name like '%e';

-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.

select *
from employees
where last_name like 'e%e';


select *
from employees
where birth_date like '%12-25'
  AND hire_date like '199%'
ORDER BY birth_date, hire_date DESC;

select *
from employees
where last_name like '%q%' and last_name not like '%qu%';