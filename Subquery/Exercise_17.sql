// Write a query to find the 4th minimum salary in the employees table.


SELECT DISTINCT salary
  FROM Employees e1
  WHERE 4 = (
    SELECT COUNT(DISTINCT salary)+1
      FROM Employees e2
      WHERE e2.salary < e1.salary
  );