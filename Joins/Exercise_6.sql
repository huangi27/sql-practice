-- Write a query to get the department name and number of employees in the department.

SELECT DEPARTMENT_NAME, COUNT(EMPLOYEE_ID) sum
  FROM Employees
  INNER JOIN Departments
  USING(DEPARTMENT_ID)
  GROUP BY DEPARTMENT_ID
  ORDER BY sum
  