# sql-challenge
## This repository contains five (5) folders as follows:

1. data: Contains tables for import in CSV format (6 tables).
2. ERD Employee: Includes all export files from QuickDBD in different formats such as PDF, PNG, SQL, and TXT. ERD stands for entity relationship diagram.
3. Data Engineering: Contains all (6) export tables from pgAdmin 4 in CSV format, table schema in SQL format, and ERD PostgreSQL in PGerd format.
4. Data Analysis: Contains responses to questions about analysis in SQL format.
5. Submission: Includes three files:
      a. ERD Employee (PNG format)
      b. Schema Employee (SQL format)
      c. Employees queries (SQL format)

## This challenge was divided into three parts: data modeling, data engineering, and data analysis.

### Data Modeling
Inspected the CSV files, and then sketched an Entity Relationship Diagram of the tables. To create the sketch, feel free to use a tool like QuickDBD.

### Data Engineering
Used the provided information to create a table schema for each of the six CSV files. The following steps were completed:
    - Specified the data types, primary keys, foreign keys, and other constraints.
    - Verified that the primary key columns are unique. Otherwise, created a composite key, which uses two primary keys to uniquely identify a row.
    - Created the tables in the correct order to handle the foreign keys.
    - Imported each CSV file into its corresponding SQL table.
    
### Data Analysis
The data analysis addresses the following:
    1. The employee number, last name, first name, sex, and salary of each employee.
    2. The first name, last name, and hire date for employees who were hired in 1986.
    3. The manager of each department along with their department number, department name, employee number, last name, and first name.
    4. The department number for each employee along with that employee’s employee number, last name, first name, and department name.
    5. The first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
    6. Each employee in the Sales department, including their employee number, last name, and first name.
    7. Each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
    8. The frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
