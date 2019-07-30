--List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no,e.last_name,e.first_name,e.gender,s.salaries
FROM Employees e
LEFT JOIN Salaries s
ON e.emp_no=s.emp_no;

--List employees who were hired in 1986.
SELECT emp_no,last_name,first_name
FROM Employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

--List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name, and start and end employment dates.
SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, p.from_date, p.to_date
FROM Dept_Manager m
LEFT JOIN Departments d
ON m.dept_no = d.dept_no
LEFT JOIN Employees e
ON m.emp_no = e.emp_no
LEFT JOIN Dept_Employee p
ON m.emp_no = p.emp_no;

--List the department of each employee with the following information:
--employee number, last name, first name, and department name.
SELECT p.emp_no, e.last_name, e.first_name, d.dept_name
FROM Dept_employee p
LEFT JOIN Employees e
ON p.emp_no = e.emp_no
LEFT JOIN Departments d
ON d.dept_no = p.dept_no;

--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT emp_no, last_name, first_name
FROM Employees
WHERE last_name LIKE 'B%' AND first_name = 'Hercules'

--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
SELECT p.emp_no, e.last_name, e.first_name, d.dept_name
FROM Dept_employee p
LEFT JOIN Employees e
ON p.emp_no = e.emp_no
LEFT JOIN Departments d
ON d.dept_no = p.dept_no
WHERE d.dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.
SELECT p.emp_no, e.last_name, e.first_name, d.dept_name
FROM Dept_employee p
LEFT JOIN Employees e
ON p.emp_no = e.emp_no
LEFT JOIN Departments d
ON d.dept_no = p.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "Count of Names"
FROM Employees
GROUP BY last_name
ORDER BY "Count of Names" Desc;