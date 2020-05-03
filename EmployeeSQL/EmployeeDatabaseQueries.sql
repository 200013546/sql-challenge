-- #1
SELECT 
employees.emp_no AS "employee number",
employees.last_name AS "last name",
employees.first_name AS "first name",
employees.gender AS "gender",
salaries.salary AS "salary"
FROM employees JOIN salaries ON employees.emp_no = salaries.emp_no;

-- #2
SELECT 
first_name AS "first name",
last_name AS "last name",
hire_date AS "hire date" 
FROM employees WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

-- #3
SELECT 
departments.dept_no AS "department number",
departments.dept_name AS "department name",
dept_manager.emp_no AS "managers employee number",
employees.last_name AS "last name",
employees.first_name AS "first name",
dept_manager.from_date AS "start employment",
dept_manager.to_date AS "end employment"
FROM departments 
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no;

-- #4
SELECT 
dept_emp.emp_no AS "employee number", 
employees.last_name AS "last name",
employees.first_name AS "first name",
departments.dept_name AS "department name"
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;

-- #5
SELECT
first_name AS "first name",
last_name AS "last name"
FROM employees WHERE first_name = 'Hercules' AND last_name LIKE 'B%'; 

-- #6
SELECT
dept_emp.emp_no AS "employee number",
employees.last_name AS "last name",
employees.first_name AS "first name",
departments.dept_name AS "department name"
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

-- #7
SELECT
dept_emp.emp_no AS "employee number",
employees.last_name AS "last name",
employees.first_name AS "first name",
departments.dept_name AS "department name"
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

-- #8
SELECT
last_name AS "last name",
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
frequency DESC;
