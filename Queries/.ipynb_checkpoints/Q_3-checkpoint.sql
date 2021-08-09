--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

CREATE VIEW all_managers AS 

SELECT dept_manager.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name 
FROM employees e
JOIN dept_manager 
ON dept_manager.emp_no = e.emp_no
LEFT JOIN departments d
ON d.dept_no = dept_manager.dept_no