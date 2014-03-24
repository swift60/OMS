<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.OMS1.manager.User_DetailsManager"%>
<%@page import="com.OMS1.DataBean.User_DetailsBean"%>
<%@page import="java.util.*" %>
<%@page import="java.text.*" %>
<html>
<head>
<title>register</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%
User_DetailsBean ubean = new User_DetailsBean();
User_DetailsManager mgr =  new User_DetailsManager();
String username = request.getParameter("username");
String password = request.getParameter("password");
String email = request.getParameter("email");
String contact = request.getParameter("contact");
String uname = request.getParameter("uname");
String address = request.getParameter("address");
String role = request.getParameter("role");



ubean.setU_NAME(uname);

ubean.setCONTACT_NO(Long.parseLong(contact));
ubean.setEMAILID(email);
ubean.setUSERNAME(username);
ubean.setPASSWORD(password);
ubean.setADDRESS(address);
ubean.setROLE_ID(Integer.parseInt(role));

  	
 int i=mgr.register(ubean);
 if(i>0)
 {
 	out.print("registered successfully.<a href='adminhome.jsp'>login:</a>");
 }
 else
 {
 	out.print("Error Registering. <a href='usersignup.html'>Click here to try again.</a>");
 }
 
 %>

</body>
</html>