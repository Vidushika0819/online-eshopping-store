# Online E-Shopping Store (Student Project)

This is a simple Java Servlet + JSP based web application created as a university student project.  
The system includes **Login functionality** and **Store (Stock) Management CRUD operations** using JDBC and MySQL.

---

## 📌 Project Features

### 🔐 1. Login Module
- User login page (JSP)
- Login validation using database
- `LoginServlet.java` → handles login request  
- `LoginModel.java` → contains login data  
- `LoginController.java` → handles business logic  
- `DBConnection.java` → connects to MySQL

### 🏪 2. Store / Stock Management Module
All CRUD operations are implemented:

#### ✔️ Create  
`InsertServlet.java` – add new store item into database

#### ✔️ Read  
`GetAllServlet.java` – retrieve all items and show in JSP table

#### ✔️ Update  
`UpdateServlet.java` – update item details

#### ✔️ Delete  
`DeleteServlet.java` – remove item from database

#### ✔️ MVC Structure  
- `StoreModel.java` – represents store item  
- `StoreControl.java` – business logic  
- JSP pages inside `webapp/` folder display UI

---

## 🗂️ Project Folder Structure

online-eshopping-store/
│
├── src/
│ └── main/
│ ├── java/
│ │ ├── login/
│ │ │ ├── DBConnection.java
│ │ │ ├── LoginModel.java
│ │ │ ├── LoginController.java
│ │ │ └── LoginServlet.java
│ │ └── store/
│ │ ├── StoreModel.java
│ │ ├── StoreControl.java
│ │ ├── InsertServlet.java
│ │ ├── UpdateServlet.java
│ │ ├── DeleteServlet.java
│ │ └── GetAllServlet.java
│ │
│ └── webapp/
│ ├── css/
│ ├── js/
│ ├── images/
│ ├── WEB-INF/
│ ├── META-INF/
│ └── *.jsp
│
├── .classpath
├── .project
└── LICENSE


---

## 🛢️ Database Information

Create a MySQL database with tables for:

### **1. Login Table (Example)**
```sql
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(100),
  password VARCHAR(100)
);

2. Store Items Table (Example)

CREATE TABLE store_items (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  quantity INT,
  price DOUBLE
);

🛠️ Technologies Used

Java Servlets

JSP

JDBC

MySQL

Apache Tomcat

MVC Architecture

📄 License

This project is released under the MIT License.
You can use, modify, and share this code freely.

✨ Author

Vidushika
Undergraduate Software Engineering Student
