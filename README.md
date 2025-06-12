# 📚 Book Shop Management System - Java CRUD Web App

![Java](https://img.shields.io/badge/Java-17-blue)
![MySQL](https://img.shields.io/badge/MySQL-8.0-orange)
![Tomcat](https://img.shields.io/badge/Apache_Tomcat-9.0-red)

A full-stack web application for managing book inventory with secure user authentication and CRUD operations.

## ✨ Features
- **User Authentication**: Login/Register with password security
- **Book Management**: Add/Edit/Delete books (Admin-only)
- **Database Integration**: MySQL for persistent data storage
- **Search Functionality**: Dynamic filtering of books
- **MVC Architecture**: JSP (View), Servlets (Controller), Java Classes (Model)

## 🛠 Tech Stack
- **Backend**: Java Servlets
- **Frontend**: JSP, HTML/CSS
- **Database**: MySQL
- **Server**: Apache Tomcat 9
- **IDE**: Eclipse

## 🚀 Setup Guide

### Prerequisites
- Java 17+
- MySQL 8.0+
- Tomcat 9+

### Installation
1. Clone the repo:
   ```bash
   git clone https://github.com/Dinusha8963/Java-CRUD-Web-Application-with-MySQL-Tomcat-My-Book-Shop-Project-.git
   ```
2. Import the project in Eclipse as "Dynamic Web Project"
3. Set up MySQL database:
   ```sql
   CREATE DATABASE bookshop;
   USE bookshop;
   -- Run the SQL scripts from /database folder
   ```
4. Configure `DBConnection.java` with your MySQL credentials
5. Deploy on Tomcat server

## 📸 Screenshots
| Login Page | Book Dashboard |
|------------|----------------|
| ![Login](screenshots/login.png) | ![Dashboard](screenshots/dashboard.png) |

## 🌟 Future Enhancements
- Add shopping cart functionality
- Implement responsive design with Bootstrap
- Dockerize the application
