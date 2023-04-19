-- Write a query to list the department ID and name of all the departments where no employee is working.

SELECT DEPARTMENT_ID, DEPARTMENT_NAME
  FROM(
  SELECT *
    FROM Departments
    LEFT JOIN Employees
    USING(DEPARTMENT_ID)
  )T
  WHERE EMPLOYEE_ID IS NULL