<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.OMS1.manager.AdminManager"%>
<%@page import="com.OMS1.DataBean.AdminBean"%>
<html>
<head>
<title>login</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%
  	
    session.setAttribute("loggedin","false");
	response.sendRedirect("adminlogin.html");






 %>
</body>
</html>