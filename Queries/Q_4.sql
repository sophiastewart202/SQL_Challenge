--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
CREATE VIEW employees_dept_names AS 

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp 
ON dept_emp.emp_no = e.emp_no
LEFT JOIN departments d
ON d.dept_no = dept_emp.dept_no