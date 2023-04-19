-- Write a query to display the job title and average salary of employees.

SELECT j.JOB_TITLE, AVG(e.salary) AS 'average salary'
  FROM Employees e
  INNER JOIN Jobs j
  USING(JOB_ID)
  GROUP BY JOB_TITLE