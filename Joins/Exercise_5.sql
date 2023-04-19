--Write a query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones'.

SELECT first_name, last_name, HIRE_DATE
  FROM Employees
  WHERE HIRE_DATE > (
  	SELECT HIRE_DATE
      FROM Employees
      WHERE LAST_NAME = 'Ming'
  )