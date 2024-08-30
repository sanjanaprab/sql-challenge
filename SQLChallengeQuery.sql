Create table Departments (
dept_no Char(6) Primary key, 
dept_name Varchar(40) NOT NULL
);

Create table Titles (
title_id Char(5) Primary key,
title Varchar(50) Not NULL
);

CREATE TABLE Employees (
emp_no CHAR(10) PRIMARY KEY, 
emp_title_id CHAR(5),
birth_date DATE NOT NULL,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
sex CHAR(1) NOT NULL,
hire_date DATE NOT NULL,
FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

CREATE TABLE Dept_Emp (
emp_no CHAR(10),
dept_no CHAR(6),
PRIMARY KEY (emp_no, dept_no),
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE Dept_Manager (
emp_no CHAr(10),
dept_no CHAR(6),
PRIMARY KEY (emp_no, dept_no), 
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE Salaries (
emp_no CHAr(10),
salary INT NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

SELECT emp_no FROM Dept_Manager WHERE emp_no NOT IN (SELECT emp_no FROM Employees);

INSERT INTO Dept_Manager (emp_no, dept_no)
VALUES ('110022', 'd001'); 

SELECT emp_no FROM Dept_Manager WHERE emp_no NOT IN (SELECT emp_no FROM Employees);
DELETE FROM Dept_Manager WHERE emp_no = 'd001';

SELECT emp_no FROM Employees;
SELECT * FROM Dept_Manager;
SELECT emp_no FROM Dept_Manager WHERE emp_no NOT IN (SELECT emp_no FROM Employees);
SELECT emp_no, LENGTH(emp_no), dept_no, LENGTH(dept_no) FROM Dept_Manager;

DROP TABLE IF EXISTS Dept_Manager;

CREATE TABLE Dept_Manager (
    emp_no CHAR(10),
    dept_no CHAR(6),
    PRIMARY KEY (emp_no, dept_no), 
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

INSERT INTO Dept_Manager (emp_no, dept_no)
VALUES ('110022', 'd001');


