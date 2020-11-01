--check data import 
SELECT * 
FROM "Employees";

--Data Analysis #1 
--Perform an Inner Join on Employees and Salaries Tables
--matching key is emp_no
--run to confirm join
--found this website helpful for correcting syntax: http://davebland.com/joins-part-4
SELECT * 
FROM "Employees"
JOIN "Salaries"
ON "Employees".emp_no = "Salaries".emp_no;

--select specific columns required from the joined data
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



