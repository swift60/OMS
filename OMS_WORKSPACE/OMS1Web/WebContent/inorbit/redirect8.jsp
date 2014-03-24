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
String d = request.getParameter("submit");
String e = request.getParameter("id");
String f = request.getParameter("ord");
session.setAttribute("id",e);
session.setAttribute("ord",f);
if(d.equals("check details"))
response.sendRedirect("fuldetail.jsp"); 
else

response.sendRedirect("admin.jsp"); 
 %>

</body>
</html>