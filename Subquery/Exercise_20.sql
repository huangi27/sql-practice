-- Write a query to get 3 maximum salaries.

SELECT EMPLOYEE_ID, SALARY
  FROM Employees T
  WHERE T.salary > (
    SELECT salary 
      FROM Employees e2
      WHERE 3 = (
        SELECT COUNT(DISTINCT salary) 
          FROM Employees e1
          WHERE e1.salary > e2.salary
      )
  );