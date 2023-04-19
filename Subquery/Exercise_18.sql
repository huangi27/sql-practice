// Write a query to select last 10 records from a table.


SELECT *
  FROM(
    SELECT * 
    FROM Employees
    ORDER BY EMPLOYEE_ID desc
    LIMIT 5
  )T
  ORDER BY EMPLOYEE_ID;