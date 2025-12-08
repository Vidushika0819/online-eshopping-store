🛒 Online E-Shopping Store (Login + Product CRUD)

A simple Java Web Application built using JSP, Servlets, MVC, and MySQL.
This project includes User Login and Product Management (CRUD) using JDBC.

This is a student project demonstrating basic Java web development, servlet handling, and database operations.

✅ Features
🔐 1. User Authentication

User login form

Authentication using MySQL

Session handling

Redirect after login

🛍️ 2. Product Management (CRUD)

Admin can:

Add a new product

Edit product details

Delete product

View all products

🧠 3. MVC Architecture

Project follows a clean structure:

Model → Database logic

Controller → Servlets

View → JSP pages

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
│           │   └── xml.xml
│           │
│           ├── display.jsp
│           ├── login.jsp
│           ├── HomePage.jsp
│           ├── INSERT.jsp
│           └── UPDATE.jsp
│           └── profile.jsp
│
├── database/
│   └── online_shop.sql
│
└── README.md

🛢 Database Tables
1️⃣ users

Used for login authentication

id (INT, PK)
username (VARCHAR)
password (VARCHAR)

2️⃣ products

Used for product CRUD

id (INT, PK)
name (VARCHAR)
price (DECIMAL)
description (TEXT)
image (VARCHAR)  -- optional

⚙️ How to Run the Project
1️⃣ Import Project

Open in Eclipse / IntelliJ / NetBeans
Import as Existing Java Project

2️⃣ Setup Database

Create database:

CREATE DATABASE online_shop;


Import your .sql file inside database/ folder.

3️⃣ Set Database Credentials

Update DBConnection.java:

String url = "jdbc:mysql://localhost:3306/online_shop";
String username = "root";
String password = "";

4️⃣ Deploy on Tomcat

Run the project on Apache Tomcat

Go to:

http://localhost:8080/online-eshopping-store/

🧰 Technologies Used

Java (JSP + Servlets)

JDBC

MySQL

HTML / CSS

Apache Tomcat

MVC Pattern

📄 License

MIT License.
