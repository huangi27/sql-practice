-- Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job.

SELECT j.JOB_TITLE, e.FIRST_NAME, (e.SALARY - j.MIN_SALARY) AS 'salary-min'
  FROM Employees e
  NATURAL JOIN Jobs j
  