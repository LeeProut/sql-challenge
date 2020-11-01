--check data import 
SELECT * 
FROM "Employees";

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


