<%@page import="com.pack1.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="<%=request.getContextPath()%>/style.css">


</head>
<body>
	<div class="container">
		<h1>
			<%
				UserBean ub = (UserBean)application.getAttribute("userBean");
				String uname = (String)request.getAttribute("user_name");
				out.println("This Session belongs to "+uname+"<br><br>");
				out.println("<u>Edit Profile</u><br><br>");
			%>
			
			<form action = "update" method ="post">
			
			FirstName <input type="text" name="u_fname" value="<%= ub.getU_fname() %>"/><br><br>
			LastName <input type="text" name="u_lname" value="<%= ub.getU_lname() %>"/><br><br>
			MailId <input type="text" name="u_mail" value="<%= ub.getU_mail() %>"/><br><br>
			Phone <input type="text" name="u_phn" value="<%= ub.getU_phn() %>"/><br><br>
			<input type = "submit" value = "Update">
						
			</form>
		
		</h1>
		</div>
</body>
</html>