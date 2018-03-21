USE employees;

-- Write a query to get the average salary current managers make by gender
-- M 79350.60
-- F 75690.00
SELECT e.gender AS Manager_Gender, AVG(s.salary) AS AVG_Salary
FROM employees AS e
  JOIN salaries AS s
    ON e.emp_no = s.emp_no
  JOIN dept_manager AS dm
    ON e.emp_no = dm.emp_no
WHERE s.to_date >= CURDATE() AND dm.to_date >= CURDATE()
GROUP BY Manager_Gender;

