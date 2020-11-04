### Employee Database: A Mystery in Two Parts

A data engineering project for Pewlett Hackard, researching data on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

### I. Data Engineering: 

1. Designed tables to hold data from six CSVs

2. Imported the CSVs into a SQL database

![ERD](EmployeeSQL/Images/Employee_ERD.png)

### II. Data Analysis:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

### Working in Pandas:

1. Created a histogram to visualize the most common salary ranges for employees.

![Salaries Histogram](EmployeeSQL/Images/Salaries.png)

2. Created a bar chart of average salary by title.

![Average Salary Bar Chart](EmployeeSQL/Images/AverageSalaries.png)

#### Searched for Employee # 499942: April Foolsday! 