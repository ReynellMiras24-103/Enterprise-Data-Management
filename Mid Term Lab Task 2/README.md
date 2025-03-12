### Midterm Lab Task 2 – Data Cleaning and Transformation Using Power Query Editor

### Task Description:
Company X would like to extract some useful information from the UnclenedDSJObs csv taken
from a Job Posting site available in Kaggle. There are a lot of columns available but focus only
on generating insights that will answer the ff: questions
1. Which Job Roles pay the highest and least
2. What size companies pay the best
3. Where Job Roles or Job Titles pay the best and least in a specific state

### Here are your data-cleaning task:
## part 1

- Salary Estimate Column
- Create 2 New Columns (From the Salary Estimate) Min Sal and Max Sal
- ADD COLUMN – Role Type
- SPLIT COLUMNS by Delimeter
- Select Location column (SPLIT columns by , Delimeter)
- Filter New Column(Select Location Correction 2)
- Split the size Column and create 2 new column
- Handle negative values
- Clean Company name and remove Rates after the name of company
- Remove Column Descriptions
  
## Part 2 Reshape and Group the tables:

- Create a duplicate of the raw data
- Rename the duplicate with “Sal By Role Type dup”
- Create a reference of the raw data
- Rename the reference with “Sal By Role Size ref”
- Mapping Other Files and include in the current queries
- Create a reference of the raw data
- Rename the reference with “Sal By State ref”
  

### Here is the screenshot of the Dataset before doing Cleaning and Transformation

![image alt](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/680409885c6b4f015eec4b3f91a926023c224581/Mid%20Term%20Lab%20Task%202/Images/LAB2TASK1RAW.png)

### Here is the screenshot of the Dataset after doing Cleaning and Transformation
![image alt](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/a0786351c4fcde5feecf5f99ca094107483152a7/Mid%20Term%20Lab%20Task%202/Images/LAB2TASK1.png)
![image alt](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/a0786351c4fcde5feecf5f99ca094107483152a7/Mid%20Term%20Lab%20Task%202/Images/LAB2TASK1.2.0.png)

### Here is the screenshot of the dependencies and References of the QUERIES
![image alt](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/a0786351c4fcde5feecf5f99ca094107483152a7/Mid%20Term%20Lab%20Task%202/Images/EDM%20Lab2%20Queries%20Dependencies.png)

### Here is the Final Output (Screenshot of the final queries)
![image alt](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/a0786351c4fcde5feecf5f99ca094107483152a7/Mid%20Term%20Lab%20Task%202/Images/Sal_by_Role_type_dub.png)
![image alt](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/a0786351c4fcde5feecf5f99ca094107483152a7/Mid%20Term%20Lab%20Task%202/Images/Sal_by_Size_Ref.png)
![image alt](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/a0786351c4fcde5feecf5f99ca094107483152a7/Mid%20Term%20Lab%20Task%202/Images/Sal_By_Size_Role_type_dup.png)
![image alt](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/a0786351c4fcde5feecf5f99ca094107483152a7/Mid%20Term%20Lab%20Task%202/Images/Sal_By_Sate_ref.png)

### Here's the Excel file
[Midterm Lab Task 2 – Data Cleaning and Transformation Using Power Query Editor](https://github.com/ReynellMiras24-103/Enterprise-Data-Management/blob/d1fcceef6a0589bf6fd296d86f60788ff9e3d37f/Mid%20Term%20Lab%20Task%202/Data%20Ceaning%20Lab2Task2.xlsx)


