USE employees;

show DATABASES;

DESCRIBE salary;
SELECT * from departments;
#================================= RELATIONSHIP DRILLS

-- concat the max salaries of the first two employees
DESCRIBE salary;
SELECT * from departments;

SELECT CONCAT_WS(' '
(SELECT MAX(salary)
FROM salaries
WHERE emp_no = 10001),
SELECT MAX(salary)
FROM salaries
WHERE emp_no = 10002);



-- get current manager name of Sales department (use subqueries)

DESCRIBE dept_manager;
SELECT * from departments;

SELECT emp_no
FROM dept_manager
WHERE DEPT_NO IN (SELECT dept_no FROM departments WHERE dept_name = 'Sales')
AND to_date > NOW();

-- get all senior engineers in customer service department

DESCRIBE titles;
SELECT * from departments;

SELECT * FROM titles
WHERE title = 'Senior Engineer' AND emp_no IN (
SELECT emp_no
FROM dept_emp
WHERE dept_no IN (

SELECT dept_no
FROM departments
WHERE dept_name = 'Customer Service'
  )
);

-- get all first and last names of current Sales department employees

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Employees Name'
FROM employees e
JOIN departments d ON e.dept_no = d.dept_no AND dept_name = 'Sales' AND de.to_date >= CURDATE()
ORDER BY d.dept_name;

-- find first name and last of all department managers



-- get the name of the employee with the highest salary

