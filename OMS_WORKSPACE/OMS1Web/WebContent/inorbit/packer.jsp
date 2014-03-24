<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.OMS1.manager.PackerManager"%>
	<%@page import="java.sql.*" %>
<html>
<head>
<title>pickertopacker</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%
 
PackerManager mgr = new PackerManager();
String a = (String)session.getAttribute("ord");
long b = Long.parseLong(a);
mgr.packer(b);

%>
</head>
<body>

</body>
</html>