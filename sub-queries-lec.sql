use employees;

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;


select first_name, last_name
from employees
where emp_no = (
    select emp_no
    from (
             select max(salary), emp_no from salaries
             group by emp_no
             order by max(salary) desc limit 1
         )
             AS emp_no
);


select first_name,last_name from employees
where emp_no in (
    select emp_no from salaries
    where salary = (
        select max(salary) from salaries
    )
);

select first_name,last_name, (select max(salary) from salaries) as Salary from employees
where emp_no in (
    select emp_no from salaries
    where salary =(
        select max(salary) from salaries
    )
);

# Homework: Stored Procedures / Union