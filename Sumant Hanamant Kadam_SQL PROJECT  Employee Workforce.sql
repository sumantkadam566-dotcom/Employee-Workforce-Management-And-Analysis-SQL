Create database EmployeeWorkforceManagementAndAnalysis;
use EmployeeWorkforceManagementAndAnalysis;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY auto_increment,
    FullName VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Department VARCHAR(50),
    Designation VARCHAR(50),
    Salary DECIMAL(10,2),
    ExperienceYears DECIMAL(4,1),
    Location VARCHAR(50));
    
    INSERT INTO employees (fullname, age, gender, department, designation, salary, experienceyears, location)
VALUES ('Rahul Sharma', 28, 'Male', 'Sales', 'Sales Executive', 45000.00, 3, 'Mumbai');

INSERT INTO employees (fullname, age, gender, department, designation, salary, experienceyears, location)
VALUES ('Priya Nair', 32, 'Female', 'HR', 'HR Associate', 35000.00, 5, 'Bengaluru');

INSERT INTO employees (fullname, age, gender, department, designation, salary, experienceyears, location)
VALUES ('Amit Verma', 40, 'Male', 'IT', 'Senior Developer', 95000.00, 12, 'Pune');

INSERT INTO employees (fullname, age, gender, department, designation, salary, experienceyears, location)
VALUES ('Sneha Kulkarni', 26, 'Female', 'Marketing', 'Marketing Analyst', 42000.00, 2, 'Delhi');

INSERT INTO employees (fullname, age, gender, department, designation, salary, experienceyears, location)
VALUES ('Arjun Mehta', 35, 'Male', 'Finance', 'Finance Analyst', 70000.00, 9, 'Hyderabad');

INSERT INTO employees (fullname, age, gender, department, designation, salary, experienceyears, location)
VALUES ('Kavita Joshi', 29, 'Female', 'IT', 'Software Engineer', 60000.00, 4, 'Chennai');

INSERT INTO employees (fullname, age, gender, department, designation, salary, experienceyears, location)
VALUES ('Rohan Patil', 31, 'Male', 'Sales', 'Sales Manager', 75000.00, 8, 'Mumbai');

INSERT INTO employees (fullname, age, gender, department, designation, salary, experienceyears, location)
VALUES ('Meera Desai', 27, 'Female', 'HR', 'Recruiter', 38000.00, 2, 'Pune');

INSERT INTO employees (fullname, age, gender, department, designation, salary, experienceyears, location)
VALUES ('Vivek Singh', 45, 'Male', 'Finance', 'Operations Manager', 110000.00, 15, 'Delhi');

INSERT INTO employees (fullname, age, gender, department, designation, salary, experienceyears, location)
VALUES ('Anjali Gupta', 30, 'Female', 'Marketing', 'Brand Manager', 65000.00, 6, 'Bengaluru');

INSERT INTO employees (fullname, age, gender, department, designation, salary, experienceyears, location)
VALUES ('Suresh Iyer', 38, 'Male', 'IT', 'Database Admin', 78000.00, 10, 'Hyderabad');

INSERT INTO employees (fullname, age, gender, department, designation, salary, experienceyears, location)
VALUES ('Neha Kapoor', 25, 'Female', 'Sales', 'Sales Trainee', 30000.00, 1, 'Chennai');

INSERT INTO employees (fullname, age, gender, department, designation, salary, experienceyears, location)
VALUES ('Manish Rao', 34, 'Male', 'Marketing', 'Digital Strategist', 72000.00, 9, 'Pune');

INSERT INTO employees (fullname, age, gender, department, designation, salary, experienceyears, location)
VALUES ('Pooja Jain', 29, 'Female', 'Finance', 'Accountant', 48000.00, 4, 'Mumbai');

INSERT INTO employees (fullname, age, gender, department, designation, salary, experienceyears, location)
VALUES ('Karan Bhat', 41, 'Male', 'IT', 'Project Manager', 90000.00, 14, 'Delhi');


SELECT fullname, age,
CASE
    WHEN age BETWEEN 22 AND 30 THEN 'Junior Employee'
    WHEN age BETWEEN 31 AND 40 THEN 'Mid-Level Employee'
    WHEN age BETWEEN 41 AND 55 THEN 'Senior Employee'
    ELSE 'Out of Range'
END AS AgeCategory FROM employees;

SELECT fullname, designation, salary,
CASE
    WHEN designation = 'HR Associate' AND salary BETWEEN 25000 AND 40000 THEN 'Within Range'
    WHEN designation = 'Software Engineer' AND salary BETWEEN 50000 AND 90000 THEN 'Within Range'
    WHEN designation = 'Senior Developer' AND salary BETWEEN 90000 AND 140000 THEN 'Within Range'
    WHEN designation = 'Sales Executive' AND salary BETWEEN 30000 AND 55000 THEN 'Within Range'
    WHEN designation = 'Finance Analyst' AND salary BETWEEN 45000 AND 80000 THEN 'Within Range'
    WHEN designation = 'Operations Manager' AND salary BETWEEN 80000 AND 120000 THEN 'Within Range'
    ELSE 'Out of Range'
END AS SalaryValidation FROM employees;





SELECT * FROM employees;

SELECT * 
FROM employees
WHERE department = 'IT';

SELECT * 
FROM employees
WHERE salary > 60000;

SELECT DISTINCT department
FROM employees;

SELECT * 
FROM employees
WHERE location = 'Mumbai';

DELETE e1
FROM employees e1
JOIN employees e2 
  ON e1.fullname = e2.fullname 
 AND e1.age = e2.age 
 AND e1.gender = e2.gender 
 AND e1.department = e2.department 
 AND e1.designation = e2.designation 
 AND e1.salary = e2.salary 
 AND e1.experienceyears = e2.experienceyears 
 AND e1.location = e2.location
WHERE e1.employeeid > e2.employeeid;

SELECT * 
FROM employees
ORDER BY salary DESC;

SELECT * 
FROM employees
WHERE fullname LIKE 'A%';

SELECT department, 
       AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
ORDER BY employee_count DESC;

SELECT department, 
       SUM(salary) AS total_salary
FROM employees
GROUP BY department;

SELECT 
       MIN(salary) AS min_salary,
       MAX(salary) AS max_salary
FROM employees
WHERE department = 'IT';

SELECT * 
FROM employees
WHERE experienceyears > 10;

SELECT fullname, age, designation, department, salary,
CASE
    WHEN age < 30 THEN 'Junior Level'
    WHEN age BETWEEN 30 AND 40 THEN 'Mid Level'
    ELSE 'Senior Level'
END AS EmployeeLevel
FROM employees;

SELECT fullname, designation, salary,
CASE
    WHEN designation = 'HR Associate' 
         AND salary BETWEEN 25000 AND 40000 THEN 'Within Range'
    WHEN designation = 'Software Engineer' 
         AND salary BETWEEN 50000 AND 90000 THEN 'Within Range'
    WHEN designation = 'Senior Developer' 
         AND salary BETWEEN 90000 AND 140000 THEN 'Within Range'
    WHEN designation = 'Sales Executive' 
         AND salary BETWEEN 30000 AND 55000 THEN 'Within Range'
    WHEN designation = 'Finance Analyst' 
         AND salary BETWEEN 45000 AND 80000 THEN 'Within Range'
    WHEN designation = 'Operations Manager' 
         AND salary BETWEEN 80000 AND 120000 THEN 'Within Range'
    ELSE 'Out of Range'
END AS SalaryRangeCategory
FROM employees;

SELECT * 
FROM employees
WHERE salary BETWEEN 50000 AND 100000;

SELECT * 
FROM employees
WHERE gender = 'Female'
  AND department = 'Sales';
  
  SELECT * 
FROM employees
WHERE experienceyears BETWEEN 2 AND 8;

SELECT e1.fullname AS Employee,
       e1.salary AS EmployeeSalary,
       e2.fullname AS ComparedWith,
       e2.salary AS ComparedSalary
FROM employees e1
JOIN employees e2 
  ON e1.salary > e2.salary
ORDER BY e1.salary DESC;

CREATE VIEW high_salary_employees AS
SELECT *
FROM employees
WHERE salary > 80000;

SELECT * FROM high_salary_employees;

SELECT *
FROM high_salary_employees
WHERE experienceyears > 5;

SELECT fullname, department, designation, salary,
       RANK() OVER (ORDER BY salary DESC) AS SalaryRank
FROM employees;

SELECT 
    fullname,department,salary,
    AVG(salary) OVER (PARTITION BY department) AS dept_avg_salary
FROM employees;

SELECT 
    fullname,department,experienceyears,
    DENSE_RANK() OVER (PARTITION BY department 
        ORDER BY experienceyears DESC) AS ExperienceRank
FROM employees;



  



