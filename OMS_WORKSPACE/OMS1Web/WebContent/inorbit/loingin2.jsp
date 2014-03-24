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
String username = request.getParameter("username");
String password = request.getParameter("password");
AdminManager mgr = new AdminManager();
boolean flag=mgr.login(username,password);
if(flag)
{
   	AdminManager umgr = new AdminManager();
    AdminBean ebean = umgr.getdetails(username);
    session.setAttribute("loggedin","true");
	session.setAttribute("admincreds",ebean);
	response.sendRedirect("adminhome.jsp");
}
else
{
    	response.sendRedirect("adminlogin.html");
}




 %>
</body>
</html>