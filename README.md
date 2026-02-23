# MVC-Based-User-Account-Management-System
1. Project Description

Secure User Account Management System is a Java-based web application that provides complete user account lifecycle management. The application allows users to register, authenticate, view their profile, update profile details, and logout securely.

This project is developed using Servlets, JSP, JDBC, and MySQL, and follows the MVC (Model-View-Controller) architecture along with the DAO design pattern to maintain proper separation of concerns.

The goal of this project is to demonstrate a structured approach to building a dynamic web application using core Java technologies.

2. Objectives

Implement secure user authentication
Perform CRUD operations using JDBC
Apply MVC architecture in a web application
Use DAO pattern for database abstraction
Manage user sessions properly
Deploy a Java web application on Apache Tomcat

3. Technologies Used

Core Java
Java Servlets
JSP (Java Server Pages)
JDBC
MySQL
HTML5
CSS3
Apache Tomcat
Eclipse IDE

4. System Architecture
This application follows the MVC architecture.

Model :

UserBean.java – Represents the user entity
DAO classes handle database operations:
UserRegisterDAO.java
UserLoginDAO.java
UpdateProfileDAO.java

View :
JSP and HTML pages :

index.html
Register.jsp
Home.jsp
EditProfile.jsp
UpdateProfile.jsp
ViewProfile.jsp

Controller :

Servlets that handle client requests:
UserRegistrationServlet.java
UserLoginServlet.java
EditProfileServlet.java
UpdateProfileServlet.java
ViewProfileServlet.java
LogoutServlet.java

Database connectivity is managed through :

DBConnect.java
DBInfo.java

5. Functional Modules
   
User Registration : Allows new users to create an account. User data is validated                        and stored in the database using JDBC.

User Login : Authenticates user credentials against the database. On successful                   login, a session is created and the user is redirected to the home page.

View Profile : Fetches user details from the database and displays them dynamically                 using JSP.
Edit and Update Profile : Allows users to modify their profile information. Updated                            data is persisted using the DAO layer.

Logout :  Invalidates the active session and redirects the user to the login page.

6. Database Design

Database: MySQL
Table: users

Example table structure:

id (Primary Key, INT)
name (VARCHAR)
email (VARCHAR)
password (VARCHAR)
phone (VARCHAR)
JDBC is used with PreparedStatement to execute SQL queries securely.

7. Application Flow

User accesses the application.
If not registered, user creates a new account.
User logs in using registered credentials.
A session is created after successful authentication.
User can view and update profile details.
User logs out and session is invalidated.

8. Project Structure :
 
src/main/java/com.pack1
    DBConnect.java
    DBInfo.java
    UserBean.java
    UserRegisterDAO.java
    UserLoginDAO.java
    UpdateProfileDAO.java
    UserRegistrationServlet.java
    UserLoginServlet.java
    EditProfileServlet.java
    UpdateProfileServlet.java
    ViewProfileServlet.java
    LogoutServlet.java

src/main/webapp
    index.html
    Register.jsp
    Home.jsp
    EditProfile.jsp
    UpdateProfile.jsp
    ViewProfile.jsp
    style.css
    
9. How to Run the Application

 Clone the repository.
Import the project into Eclipse as a Dynamic Web Project.
Configure MySQL and create the required table.
Update database credentials in DBConnect.java.
Add MySQL Connector JAR to the project.
Deploy the application on Apache Tomcat.

10. Key Concepts Implemented

MVC architecture
DAO design pattern
Servlet lifecycle
Session management
JDBC with PreparedStatement
CRUD operations
Form handling
Web application deployment

11. Future Improvements

Password encryption using hashing
Input validation improvements
Role-based access control
Integration with Spring Boot
REST API version of the application

