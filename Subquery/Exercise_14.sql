// Write a query to display the employee ID, first name, last name, salary of all employees whose salary is above average for their departments.

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, salary
FROM(
  SELECT * 
  FROM Employees
  INNER JOIN(
    SELECT department_id, AVG(salary) average FROM employees GROUP BY DEPARTMENT_ID
  )T
  USING(DEPARTMENT_ID)
)
WHERE salary > average;