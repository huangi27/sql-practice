-- Write a query to find the 5th maximum salary in the employees table.

SELECT DISTINCT salary
  FROM Employees e2
  WHERE 5 = (
    SELECT COUNT(DISTINCT salary)
      FROM Employees e1
      WHERE salary >= e2.salary
    )