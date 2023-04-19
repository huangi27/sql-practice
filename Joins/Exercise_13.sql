--Write a query to display the first name, last name, hire date, salary of the manager for all managers whose experience is more than 15 years.

SELECT FIRST_NAME, LAST_NAME, HIRE_DATE, SALARY
  FROM Departments d
  INNER JOIN Employees e
  ON(d.MANAGER_ID = e.EMPLOYEE_ID)
  WHERE (DATEDIFF(NOW(), hire_date))/365 > 15