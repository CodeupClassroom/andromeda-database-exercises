# =========== GROUPING

# Grouping by a single column

SELECT gender FROM employees;

SELECT DISTINCT gender from employees;

SELECT gender FROM employees
GROUP BY gender;


# Grouping by multiple columns

SELECT first_name, last_name FROM employees
GROUP BY first_name, last_name;

SELECT DISTINCT first_name, last_name FROM employees;


# Return the longest first_name
SELECT first_name, LENGTH(first_name) FROM employees
GROUP BY first_name
ORDER BY LENGTH(first_name) DESC, first_name
LIMIT 1;

SELECT MAX(LENGTH(first_name)) from employees;


# =========== AGGREGATE FUNCTIONS

# COUNT
# Find total number of employees
# SELECT COUNT(*) FROM employees;

# Aggregating with group by
# Find total number of female and male employees
# SELECT gender, COUNT(*) FROM employees
# GROUP BY gender;

# MIN and MAX
# Select the first and last hire date for each first name

SELECT first_name, MIN(hire_date) as 'First Hired', MAX(hire_date) as 'Last Hired' FROM employees
GROUP BY first_name;


# GROUP BY multiple columns
# Find how many first and last name duplicates for each name combination
SELECT first_name, last_name, COUNT(*) FROM employees
GROUP BY first_name, last_name;


# Find the total number of employees with the same first name for each name
# (sort in various ways with ORDER BY)
SELECT first_name, COUNT(*) FROM employees
GROUP BY first_name
ORDER BY COUNT(*) DESC;


DESCRIBE salaries;

# Find the minimum, maximum, average, and total number of salaries
SELECT emp_no, COUNT(salary), MIN(salary), MAX(salary), AVG(salary), SUM(salary) FROM salaries;

# Find the min, max, avg, total, and count of each employee's salaries
SELECT emp_no, COUNT(salary), MIN(salary), MAX(salary), AVG(salary), SUM(salary) FROM salaries
GROUP BY emp_no
ORDER BY MIN(salary);








# get the average age of each first name

select ROUND(DATEDIFF(NOW(), birth_date) / 365) from employees
GROUP BY emp_no;

select first_name, AVG from employees
group by first_name;



















