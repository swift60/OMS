<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.OMS1.manager.OperatorManager"%>
	<%@page import="java.sql.*" %>
<html>
<head>
<title>packertoshipper</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%
 
OperatorManager mgr = new OperatorManager();
String a = (String)session.getAttribute("ord");
long b = Long.parseLong(a);
mgr.operator(b);

%>
</head>
<body>

</body>
</html>