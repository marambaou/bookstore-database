 Overview
This project involves designing and implementing a MySQL database for a Bookstore to manage books, authors, customers, orders, and shipping. The goal is to create a structured, efficient, and secure database system that supports data storage, retrieval, and analysis.

Tools & Technologies
MySQL – Database management

Draw.io – ER diagram & schema visualization

 Prerequisites
Before starting, ensure you are familiar with:
 Basic MySQL commands
 Table creation with appropriate data types
 User management & security best practices

  Project Objectives
 Design a relational database for a bookstore
 Create tables with proper relationships
 Implement user roles & permissions
 Test the database with SQL queries

  Database Schema
The database consists of the following tables:

Table	Description
1. author	Stores author details (name, education, origin)
2. book_language	Lists book languages (English, Spanish, etc.)
3. publisher	Contains publisher information
4. books	Stores book details (title, publisher, language)
5. books_author	Manages many-to-many relationship between books and authors
6. country	List of countries for addresses
7. address_status	Statuses for addresses (Active, Inactive, etc.)
8. address	Stores customer addresses
9. customers	Contains customer details (name, email, phone)
10. customer_address	Links customers to their addresses
11. shipping_method	Available shipping methods (Standard, Express, etc.)
12. order_status	Possible order statuses (Pending, Shipped, Delivered)
13. customer_order	Records customer orders
14. order_line	Lists books in each order
15. order_history	Tracks order status changes over time
 Step-by-Step Implementation
1 Database & Table Creation
Run the SQL script to:
 Create the bookstore database
 Define all tables with proper data types and constraints

 File: database_setup.sql

2 User Roles & Permissions
Set up user roles with appropriate access levels:

Admin (Full access)

Manager (Read/Write access)

Staff (Limited write access)

Customer (Read-only access)

 File: user_roles.sql

3 Test Queries
Verify database functionality with:
✔ Basic SELECT queries
✔ JOIN operations (books + authors, orders + customers)
✔ Aggregation queries (best-selling books, monthly sales)

 File: test_queries.sql

4 Permission Testing
Ensure role-based access control works correctly:

Customers can view books but not modify them

Staff can update orders but not delete books

Admin has full control

 File: test_permissions.sql

📊 Expected Outcomes
By completing this project, you will:
 Understand database design for real-world applications
 Gain experience in MySQL table creation & relationships
 Learn user access control with roles & permissions
 Develop SQL querying skills for data analysis

 Project Files
File	Purpose
database_setup.sql	Creates database & tables
user_roles.sql	Defines roles & permissions
test_queries.sql	Tests data retrieval & analysis
test_permissions.sql	Validates role-based access
 How to Run
Execute database_setup.sql to create the database.

Run user_roles.sql to set up permissions.

Test with test_queries.sql and test_permissions.sql.

 Conclusion
This project provides hands-on experience in database design, SQL, and security—essential skills for any database administrator or backend developer.
