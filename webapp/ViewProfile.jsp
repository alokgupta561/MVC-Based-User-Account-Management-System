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
    	background-color: aqua;
		}
		
		
	.container {
    	width: 900px;
    	margin: 100px auto;  
    	padding: 20px;
    	background-color: white;
    	border: 2px solid gray;
    	border-radius: 10px;
    	text-align: center;
    	
}

		
	</style>
</head>
<body>
		<div class = container>
		<center>
				<h1>
					<%
					 	String uname = (String)request.getAttribute("user_name");
						UserBean ub = (UserBean)application.getAttribute("userBean");
						
						out.println("This Session belongs to "+uname+"<br><br>");
						out.println("<u>Profile Details</u><br><br>");
						
						String pwd = ub.getU_pwd();
						
					    String encryptPassword = pwd.substring(0,1) + "*****" + pwd.substring(pwd.length()-1);
						
					    out.println(ub.getU_name()+" "+encryptPassword+" "+ub.getU_pwd()+" "+ub.getU_fname()+" "+ub.getU_lname()+" "+ub.getU_mail()+" "+ub.getU_phn()+"<br><br>");				
					%>
					
					<a href="edit">Edit Profile</a><br><br>
					<a href ="Logout">Logout</a><br><br>
					
					
				</h1>
		</div>
</body>
</html>