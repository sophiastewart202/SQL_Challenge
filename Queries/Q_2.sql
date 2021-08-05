--List first name, last name, and hire date for employees who were hired in 1986
CREATE VIEW emp_1986 AS 

SELECT first_name, last_name, hire_date
FROM employees
WHERE CAST(hire_date AS VARCHAR) LIKE '1986%'
ORDER BY hire_date;
