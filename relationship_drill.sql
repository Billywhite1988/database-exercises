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
-- get all first and last names of current Sales department employees
-- get the name of the employee with the highest salary

