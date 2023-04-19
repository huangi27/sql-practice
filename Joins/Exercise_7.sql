-- Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90 from job history.

SELECT employee_id, JOB_TITLE, (end_date - start_date) num_of_days
  FROM Job_history
  INNER JOIN Jobs
  USING (JOB_ID)
  WHERE department_id = 60
  