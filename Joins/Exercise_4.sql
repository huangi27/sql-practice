-- Write a query to find the employee id, name (last_name) along with their manager_id and name (last_name).

SELECT e1.EMPLOYEE_ID, e1.LAST_NAME, e1.MANAGER_ID, e2.LAST_NAME
  FROM Employees e1
  JOIN Employees e2
  ON(e1.MANAGER_ID = e2.EMPLOYEE_ID)