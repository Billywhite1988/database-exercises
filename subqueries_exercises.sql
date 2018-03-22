use EMPLOYEES;


#Find all the employees with the same hire date as employee 101010 using a sub-query.
#69 Rows

SELECT * FROM employees
WHERE hire_date IN (
  select hire_date FROM employees
  WHERE emp_no = 101010
);