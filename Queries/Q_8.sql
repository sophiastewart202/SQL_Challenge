-- In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
CREATE VIEW last_name_count AS 

SELECT e.last_name, count(e.last_name) AS count
FROM employees e
GROUP BY e.last_name
ORDER BY count DESC
