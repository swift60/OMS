<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.OMS1.manager.CustomerManager"%>
	<%@page import="com.OMS1.DataBean.CustomerBean"%>
	<%@page import="java.sql.*"%>
<html>
<head>
<title>forgot</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%
CustomerManager mgr = new CustomerManager();
String a=request.getParameter("email");

ResultSet c=mgr.forgot(a);
if(c.next()){

out.print("password will be sent to be your email");
}
else
{
out.print("your password will be sent to email");
}

 %>
</body>
</html>