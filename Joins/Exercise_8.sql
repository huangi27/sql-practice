-- Write a query to display the department ID and name and first name of manager.

SELECT d.DEPARTMENT_ID, d.DEPARTMENT_NAME, e.FIRST_NAME
  FROM Departments d
  INNER JOIN Employees e
  ON(d.MANAGER_ID = e.EMPLOYEE_ID)