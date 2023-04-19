-- Write a query to display the department name, manager name, and city.

SELECT d.DEPARTMENT_NAME, e.FIRST_NAME, l.city
  FROM Departments d
  INNER JOIN Employees e
  ON(d.MANAGER_ID = e.EMPLOYEE_ID)
  INNER JOIN Locations l
  ON(d.LOCATION_ID = l.location_id)
  