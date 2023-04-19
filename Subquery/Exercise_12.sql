//  Write a query to find the name (first_name, last_name) of the employees who are not supervisors.

SELECT first_name, last_name
  FROM Employees
  WHERE EMPLOYEE_ID NOT IN(
    SELECT MANAGER_ID FROM Employees
  );