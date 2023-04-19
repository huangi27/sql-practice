// Write a query to display the employee ID, first name, last name, and department names of all employees.

SELECT EMPLOYEE_ID, FIRST_NAME, last_name, DEPARTMENT_NAME
  FROM Employees
  INNER JOIN Departments
  USING(DEPARTMENT_ID);