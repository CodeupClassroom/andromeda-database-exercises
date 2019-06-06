use employees;



select *
from employees where hire_date = (select hire_date
from employees
where emp_no = 101010);

describe titles;

select title from titles
WHERE emp_no in(
select emp_no from employees
where first_name = 'Aamod');


select dept_name from departments
where dept_no in (
    select dept_no from dept_manager
    where to_date > curdate() and emp_no in (
        select emp_no from employees
        where gender= 'f'
    )
);

select dept_name from departments where dept_no in (select dept_no from dept_manager where to_date > curdate() and emp_no in (
    select emp_no from employees where gender = 'f'
    ));


#
# SELECT departments.dept_name
# FROM departments
# WHERE dept_no IN (
#     SELECT dept_no
#     FROM dept_manager
#     WHERE emp_no IN (
#         SELECT emp_no
#         FROM employees
#         WHERE gender = 'F'
#           AND dept_manager.to_date > curdate()
#         )
# );