-- ORDER BY LECTURE
-- see curriculum



DESCRIBE employees;




SELECT first_name, last_name FROM employees
ORDER BY first_name DESC, last_name;


SELECT * FROM employees
ORDER BY first_name, birth_date;


SELECT * FROM employees LIMIT 10 OFFSET 1;













-- first employee hired

SELECT * FROM employees
ORDER BY hire_date;

-- last employee hired
SELECT * FROM employees
ORDER BY hire_date DESC;

-- first female employee hired
SELECT * FROM employees
ORDER BY gender DESC, hire_date;

-- highest current salary
SELECT * FROM salaries
ORDER BY to_date DESC, salary;



