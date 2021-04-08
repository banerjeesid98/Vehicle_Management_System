<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Check!</title>
</head>
<body>
	<% String username=request.getParameter("username"); 
	String password=request.getParameter("password"); 
	if((username.equals("admin") && password.equals("1234"))) { 
		session.setAttribute("username",username); 
		response.sendRedirect("adminview"); } 
	else 
		response.sendRedirect("errortemplate"); 
		%>
</body>
</html>