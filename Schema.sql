--Use the information you have to create a table schema for each of the six CSV files. 
--Remember to specify data types, primary keys, foreign keys, and other constraints.
--Import each CSV file into the corresponding SQL table.
--DROP TABLE Employees
CREATE TABLE Employees (
Emp_no INT,
Birth_date DATE,
First_Name VARCHAR,
Last_Name VARCHAR,
Gender VARCHAR,
Hire_Date DATE,
PRIMARY KEY (emp_no));
select * from Employees
CREATE TABLE Titles (
Emp_no INT,
Title VARCHAR,
From_Date DATE,
To_Date DATE,
FOREIGN KEY (emp_no) REFERENCES Employees (emp_no));
--select * from Titles
CREATE TABLE Salaries (
Emp_no INT,
Salaries INT,
From_date DATE,
To_date DATE,
FOREIGN KEY (emp_no) REFERENCES Employees (emp_no));
--select * from Salaries
CREATE TABLE Departments (
Dept_no VARCHAR,
Dept_name VARCHAR,
PRIMARY KEY (Dept_no));
select * from Departments
CREATE TABLE Dept_Manager (
Dept_no VARCHAR,
Emp_no INT,
From_date DATE,
To_date DATE,
FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES Departments (dept_no));
select * from Dept_Manager
CREATE TABLE Dept_Employee (
Emp_no INT,
Dept_no VARCHAR,
From_date DATE,
To_date DATE,
FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES Departments (dept_no));
select * from Dept_Employee

