-- Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London.

SELECT first_name, last_name, job_id, DEPARTMENT_ID, DEPARTMENT_NAME
  FROM Employees
  INNER JOIN Departments
  USING(DEPARTMENT_ID)
  WHERE DEPARTMENT_ID IN(
    SELECT DEPARTMENT_ID
      FROM Employees
      INNER JOIN Departments USING(DEPARTMENT_ID)
      WHERE LOCATION_ID IN (
        SELECT LOCATION_ID 
          FROM Departments
          INNER JOIN Locations
          USING (location_id)
          WHERE country_id IN(
            SELECT country_id
              FROM Locations
              INNER JOIN Countries
              USING(country_id)
              WHERE country_name = 'United State'
          )
      )
  )