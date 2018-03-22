use EMPLOYEES;


#Find all the employees with the same hire date as employee 101010 using a sub-query.
#69 Rows

SELECT * FROM employees
WHERE hire_date IN (
  select hire_date FROM employees
  WHERE emp_no = 101010
);

#Find all the titles held by all employees with the first name Aamod.
#314 total titles, 6 unique titles

SELECT title from titles
WHERE emp_no IN (
  SELECT emp_no FROM employees
  WHERE first_name = 'Aamod'
);

#Find all the current department managers that are female.

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
  SELECT EMP_NO from DEPT_MANAGER
  WHERE to_date > CURDATE()
  AND gender = 'F'
);

