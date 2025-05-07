# sql_first_project
# Final Project: Advanced SQL Techniques

## Overview

This project demonstrates the use of **Advanced SQL techniques** using the MySQL RDBMS, based on data from the **City of Chicago**. 
The project includes the use of **joins, views, stored procedures, and transactions** to analyze datasets from:

- Socioeconomic indicators in Chicago
- Chicago public schools
- Chicago crime data

The objective is to build SQL scripts that extract valuable insights, perform updates securely, and demonstrate best practices in relational database management.

## 🧰 Technologies Used
- **MySQL**
- **phpMyAdmin**

## 📁 Database and Tables

The database used: `mysql_learners`

### Tables Created:
1. `chicago_public_schools`
2. `chicago_socioeconomic_data`
3. `chicago_crime`

Data was inserted using three provided SQL dump files.

## 📌 Exercises Breakdown

### 1. Using Joins

#### ✅ Question 1
> List school names, community names, and average attendance for communities with a hardship index of 98.

#### ✅ Question 2
> List all crimes that took place at a school with case number, crime type, and community name.


### 2. Creating a View

Created a view for privacy abstraction including:

- School Name
- Safety Rating
- Family Rating
- Environment Rating
- Instruction Rating
- Leaders Rating
- Teachers Rating


### 3. Creating a Stored Procedure

Procedure: `UPDATE_LEADERS_SCORE`

- **Inputs**: `in_School_ID`, `in_Leader_Score`
- **Updates**: Leader score and icon using IF-ELSE logic

| Score Range | Icon         |
|-------------|--------------|
| 80-99       | Very Strong  |
| 60-79       | Strong       |
| 40-59       | Average      |
| 20-39       | Weak         |
| 0-19        | Very Weak    |

### 4. Using Transactions

Includes:
- **ROLLBACK** on invalid score
- **COMMIT** on valid update

## 🖼️ Screenshots
Located in `/images/` folder.


## ✍️ Author
** Suventhini sivalingam **  
IBM Skills Network — Final Project  
Course: Advanced SQL for Data Scientists
