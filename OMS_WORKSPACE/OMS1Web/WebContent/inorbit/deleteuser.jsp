<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.OMS1.manager.User_DetailsManager"%>
<html>
<head>
<title>deleteuser</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%
String a = (String)session.getAttribute("id");
int b = Integer.parseInt(a);
User_DetailsManager mgr = new User_DetailsManager();
mgr.deleteuser(b);
response.sendRedirect("checkprofile.jsp");
 %>

</body>
</html>