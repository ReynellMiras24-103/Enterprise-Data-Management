### Finals Task 5 Using SQL views and Stored Procedur and Stored Functions
#### Instructions: 

- 1. To have an idea of how SQL views work, kindly read the lecture on SQL views and stored procedures, then you may try the following examples in MySQL Workbench: 
- 2. Start Xampp and MySQL Workbench – create or start a connection 
- 4. Open the democodes.sql, and you may try executing all the examples using the hrd.sql file

- 5. AFTER the practice codes…. Perform the required SQL statements of the ff: use inventory.sql for this.

- 6. Print screen the appropriate sql and output per item
#### 1.	CREATE A VIEW that will display the vendors_code, vendors name, product description p_indate, of all products with p_indate from 2002 onwards

CREATE VIEW view_products_from_2002 AS
SELECT vendors.V_CODE, vendors.V_NAME, Products.P_DESCRIPT, Products.P_INDATE
FROM vendors
JOIN Products ON vendors.V_CODE = Products.V_CODE
WHERE Products.P_INDATE >= '2002-01-01';

SELECT * FROM view_products_from_2002;


![alt image](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/4ca91e3b5218cbdae7bc5ceef9c919d0cdadfcfd/Final%20Task%205%20/Files/F5-Q1.png)

#### 2.	CREATE a VIEW that will display all products whose price range is between 100-150

CREATE VIEW view_all_products AS 
SELECT * FROM Products
WHERE P_Price BETWEEN 100 AND 150 ; 

SELECT * FROM view_all_products;


![alt image](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/4ca91e3b5218cbdae7bc5ceef9c919d0cdadfcfd/Final%20Task%205%20/Files/F5-Q2.png)

#### 3.	Create a VIEW that will COMPUTE for the (TOTAL_PRICE) of ALL PRODUCTS by getting the (P_ONHAND x P_PRICE) Sold by vendors with the following v_code (21344, 23119 and 24288)


CREATE VIEW view_total_price_by_vendor AS
SELECT V_CODE,P_CODE,P_DESCRIPT,P_ONHAND,P_PRICE,(P_ONHAND * P_PRICE) AS TOTAL_PRICE
FROM Products
WHERE V_CODE IN (21344, 23119, 24288);

SELECT * FROM view_total_price_by_vendor ;


![alt image](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/4ca91e3b5218cbdae7bc5ceef9c919d0cdadfcfd/Final%20Task%205%20/Files/F5-Q3.png)


#### 4.	CREATE a STORED PROCEDURE that WILL take a SINGLE PARAMETER and UPDATED the Name of Vendor ‘Bryson,Inc. ’ to ‘Bryson and Co’.


DELIMITER //

CREATE PROCEDURE update_vendor_name()
BEGIN
    UPDATE vendors
    SET V_NAME = 'Bryson and Co'
    WHERE V_NAME = 'Bryson,Inc.';
END //

DELIMITER ;


![alt image](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/4ca91e3b5218cbdae7bc5ceef9c919d0cdadfcfd/Final%20Task%205%20/Files/F5-Q4.png)

#### 5.	CREATE A Function that will take 2 parameters(v_code and v_state) and display All the product description and price based on the parameters passed to the function



DELIMITER //

CREATE PROCEDURE get_products (
    IN p_vcode INT,
    IN p_vstate VARCHAR(3)
)
BEGIN
    SELECT 
        P_DESCRIPT, 
        P_PRICE
    FROM Products
    JOIN vendors ON Products.V_CODE = vendors.V_CODE
    WHERE vendors.V_CODE = p_vcode
      AND vendors.V_STATE = p_vstate;
END //

DELIMITER ;


CALL get_products(21225, 'TN');


![alt image](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/4ca91e3b5218cbdae7bc5ceef9c919d0cdadfcfd/Final%20Task%205%20/Files/F5%20-Q5.png)

