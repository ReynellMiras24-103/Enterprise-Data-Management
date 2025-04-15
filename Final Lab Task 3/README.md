### Finals Task 3. Table Manipulation

![image alt](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/2bba415787bd992df759d9ae22691d5d4d3b120e/Final%20Lab%20Task%203/files/lab3.png)

### Required output per Test Cases: (To be posted in Github)
- 1. Query statements (Task 1-4)
- 2. Table Structure (Task 1-4)
- 3. ER Diagram or Relational schema from phpMyAdmin or Workbench (pdf or jpg file)
- 4. Sql copy of the database and table structures
 
  
CREATE DATABASE product_db;

 USE product_db; 

 CREATE TABLE products(
product_id INT(11) AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
price FLOAT(10,2)
);

ALTER TABLE products ADD CONSTRAINT  CHECK (price > 0);


DESCRIBE products;

![image a;t](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/2bba415787bd992df759d9ae22691d5d4d3b120e/Final%20Lab%20Task%203/files/describe%20products.png)

INSERT INTO products (product_name, price) VALUES
("laptop", 999.99),
("smartphones", 599.99),
("tablet", 299.99),
("keyboard", 19.99),
("mouse", 14.99),
("desklamp", 24.99),
("speakers", 9.99);

SELECT * FROM products;

![image alt](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/2bba415787bd992df759d9ae22691d5d4d3b120e/Final%20Lab%20Task%203/files/products.png)

ALTER TABLE products MODIFY COLUMN product_name VARCHAR(120);

DESCRIBE products;

![image alt](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/2bba415787bd992df759d9ae22691d5d4d3b120e/Final%20Lab%20Task%203/files/describe%20products%20modified.png)

### Here the diagram 

![image alt](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/2bba415787bd992df759d9ae22691d5d4d3b120e/Final%20Lab%20Task%203/files/ER.png)

### Here's the Sql copy of the database and table structures

[products_db.sql](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/2bba415787bd992df759d9ae22691d5d4d3b120e/Final%20Lab%20Task%203/files/products_db.sql)

