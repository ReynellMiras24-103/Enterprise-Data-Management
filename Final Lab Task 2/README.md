### Finals Lab Task 2. Transforming ER Model to Relational Tables

- Given the ER diagram representing student assignment submissions, convert it into MySQL
tables. Capture all entities and their attributes, and define the relationships between students,
submissions, and assignments. Identify the primary and foreign keys and ensure proper
representation of any dependent or weak entities.

![image alt](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/d1dcf8e2079fc8461b5cbd2f39b42895799ecce7/Final%20Lab%20Task%202/Files/ERD%20lab.png)


### Note: Create the appropriate table relationship and enforce necessary REFERENTIALINTEGRITY CONSTRAINTS

### Required output per Test Cases: 
- 1. Query statements (Task 1-4 including the table relationship)
- 2. Table Structure (Task 1- 4 including the table relationship)
- 3. ER Diagram or Relational schema from phpMyAdmin or Workbench (pdf or jpg file)
- 4. Sql copy of the database and table structures

CREATE DATABASE student_task_db;

USE student_task_db;

CREATE TABLE student_tbl(username VARCHAR(50) PRIMARY KEY);

DESCRIBE student_tbl;

![image alt](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/d1dcf8e2079fc8461b5cbd2f39b42895799ecce7/Final%20Lab%20Task%202/Files/describe%20students.png)

CREATE TABLE assignment_tbl(
shortname VARCHAR(50) PRIMARY KEY,
due_date DATE NOT NULL,
url VARCHAR(255) 
 );

DESCRIBE assignment_tbl;

![image alt](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/d1dcf8e2079fc8461b5cbd2f39b42895799ecce7/Final%20Lab%20Task%202/Files/describe%20assignment.png)

CREATE TABLE submission_tbl(
version INT(11) PRIMARY KEY  ,
submit_date DATE NOT NULL ,
raw_data TEXT,
username VARCHAR(50),
shortname VARCHAR(50),
CONSTRAINT fk_username FOREIGN KEY(username) REFERENCES student_tbl(username),
CONSTRAINT fk_shortname FOREIGN KEY(shortname) REFERENCES assignment_tbl(shortname)
);

DESCRIBE submission_tbl;

![image alt](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/d1dcf8e2079fc8461b5cbd2f39b42895799ecce7/Final%20Lab%20Task%202/Files/describe%20submission.png)

### Here's the ERD 

![image alt](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/d1dcf8e2079fc8461b5cbd2f39b42895799ecce7/Final%20Lab%20Task%202/Files/ERD.png)

### The relationship 

- Student submit Submission
- Cardinality: One-to-Many
- A student can submit many submissions.
- Each submission is submitted by one student.


- Submission complete Assignment
- Cardinality: Many-to-One
- Many submissions can be for one assignment.
- Each submission is related to exactly one assignment.

