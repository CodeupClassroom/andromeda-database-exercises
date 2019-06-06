USE employees;

# Using the example in the Associative Table Joins section as a guide, write a query that
# shows each department along with the name of the current manager for that department.
#
#
# Department Name    | Department Manager
# --------------------+--------------------
# Customer Service   | Yuchang Weedman
# Development        | Leon DasSarma
# Finance            | Isamu Legleitner
# Human Resources    | Karsten Sigstam
# Marketing          | Vishwani Minakawa
# Production         | Oscar Ghazalie
# Quality Management | Dung Pesch
# Research           | Hilary Kambil
# Sales              | Hauke Zhang


# departments as d, dept_manager as dm, employees as e

select d.dept_name as `Department Name`, CONCAT(e.first_name, ' ', e.last_name) as `Department Manager`
from departments as d
join dept_manager as dm on d.dept_no = dm.dept_no
join employees as e on e.emp_no = dm.emp_no
where dm.to_date > CURDATE()
order by d.dept_name;



# Find the name of all departments currently managed by women.

#
# Department Name | Manager Name
# ----------------+-----------------
# Development     | Leon DasSarma
# Finance         | Isamu Legleitner
# Human Resources | Karsetn Sigstam
# Research        | Hilary Kambil


# employees as e, departments as d, dept_manager as dm

select d.dept_name as `Department Name`, CONCAT(e.first_name, ' ', e.last_name) as `Department Manager`
from departments as d
       join dept_manager as dm on d.dept_no = dm.dept_no
       join employees as e on e.emp_no = dm.emp_no
where dm.to_date > CURDATE() and e.gender = 'f'
order by d.dept_name;




# Find the current titles of employees currently working in the Customer Service department.


# Title              | Count
# -------------------+------
# Assistant Engineer |    68
# Engineer           |   627
# Manager            |     1
# Senior Engineer    |  1790
# Senior Staff       | 11268
# Staff              |  3574
# Technique Leader   |   241

# titles as t, dept_emp, departments as d

select t.title, COUNT(t.title) from titles as t
join dept_emp as de on de.emp_no = t.emp_no
join departments as d on d.dept_no = de.dept_no
where d.dept_name = 'Customer Service' and t.to_date > NOW()
group by t.title;













# Find the current salary of all current managers.


# Department Name    | Name              | Salary
# -------------------+-------------------+-------
# Customer Service   | Yuchang Weedman   |  58745
# Development        | Leon DasSarma     |  74510
# Finance            | Isamu Legleitner  |  83457
# Human Resources    | Karsten Sigstam   |  65400
# Marketing          | Vishwani Minakawa | 106491
# Production         | Oscar Ghazalie    |  56654
# Quality Management | Dung Pesch        |  72876
# Research           | Hilary Kambil     |  79393
# Sales              | Hauke Zhang       | 101987

# same as first problem along with salaries as s

select d.dept_name as `Department Name`,
       CONCAT(e.first_name, ' ', e.last_name) as `Department Manager`,
       s.salary
from departments as d
       join dept_manager as dm on d.dept_no = dm.dept_no
       join employees as e on e.emp_no = dm.emp_no
       join salaries as s on s.emp_no = e.emp_no
where dm.to_date > CURDATE() and s.to_date > CURDATE()
order by d.dept_name;





















select d.dept_name as `Department Name`,
       CONCAT(e.first_name, ' ', e.last_name) as `Department Manager`,
       s.salary
from departments as d
            join dept_manager as dm on d.dept_no = dm.dept_no
            join employees as e on e.emp_no = dm.emp_no
            join salaries as s on s.emp_no = e.emp_no
where dm.to_date > CURDATE() and s.to_date > NOW()
order by d.dept_name;