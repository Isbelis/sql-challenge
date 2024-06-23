-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- SQL challenge: ERD Employee
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;


	
CREATE TABLE departments (
	dept_no VARCHAR(5)   NOT NULL ,
    dept_name VARCHAR(50)  NOT NULL ,
    last_update timestamp default localtimestamp NOT NULL ,
    CONSTRAINT PK_departments PRIMARY KEY(dept_no )

);

CREATE TABLE dept_emp (
    id SERIAL  NOT NULL ,
    emp_no INTEGER  NOT NULL ,
    dept_no VARCHAR(5)  NOT NULL ,
    last_update timestamp default localtimestamp NOT NULL ,
    CONSTRAINT PK_dept_emp PRIMARY KEY (id)
);

CREATE TABLE dept_manager (
    id SERIAL  NOT NULL ,
    dept_no VARCHAR(5)  NOT NULL ,
    emp_no INTEGER  NOT NULL ,
    last_update timestamp default localtimestamp NOT NULL ,
    CONSTRAINT PK_dept_manager PRIMARY KEY (
        id, dept_no )
);

CREATE TABLE employees (
    emp_no INTEGER  NOT NULL ,
    emp_title_id VARCHAR(5)  NOT NULL ,
    birth_date date  NOT NULL ,
    first_name VARCHAR(150)  NOT NULL ,
    last_name VARCHAR(200)  NOT NULL ,
    sex VARCHAR(5)  NOT NULL ,
    hire_date date  NOT NULL ,
    last_update timestamp default localtimestamp NOT NULL ,
    CONSTRAINT PK_employees PRIMARY KEY (emp_no )
);

CREATE TABLE salaries (
    id SERIAL  NOT NULL ,
    emp_no INTEGER  NOT NULL ,
    salary float  NOT NULL ,
    last_update timestamp default localtimestamp  NOT NULL ,
    CONSTRAINT PK_salaries PRIMARY KEY (id)
);

CREATE TABLE titles (
    title_id VARCHAR(5)  NOT NULL ,
    title VARCHAR(50)  NOT NULL ,
    last_update timestamp default localtimestamp NOT NULL ,
    CONSTRAINT PK_titles PRIMARY KEY (title_id)
);


ALTER TABLE dept_emp 
ADD CONSTRAINT fk_dept_emp_emp_no
FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_emp
ADD CONSTRAINT fk_dept_emp_dept_no 
FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager
ADD CONSTRAINT fk_dept_manager_dept_no
FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager 
ADD CONSTRAINT fk_dept_manager_emp_no 
FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE employees
ADD CONSTRAINT fk_employees_emp_title_id
FOREIGN KEY(emp_title_id)
REFERENCES titles (title_id);

ALTER TABLE salaries 
ADD CONSTRAINT fk_salaries_emp_no 
FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

