show DATABASES;

describe dept_manager;
select * from departments;

#Name of the current manager for that department.

SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name
) AS 'Department Manager'
FROM employees e
  JOIN dept_manager de ON  de.emp_no = e.emp_no
  JOIN departments d ON  d.dept_no = de.dept_no
WHERE de.to_date >= curdate()
ORDER BY d.dept_name;

#Find the name of all departments currently managed by women.

SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name
) AS 'Department Manager'
FROM employees e
  JOIN dept_manager de ON  de.emp_no = e.emp_no
  JOIN departments d ON  d.dept_no = de.dept_no
WHERE e. gender = 'F' AND de.to_date >= curdate()
ORDER BY d.dept_name;

#Find the current titles of employees currently working in the Customer Service department.
DESCRIBE titles;
DESCRIBE departments;

SELECT t.title, COUNT(e.emp_no)
FROM titles t
  JOIN employees e ON e.emp_no = t.emp_no
  JOIN dept_emp de ON de.emp_no = e.emp_no
  JOIN departments d ON d.dept_no = de.dept_no
WHERE t.to_date >= CURDATE() AND d.dept_name = 'Customer Service' AND de.to_date >= CURDATE()
GROUP BY t.title;

#Find the current salary of all current managers.

DESCRIBE salaries;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary
FROM employees e
  JOIN dept_manager dm ON dm.emp_no = e.emp_no
  JOIN salaries s ON s.emp_no = e.emp_no
  JOIN departments d ON d.dept_no = dm.dept_no
WHERE dm.to_date >= CURDATE() AND s.to_date >= CURDATE()
ORDER BY d.dept_name;

# Bonus -- Find the names of all current employees, their department name, and their current manager's name

SELECT concat(e.first_name, " ", e.last_name) AS "Employee Name", departments.dept_name AS "Department Name", concat(managers.first_name, " ", managers.last_name) AS "Manager Name"
FROM employees AS e
  JOIN dept_emp ON e.emp_no = dept_emp.emp_no
  JOIN departments ON dept_emp.dept_no = departments.dept_no
  JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
  JOIN employees AS managers ON dept_manager.emp_no = managers.emp_no
WHERE dept_emp.to_date > curdate()
      AND dept_manager.to_date > curdate()