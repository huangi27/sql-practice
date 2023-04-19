-- Write a query to find the name (first_name, last name), department ID and name of all the employees.

 
SELECT first_name, last_name, DEPARTMENT_ID, DEPARTMENT_NAME
  FROM Employees
  INNER JOIN Departments
  USING(DEPARTMENT_ID)