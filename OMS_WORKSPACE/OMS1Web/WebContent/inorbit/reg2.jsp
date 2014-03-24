<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.OMS1.manager.AdminManager"%>
<%@page import="com.OMS1.DataBean.AdminBean"%>
<%@page import="java.util.*" %>
<%@page import="java.text.*" %>
<html>
<head>
<title>register</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%
AdminBean ubean = new AdminBean();
AdminManager mgr =  new AdminManager();
String username = request.getParameter("username");
String password = request.getParameter("password");
String email = request.getParameter("email");
String contact = request.getParameter("contact");
String ename = request.getParameter("ename");




ubean.setEMP_NAME(ename);

ubean.setTEL_NO(Long.parseLong(contact));
ubean.setEMAILID(email);
ubean.setUSERNAME(username);
ubean.setPASSWORD(password);



  	
 int i=mgr.register(ubean);
 if(i>0)
 {
 	out.print("Registered Sucessfully.. <a href='adminlogin.html'>Login </a>");
 }
 else
 {
 	out.print("Error Registering. <a href='adminreg.html'>Click here to try again.</a>");
 }
 
 %>

</body>
</html>