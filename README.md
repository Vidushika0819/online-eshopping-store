🏨 Hotel Reservation System 

A web-based Hotel Reservation Management System built using HTML, CSS, PHP, and MySQL.
This project includes user reservation booking, admin management, venue/room handling, and full CRUD operations for users, reservations, and venues.

🔧 Features

👤 User Features

User registration and login

Search and book available hotel rooms/venues

View all reservations

Cancel reservations

🛠️ Admin Features

Manage users (CRUD)

Manage venues/rooms (CRUD)

Manage reservations (CRUD)

Upload venue images

View booking history

💳 Payment Simulation

Simple payment page for demo purposes (no real payment processing)

🛠 Tech Stack

Backend: PHP
Frontend: HTML, CSS
Database: MySQL (SQL dump included)
Local Development: XAMPP / WAMP / LAMP

🚀 Quick Setup (Local Development)
1. Install a local server

XAMPP (Windows)

WAMP (Windows)

LAMP (Linux)

2. Add project to your server

Place your project folder in:

XAMPP → C:\xampp\htdocs\hotel-reservation-system

3. Create the database

Open phpMyAdmin → create:

hotel_reservation_db

4. Import SQL

Inside phpMyAdmin:

Select hotel_reservation_db

Click Import

Choose file:

database/hotel_reservation.sql


Or via terminal:

mysql -u root -p hotel_reservation_db < hotel_reservation.sql

5. Configure database connection

Open your DB connection file (example: db_connect.php, config.php, etc.):

$conn = new mysqli('localhost','root','','hotel_reservation_db');

6. Run the project

Start Apache + MySQL.

Open:

http://localhost/hotel-reservation-system/src/index.php

📁 Project Structure
hotel-reservation-system/
│
├─ src/                 # PHP pages (user + admin)
│
├─ assets/
│   ├─ images/          # Images for UI
│   └─ uploads/         # Venue image uploads
│
├─ database/
│   └─ hotel_reservation.sql
│
└─ README.md

✅ Notes & Tips

Do not commit sensitive config files (use .gitignore)

Always sanitize inputs to avoid SQL injection

Add temporary admin login details here (optional for reviewers)

📞 Contact

Vidushika Madhushani
GitHub: Vidushika0819
Email: (optional — add only if you want)

📄 License

This project is released under the MIT License.
See LICENSE for details.
