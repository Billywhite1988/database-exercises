USE employees;
#Return 10 employees in a result set named 'full_name' in the format of 'lastname, firstname' for each employee.

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees AS emp
GROUP BY full_name
LIMIT 10;

#Add the date of birth for each employee as 'DOB' to the query.

SELECT CONCAT(e.emp_no, ' - ', e.last_name, e.first_name) AS full_name,  e.birth_date AS DOB
FROM employees e
LIMIT 10;