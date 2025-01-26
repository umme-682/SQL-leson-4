-- create the DEPARTMENT table if it does not exist
CREATE TABLE IF NOT EXISTS DEPARTMENT (EMPLOYEE_ID TEXT, NAME TEXT, DEPARTMENT_ID TEXT, MANAGER_ID TEXT, SALARY REAL);

-- insert sample data into the DEPARTMENT table 
INSERT INTO DEPARTMENT (EMPLOYEE_ID, NAME, DEPARTMENT_ID, MANAGER_ID, SALARY) VALUES
('100', 'STEVEN KING', '90', '100', 24000),
('101', 'NEENA KOCCHAR', '90', '100', 17000),
('102', 'LEX DEHAAN', '90', '102', 9000),
('103', 'BRUCE LEE', '60', '103', 4800),
('104', 'DIANA WILLS', '60', '103', 25000),
('105', 'VALLI PATOR', '50', '100', 4200),
('1973', 'LUV HAMI', '60', '102', 5000),
('106', 'DAVID AUSTIN', '90', '100', 6000);

-- query to count the number of employees in each department
SELECT department_id  AS "Department Code",
Count (*) AS "No of Employees"
FROM DEPARTMENT
GROUP BY department_id;

-- query to sum the salary of each department 
SELECT department_id, SUM(salary)
FROM DEPARTMENT
GROUP BY department_id;

-- query to count the number of employees and sum the salary in each department 
SELECT department_id AS "Department Code",
Count (*) AS "No of Employees",
SUM(salary) AS "Total Salary"
FROM DEPARTMENT
GROUP BY department_id;

-- query to sum the salary of employees with a specific manager
SELECT department_id AS "Department Code",
SUM(salary) AS "Total Salary"
FROM DEPARTMENT
WHERE MANAGER_ID = '103'
GROUP BY department_id;

-- query to find departments with more than 2 employees
SELECT department_id, COUNT (*) AS "No. of Employees"
FROM DEPARTMENT
GROUP BY department_id;