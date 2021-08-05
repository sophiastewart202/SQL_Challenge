-- List employee number, last name, first name, sex, and salary
CREATE VIEW emp_salary AS

SELECT e.emp_no, e.last_name, e.first_name, e.sex, salaries.salary
FROM employees e
JOIN salaries 
ON salaries.emp_id = e.emp_no
