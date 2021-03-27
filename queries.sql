
-- Select the employee number, last name, first name, sex, and salary of all employees, ordered by employee number

SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary

FROM salaries

JOIN employees
 ON salaries.emp_no = employees.emp_no
 
 ORDER BY  emp_no ASC
 
--  Select the first name, last name, and hiring date for all employees hired in 1986

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE employees.hire_date
LIKE '%1986';

-- Select the department number, department name, employee number, last name, and first name of all managers of each department

SELECT dept_manager.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name

FROM dept_manager

JOIN employees
 ON dept_manager.emp_no = employees.emp_no

JOIN departments
ON departments.dept_no = dept_manager.dept_no;

--  Select the employee number, last name, first name, and department of each employee, ordered by employee number

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name

FROM departments

JOIN dept_emp
 ON departments.dept_no = dept_emp.dept_no

JOIN employees
 ON employees.emp_no = dept_emp.emp_no

 ORDER BY emp_no ASC;
 
 -- Select first name, last name, birth date, and sex of all employees whose first name is "Hercules" and last name begins with a "B"
 
SELECT employees.first_name, employees.last_name, employees.birth_date, employees.sex

FROM employees

WHERE first_name ='Hercules'

AND last_name LIKE 'B%';

-- 6. Select employee number, last name, first name, and department name of all employees in the Sales department, ordered by employee number

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name

FROM departments

JOIN dept_emp
 ON departments.dept_no = dept_emp.dept_no

JOIN employees
 ON employees.emp_no = dept_emp.emp_no

WHERE departments.dept_name = 'Sales'

ORDER BY emp_no ASC;


-- 7. Select employee number, last name, first name, and department name of all employees in the 'Sales' OR the 'Development' department, ordered by employee number

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments

JOIN dept_emp
 ON departments.dept_no = dept_emp.dept_no

JOIN employees
 ON employees.emp_no = dept_emp.emp_no

 WHERE departments.dept_name = 'Sales'
 OR departments.dept_name = 'Development'

ORDER BY emp_no ASC;

-- 8. Count the number of employees, grouped by last name

SELECT
employees.last_name,
COUNT(emp_no)
FROM employees
GROUP BY last_name




