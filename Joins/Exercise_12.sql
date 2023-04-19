--Write a query to display the job history that were done by any employee who is currently drawing more than 10000 of salary.

SELECT jh.*
  FROM Job_history jh
  INNER JOIN Employees e
  USING(employee_id)
  WHERE e.salary > 10000