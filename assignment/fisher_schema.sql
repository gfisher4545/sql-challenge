drop table if exists departments; 
drop table if exists dept_emp;
drop table if exists dept_manager;
drop table if exists employees;
drop table if exists titles;
drop table if exists salaries;

Create table departments (
	dept_no varchar (30),
	dept_name varchar (30) not null, 
	primary key (dept_no)
	);
	
Create TABLE employees (
	emp_no int,
	birth_date date,
	first_name varchar (30) ,
	last_name varchar (30),
	gender varchar(10),
	hire_date date,
	primary key (emp_no)
	);
	

Create TABLE dept_emp (
	emp_no int,
	dept_no varchar(30),
	from_date date,
	to_date date,
	primary key (emp_no, dept_no),
	foreign key (dept_no) references departments (dept_no),
	foreign key (emp_no) references employees (emp_no)
	);

Create TABLE dept_manager (
	dept_no varchar(30),
	emp_no int,
	from_date date,
	to_date date,
	primary key (emp_no, dept_no),
	foreign key (dept_no) references departments (dept_no),
	foreign key (emp_no) references employees (emp_no)
	);

	
Create TABLE titles (
	emp_no int,
	title varchar (30),
	from_date date,
	to_date date,
	primary key (emp_no, title, from_date),
	foreign key (emp_no) references employees (emp_no)
	);

Create TABLE salaries (
	emp_no int,
	x int,
	from_date date,
	to_date date,
	primary key (emp_no, from_date),
	foreign key (emp_no) references employees (emp_no)
	);

	
