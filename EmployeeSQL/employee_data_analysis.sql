--check data import 
SELECT * 
FROM "Employees";

--Data Analysis #1 
--Perform an Inner Join on Employees and Salaries Tables
--matching key is emp_no
--run to confirm join
SELECT * 
FROM "Employees"
JOIN "Salaries"
ON "Employees".emp_no = "Salaries".emp_no;

--select specific columns required from the joined data
--found this website helpful for correcting syntax: http://davebland.com/joins-part-4
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM "Employees" AS e
JOIN "Salaries" AS s
ON e.emp_no = s.emp_no
ORDER BY s.salary

--Data Analysis #2
--find names and hire dates for employees hired in 1986
--all columns avail in Employees table
--found this site helpful: https://www.postgresqltutorial.com/postgresql-between/
SELECT first_name, last_name, hire_date
FROM "Employees"
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date

--Data Analysis #3
--manager of each dept
--list department number, department name, manaager's emp number, last name, first name
--the Department_Manager table connects the Department and Employees tables
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM "Department_Manager" AS dm
	JOIN "Departments" AS d
	ON dm.dept_no = d.dept_no
		JOIN "Employees" AS e
		ON dm.emp_no = e.emp_no;

--Data Analysis #4 
--department for each employee
--list emp number, last name, first name, department name
--Department_Employee table connects the Departments and Employees tables
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Department_Employee" AS de
	JOIN "Departments" AS d
	ON de.dept_no = d.dept_no
		JOIN "Employees" AS e
		ON de.emp_no = e.emp_no;

--Data Analysis #5 
--Finding Hercules B
--list first name, last name, sex, for employees with first name "Hercules", last name beginning with a "B"
--all data within Employees table 
SELECT first_name, last_name, sex
FROM "Employees"
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--Data Analysis #6
--All sales employees
--list emp number, last name, first name, dept name for Sales dept only
--Department_Employee table connects the Departments and Employees tables
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" AS e
	JOIN "Department_Employee" AS de
	ON e.emp_no = de.emp_no
		JOIN "Departments" AS d
		ON de.dept_no = d.dept_no
			WHERE d.dept_name = 'Sales'; 

--Data Analysis #7
--All sales and development employees
--list emp number, last name, first name, and department name for Sales and Development depts only
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" AS e
	JOIN "Department_Employee" AS de
	ON e.emp_no = de.emp_no
		JOIN "Departments" AS d
		ON de.dept_no = d.dept_no
			WHERE d.dept_name = 'Sales' OR
			d.dept_name = 'Development';
		



