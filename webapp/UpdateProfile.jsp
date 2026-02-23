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
        background: linear-gradient(to right, #4facfe, #00f2fe);
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 400px;
        margin: 120px auto;
        background-color: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 5px 15px rgba(0,0,0,0.2);
        text-align: center;
    }

    h1 {
        color: #333;
        font-size: 22px;
    }

    a {
        display: block;
        text-decoration: none;
        background-color: #4facfe;
        color: white;
        padding: 10px;
        margin: 10px 0;
        border-radius: 5px;
        font-weight: bold;
        transition: 0.3s;
    }

    a:hover {
        background-color: #0077ff;
    }
</style>


</head>
<body>
	
	    <div class="container">
	
	<h1>
		<%
			 UserBean ub= (UserBean)application.getAttribute("userBean");	
			String data = (String)request.getAttribute("msg");
			out.println("This Session belongs to "+data+"<br><br>");
			out.println(data+"<br><br>");

		%>
		<br><br>
		<a href="view" >View Profile</a><br><br>
		<a href="logout">Logout</a>
	
	</h1>
	</div>
</body>
</html>