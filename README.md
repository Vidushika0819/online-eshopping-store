🛒 Online E-Shopping Store (Login + Product CRUD)

A simple Java Web Application built using JSP, Servlets, MVC, and MySQL.
This project includes User Login and Product Management (CRUD) using JDBC.

This is a student project demonstrating basic Java web development, MVC, and database handling.

✅ Features
🔐 1. User Authentication

Login form

Authentication with MySQL

Session handling

Redirect after login

🛍️ 2. Product Management (CRUD)

Admin can:

Add new products

Edit product details

Delete products

View all products

🧠 3. MVC Architecture

The project follows the MVC structure:

Model → Database logic

View → JSP pages

Controller → Servlets

📂 Project Structure

online-eshopping-store/
│
├── src/
│   └── main/
│       ├── java/
│       │   ├── login/
│       │   │   ├── DBConnection.java
│       │   │   ├── LoginController.java
│       │   │   ├── LoginModel.java
│       │   │   └── LoginServlet.java
│       │   │
│       │   └── store/
│       │       ├── DBConnection.java
│       │       ├── StoreModel.java
│       │       ├── StoreControl.java
│       │       ├── InsertServlet.java
│       │       ├── UpdateServlet.java
│       │       ├── DeleteServlet.java
│       │       └── GetAllServlet.java
│       │
│       └── webapp/
│           ├── css/
│           ├── js/
│           ├── images/
│           │
│           ├── WEB-INF/
│           │   └── web.xml
│           │
│           ├── display.jsp
│           ├── login.jsp
│           ├── HomePage.jsp
│           ├── INSERT.jsp
│           ├── UPDATE.jsp
│           └── profile.jsp
│
├── database/
│   └── online_shop.sql
│
└── README.md

🛢 Database Tables
1. users

Used for login authentication:

Column	Type
id	INT (PK)
username	VARCHAR
password	VARCHAR
2. products

Used for product CRUD:

Column	Type
id	INT (PK)
name	VARCHAR
price	DECIMAL
description	TEXT
image	VARCHAR (optional)
⚙️ How to Run the Project
1. Import Project

Open Eclipse / IntelliJ / NetBeans

Import as Existing Java Project

2. Setup Database

Create the database:

CREATE DATABASE online_shop;


Import the .sql file from the database/ folder.

3. Configure Database Connection

Open DBConnection.java and update:

String url = "jdbc:mysql://localhost:3306/online_shop";
String username = "root";
String password = "";

4. Run on Tomcat

Start Apache Tomcat
Go to:

http://localhost:8080/online-eshopping-store/

🧰 Technologies Used

Java (JSP + Servlets)

JDBC

MySQL

HTML / CSS

Apache Tomcat

MVC Architecture

📄 License

This project is licensed under the MIT License.
