--List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.
SELECT * FROM public.employees_dept_names
WHERE dept_name = 'Sales'