-- 1. List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
JOIN salaries as s
ON e.emp_no = s.emp_no
ORDER BY e.emp_no ASC;

--2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees as e
WHERE e.hire_date between '1986-01-01' and '1986-12-31'
ORDER BY e.hire_date ASC;

--3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT d.dept_no, d.dept_name, dm.emp_no,  e.last_name, e.first_name
FROM employees as e
JOIN dept_manager as dm
ON e.emp_no = dm.emp_no
JOIN departments as d
ON dm.dept_no = d.dept_no
ORDER BY d.dept_no ASC;

--4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT d.dept_no,  de.emp_no,  e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp as de
ON e.emp_no = de.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no
ORDER BY d.dept_no ASC;

--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT e.first_name, e.last_name, e.sex
FROM employees as e
WHERE e.first_name = 'Hercules'
AND e.last_name like 'B%';

--6. List each employee in the Sales department, including their employee number, last name, and first name.
SELECT de.emp_no, e.last_name, e.first_name
FROM departments as d
JOIN dept_emp as de
ON d.dept_no = de.dept_no
JOIN employees as e
ON de.emp_no = e.emp_no
WHERE d.dept_no = 'd007'
ORDER BY de.emp_no ASC;


--7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp as de
ON e.emp_no = de.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no
WHERE d.dept_no IN ('d007', 'd005')
ORDER BY e.emp_no ASC;

--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT e.last_name,
COUNT (e.last_name) as frecuency
FROM employees as e
GROUP BY e.last_name
ORDER BY frecuency DESC;