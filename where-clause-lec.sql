use employees;

select *
from employees
where hire_date = '1985-01-01';

-- get all the employees that were hired in 1985
select *
from employees
where hire_date LIKE '1985%';

select *
from employees
where first_name like 'fer%' and gender = 'F';

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no BETWEEN 10026 AND 10082;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');


SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no BETWEEN 10026 AND 10082 and emp_no not IN (10061, 10064, 10066);

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no IN (10061, 10064, 10066);

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name = 'Baek';

describe  employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no is null;


SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no < 20000
    AND last_name IN ('Herber','Baek')
   OR first_name = 'Shridhar';


SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no < 20000
  AND (
            last_name IN ('Herber','Baek')
        OR first_name = 'Shridhar'
    );