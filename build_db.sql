  
CREATE TABLE IF NOT EXISTS employees(
  EMPLOYEE_ID integer(5),
  FIRST_NAME varchar(10),
  LAST_NAME varchar(10),
  HIRE_DATE DATE,
  JOB_ID varchar(5),
  SALARY integer(1000000),
  MANAGER_ID integer(5),
  DEPARTMENT_ID integer(5)
);

CREATE TABLE IF NOT EXISTS departments(
  DEPARTMENT_ID integer(5),
  DEPARTMENT_NAME varchar(20),
  MANAGER_ID integer(5),
  LOCATION_ID integer(5)
);

CREATE TABLE IF NOT EXISTS locations(
  location_id integer(5),
  street_address varchar(30),
  city varchar(10),
  country_id integer(5)
);

CREATE TABLE IF NOT EXISTS jobs(
  JOB_ID varchar(5),
  JOB_TITLE varchar(30),
  MIN_SALARY integer(1000000),
  MAX_SALARY integer(1000000)
);

CREATE TABLE IF NOT EXISTS Job_history(
  employee_id integer(5),
  start_date DATE,
  end_date DATE,
  job_id varchar(5),
  department_id integer(5)
);

INSERT INTO employees VALUES(100, 'Steven', 'King', '1987-06-17', 'AD_PRES', 24000, 0, 90);
INSERT INTO employees VALUES(101, 'Neena', 'Kochhar', '1987-06-18', 'AD_VP', 17000, 100, 90);
INSERT INTO employees VALUES(102, 'Lex', 'De Haan', '1987-06-19', 'AD_VP', 17000, 100, 90);
INSERT INTO employees VALUES(103, 'Alexander', 'Hunold', '1987-06-20', 'IT_PROG', 9000, 102, 60);
INSERT INTO employees VALUES(104, 'Bruce', 'Ernst', '1987-06-21', 'IT_PROG', 6000, 103, 60);
INSERT INTO employees VALUES(105, 'David', 'Austin', '1987-06-22', 'IT_PROG', 6000, 103, 60);
INSERT INTO employees VALUES(106, 'Valli', 'Pataballa', '1987-06-23', 'IT_PROG', 4800, 103, 60);
INSERT INTO employees VALUES(107, 'Diana', 'Lorentz', '1987-06-24', 'IT_PROG', 4800, 103, 60);
INSERT INTO employees VALUES(108, 'Nancy', 'Greenberg', '1987-06-25', 'FI_MGR', 4200, 101, 100);
INSERT INTO employees VALUES(109, 'Daniel', 'Faviet', '1987-06-26', 'FI_MGR', 12000, 108, 100);

INSERT INTO Departments VALUES(90, 'Executive', 100, 1700);
INSERT INTO Departments VALUES(60, 'IT', 103, 1400);
INSERT INTO Departments VALUES(100, 'Finance', 108, 1700);
INSERT INTO Departments VALUES(140, 'Control And Credit', 0, 1700);

INSERT INTO Locations VALUES(1400, '2014 Jabberwocky Rd', 'Southlake', 'US');
INSERT INTO Locations VALUES(1700, '2004 Charade Rd', 'Seattle', 'US');
INSERT INTO Locations VALUES(1800, '147 Spadina Ave', 'Toronto', 'CA');

INSERT INTO jobs VALUES('AD_PRES', 'President', 20000, 40000);
INSERT INTO jobs VALUES('AD_VP', 'Administration Vice President', 15000, 30000);
INSERT INTO jobs VALUES('IT_PROG', 'Programmer', 4000, 10000);
INSERT INTO jobs VALUES('FI_MGR', 'Finance Manager', 8200, 16000);

INSERT INTO Job_history VALUES(101, '1989-09-21', '1993-10-27', 'AD_PRES', 60);
INSERT INTO Job_history VALUES(104, '1996-02-17', '1999-12-19', 'AD_VP', 90);
INSERT INTO Job_history VALUES(101, '1993-10-28', '1997-03-15', 'FI_MGR', 60);