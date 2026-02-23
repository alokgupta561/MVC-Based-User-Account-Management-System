<%@page import="com.pack1.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
		body {
    margin: 0;
    padding: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(135deg, #4e73df, #1cc88a);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Main Card */
.container {
    background: #ffffff;
    width: 500px;
    padding: 40px;
    border-radius: 12px;
    text-align: center;
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
}

/* Welcome Text */
h1 {
    margin-bottom: 30px;
    color: #333;
    font-size: 24px;
}

/* Link Container */
.links {
    display: flex;
    flex-direction: column;
    gap: 15px;
}

/* Buttons */
a {
    text-decoration: none;
    padding: 12px;
    border-radius: 8px;
    font-weight: 600;
    background-color: #4e73df;
    color: white;
    transition: 0.3s ease;
}

a:hover {
    background-color: #2e59d9;
    transform: translateY(-3px);
}
</style>

</head>
<body>
	<div class="container">
	<center>
			<h1>
				<%
					UserBean ub = (UserBean)application.getAttribute("userBean");
				
					out.println("Welcome "+ub.getU_fname()+"<br><br>");
				%>
				
				<a href="view">View Profile</a><br><br>
				<a href ="Logout">Logout</a><br><br>
			
			</h1>
			</div>
</body>
</html>