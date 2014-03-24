<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.OMS1.manager.CustomerManager"%>
<%@page import="com.OMS1.DataBean.CustomerBean"%>
<html>
<head>
<title>login</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
CustomerManager mgr = new CustomerManager();
boolean flag=mgr.login(username,password);
if(flag)
{
   	System.out.print("tested");
   	CustomerManager umgr = new CustomerManager();
    CustomerBean ebean = umgr.getdetails(username);
    session.setAttribute("loggedin","true");
	session.setAttribute("usercreds",ebean);
	response.sendRedirect("home.jsp");
}
else
{
    	response.sendRedirect("index1.html");
}




 %>
</body>
</html>