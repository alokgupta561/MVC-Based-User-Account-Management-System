# MVC-Based-User-Account-Management-System
Project Description :

The MVC-Based User Account Management System is a Java web application developed to manage the complete lifecycle of user accounts. The application allows users to register, log in, view their profile information, update their details, and securely log out. It is built using Servlets, JSP, JDBC, and MySQL. The system follows the Model-View-Controller (MVC) architecture to ensure proper separation between the presentation layer, business logic, and data access layer. The DAO design pattern is used to handle database operations in a structured and maintainable way. The main objective of this project is to demonstrate how a dynamic web application can be developed using core Java technologies with clean architecture and modular design.

Objectives :

The primary objective of this project is to implement a secure user authentication system and perform complete CRUD operations using JDBC. It also aims to apply MVC architecture in a real-world web application, use the DAO pattern for database abstraction, manage user sessions properly after login, and deploy the application on Apache Tomcat server.

Technologies Used :

This project is developed using Core Java, Java Servlets, JSP (Java Server Pages), JDBC, and MySQL. HTML5 and CSS3 are used for the frontend interface. The application is deployed on Apache Tomcat and developed using Eclipse IDE.

System Architecture :

The application is structured using MVC architecture. The model layer contains the UserBean class, which represents the user entity, along with DAO classes such as UserRegisterDAO, UserLoginDAO, and UpdateProfileDAO that handle all database interactions. The view layer consists of JSP and HTML files including index.html, Register.jsp, Home.jsp, EditProfile.jsp, UpdateProfile.jsp, and ViewProfile.jsp, which are responsible for displaying data to the user. The controller layer contains Servlets such as UserRegistrationServlet, UserLoginServlet, EditProfileServlet, UpdateProfileServlet, ViewProfileServlet, and LogoutServlet, which process client requests and control the application flow. Database connectivity is managed through DBConnect.java and DBInfo.java.

Functional Modules :

The application includes several functional modules. The user registration module allows new users to create an account and store their information in the database using JDBC. The login module verifies user credentials and creates a session upon successful authentication. The profile viewing module retrieves user data from the database and displays it dynamically using JSP. The edit and update module allows users to modify their profile details and persist changes using the DAO layer. The logout module invalidates the session and redirects the user back to the login page to ensure secure access control.

Database Design :

The application uses MySQL as the database. It contains a users table with fields such as id, name, email, password, and phone. JDBC with PreparedStatement is used to execute SQL queries securely and prevent SQL injection. Database connection handling is separated into dedicated classes to maintain clean code structure.

Application Flow :

When a user accesses the application, they can either register a new account or log in with existing credentials. After successful login, a session is created to maintain the user’s authenticated state. The user can then view or update profile details. When the user chooses to log out, the session is invalidated and the application redirects back to the login page.

Project Structure :

The source code is organized into separate packages under src/main/java for model, DAO, and servlet classes. The view components including JSP, HTML, and CSS files are placed under src/main/webapp. This structure ensures a clear separation between backend logic and frontend presentation.

How to Run the Application :

To run the application, clone the repository and import it into Eclipse as a Dynamic Web Project. Configure the MySQL database and create the required users table. Update the database credentials inside DBConnect.java. Add the MySQL Connector JAR file to the project build path. Deploy the project on Apache Tomcat and access it through the appropriate localhost URL.

Key Concepts Implemented :

This project demonstrates practical implementation of MVC architecture, DAO design pattern, servlet lifecycle, session management, JDBC with PreparedStatement, CRUD operations, form handling, and web application deployment on Tomcat server.

Future Improvements

Future enhancements may include implementing password encryption using hashing techniques, improving input validation, adding role-based access control, migrating the application to Spring Boot, and creating a REST API version of the system.

