// Write a query to get 3 minimum salaries.

SELECT * 
  FROM Employees
  WHERE SALARY <= (
    SELECT DISTINCT SALARY
    FROM Employees e2
    WHERE 3 = (
      SELECT COUNT(DISTINCT salary)
      FROM Employees e1
      WHERE e1.salary <= e2.salary
    )
  );