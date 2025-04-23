
### Finals Task 3. Using MYSQL Clause

### Instructions:
- Create a database named online_courseDB
- Use the online_courseDB
- Copy and paste the initial query then perform the SELECT statements required for each problems in the figure below: (download onlineCourse.sql file)


![image](https://github.com/user-attachments/assets/86095022-84ab-4204-a419-89584508219f)


### Required Outputs to be posted in your Github portfolio
- Query statements (Task 1-5)
- Output of each query (Task 1-5)
- SQL copy of the database and table structures


CREATE DATABASE online_courseDB ;

use online_courseDB;

CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    category VARCHAR(100) NOT NULL,
    enrollment_limit INT NOT NULL,
    students_enrolled INT NOT NULL
);

INSERT INTO courses (course_name, category, enrollment_limit, students_enrolled)
VALUES
    ('Data Science', 'Technology', 50, 45),
    ('Graphic Design', 'Arts', 30, 25),
    ('Digital Marketing', 'Business', 40, 35),
    ('Introduction to Python', 'Technology', 100, 90),
    ('Creative Writing', 'Literature', 25, 20),
    ('UX/UI Design', 'Arts', 50, 40),
    ('Project Management', 'Business', 60, 55),
    ('Artificial Intelligence', 'Technology', 50, 48),
    ('Public Speaking', 'Communication', 30, 28),
    ('Photography', 'Arts', 25, 18),
    ('Web Development', 'Technology', 75, 70),
    ('SEO Strategies', 'Business', 30, 29),
    ('Blockchain Basics', 'Technology', 50, 50),
    ('Accounting 101', 'Business', 45, 40),
    ('Film Editing', 'Arts', 35, 33),
    ('Machine Learning', 'Technology', 60, 55),
    ('Speech Writing', 'Communication', 20, 15),
    ('Interior Design', 'Arts', 40, 38),
    ('Leadership Training', 'Business', 50, 48),
    ('Cybersecurity', 'Technology', 70, 65);
    
    
select * from courses;

![image alt](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/b10bca161b456b896858fe3c1e4070faacff9d88/Final%20Task%203-1/files/couse%20table.png)
    
    
    
select * from courses where students_enrolled < enrollment_limit;

![image](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/db7c0f65a3c09cdb93f41d51e989c4e063292b33/Final%20Task%203-1/files/task1.png)
    
select course_name, category, enrollment_limit, count(students_enrolled) as total_number_of_students_enrolled
from courses 
group by category;

![image](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/db7c0f65a3c09cdb93f41d51e989c4e063292b33/Final%20Task%203-1/files/TASk2.png)
    
select * 
from courses 
where  enrollment_limit = students_enrolled; 

 ![image](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/db7c0f65a3c09cdb93f41d51e989c4e063292b33/Final%20Task%203-1/files/TASK3.png)
    
    
select sum(students_enrolled) as total_number_Of_students_enrolled_in_all_courses from courses;

![image](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/db7c0f65a3c09cdb93f41d51e989c4e063292b33/Final%20Task%203-1/files/TASk4.png)
    
select *
from courses 
order  by students_enrolled asc;

![image](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/db7c0f65a3c09cdb93f41d51e989c4e063292b33/Final%20Task%203-1/files/TASK5.png)

### Here's the SQL copy of the database and table structures

[onlinecoursesDB.sql](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/2a88c1eced9dedf581efbce35f67554f3ea0af3d/Final%20Task%203-1/files/onlinecoursesDB.sql)


    
