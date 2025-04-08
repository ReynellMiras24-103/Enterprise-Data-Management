###  Final Lab Task 1. MySQL Basics Multi-Level Company

### Task 1: Create a table named employees with the following fields: 
employee_id: Unique integer, auto-increment, primary key. 
employee_name: String (VARCHAR) with up to 255 characters, not null. 
manager_id: Integer, foreign key referencing employee_id in the same table (employees). 
### Task 2: Create a table named departments with the following fields: 
department_id: Unique integer, auto-increment, primary key. 
department_name: String (VARCHAR) with up to 255 characters, not null.
### Task 3: Create a table named employee_departments with the following fields: 
employee_id: Integer, foreign key referencing employee_id in employees. 
department_id: Integer, foreign key referencing department_id in departments.
### Task 4: Create a table named employee_projects with the following fields:
employee_id: Integer, foreign key referencing employee_id in employees.  
project_name: String (VARCHAR) with up to 255 characters, not null.  
### Task 5: Create a table named managers with the following fields: 
manager_id: Unique integer, auto-increment, primary key.
employee _id: Integer, foreign key referencing employee _id in employees.

### Required output per Test Cases:

1. Query statements (Task 1-5)
2. Table Structure (Task 1-5)
3. And 1 ER Diagram or Relational schema from phpMyAdmin or Workbench (pdf or jpg file)
4. Sql copy of the database and table sturctures

### task 1 
CREATE TABLE employees(
employee_id INT(11) AUTO_INCREMENT PRIMARY KEY,
employee_name VARCHAR(255) NOT NULL,
manager_id INT
); 

ALTER TABLE employees ADD FOREIGN KEY(manager_id) REFERENCES manager(manager_id);

DESCRIBE employees;
![image alt](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/9062a13b97c8a90788b70587d528a78e62ead032/Final%20Lab%20Task%201%20/images/employees.png)
### task 2
CREATE TABLE departments(
department_id INT(11) AUTO_INCREMENT PRIMARY KEY,
department_name VARCHAR(255) NOT NULL
);

DESCRIBE departments;
![image alt]
### task 3
CREATE TABLE employee_departments(
employee_id INT,
department_id INT,
CONSTRAINT fk_employee_id FOREIGN KEY(employee_id) REFERENCES employees(employee_id),
CONSTRAINT fk_department_id FOREIGN KEY(department_id) REFERENCES departments(department_id)
);

DESCRIBE employee_departments;
![image alt]
### task 4
CREATE TABLE employee_projects(
employee_id INT,
project_name VARCHAR(255) NOT NULL,
FOREIGN KEY(employee_id) REFERENCES employees(employee_id)
);

DESCRIBE employee_projects;
![image alt]
### task 5 
CREATE TABLE manager(
manager_id INT(11) AUTO_INCREMENT PRIMARY KEY,
employee_id INT,
FOREIGN KEY(employee_id) REFERENCES employees(employee_id)
);

DESCRIBE manager;
![image alt]

### ER Diagram 
![image alt]()

### Sql copy of the database and table sturctures
[]()

