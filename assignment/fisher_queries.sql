
--1.List the following details of each employee: employee number, last name, first name, gender, and salary.
select e.emp_no, e.last_name, e.first_name, e.gender, s.x
from employees as e
inner join salaries as s ON e.emp_no = s.emp_no;


--2. List employees who were hired in 1986
select e.emp_no, e.last_name, e.first_name, e.hire_date
from employees as e
WHERE e.hire_date >=  '1986-1-1' and e.hire_date < '1987-1-1'
order by e.hire_date Desc;

--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name,
--first name, and start and end employment dates

select dm.dept_no, dm.emp_no, ds.dept_name, e.first_name, e.last_name, s.from_date, s.to_date
from dept_manager as dm
inner join departments as ds ON dm.dept_no = ds.dept_no
inner join employees as e on dm.emp_no = e.emp_no
inner join salaries as s on dm.emp_no = s.emp_no;

--4. List the department of each employee with the following information:
--employee number, last name, first name, and department name.
select de.emp_no, e.last_name, e.first_name, ds.dept_name
from dept_emp as de
inner join employees as e ON de.emp_no = e.emp_no
inner join departments as ds ON de.dept_no = ds.dept_no;

--5. List all employees whose first name is "Hercules" and last names begin
--with "B."

select e.last_name, e.first_name
from employees as e
WHERE e.first_name = 'Hercules' and e.last_name like 'B%';

--6. List all employees in the Sales department, including their employee
--number, last name, first name, and department name

select de.emp_no, e.last_name, e.first_name, ds.dept_name
from dept_emp as de
inner join employees as e on de.emp_no = e.emp_no
inner join departments as ds ON de.dept_no = ds.dept_no
where ds.dept_name = 'Sales'; 

--7.List all employees in the Sales and Development departments, including 
--their employee number, last name, first name, and department name
select de.emp_no, e.last_name, e.first_name, ds.dept_name
from dept_emp as de
inner join employees as e on de.emp_no = e.emp_no
inner join departments as ds ON de.dept_no = ds.dept_no
where ds.dept_name = 'Development' or ds.dept_name = 'Sales'
;

--8. In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name

select e.last_name, count(e.last_name) as last_count
from employees as e
group by e.last_name
order by last_count Desc;


