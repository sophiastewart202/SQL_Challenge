--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

SELECT * FROM public.employees_dept_names
WHERE dept_name = 'Sales' OR dept_name = 'Development'