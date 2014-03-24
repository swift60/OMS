<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>redirect</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%
String a = request.getParameter("submit");
String b = request.getParameter("id");
session.setAttribute("id",b);
if(a.equals("Check Profile"))
response.sendRedirect("checkprofilecomment.jsp"); 
else
response.sendRedirect("deleteuser.jsp"); 
 %>

</body>
</html>