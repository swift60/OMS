<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.OMS1.manager.CustomerManager"%>
<%@page import="com.OMS1.DataBean.CustomerBean"%>
<%@page import="java.util.*" %>
<%@page import="java.text.*" %>
<html>
<head>
<title>register</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%
CustomerBean ubean = new CustomerBean();
CustomerManager mgr =  new CustomerManager();
String username = request.getParameter("username");
String password = request.getParameter("password");
String email = request.getParameter("email");
String contact = request.getParameter("contact");
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String day = request.getParameter("day");
String month = request.getParameter("month");
String year = request.getParameter("year");
String dob= day+"-"+month+"-"+year;



ubean.setCUSTOMER_FIRSTNAME(firstname);
ubean.setCUSTOMER_LASTNAME(lastname);
ubean.setCONTACT(Long.parseLong(contact));
ubean.setEMAIL(email);
ubean.setUSERNAME(username);
ubean.setPASSWORD(password);
ubean.setDOB(dob);
  	
 int i=mgr.register(ubean);
 if(i>0)
 {
 	out.print("Registered Sucessfully.. <a href='index.html'>Login </a>");
 }
 else
 {
 	out.print("Error Registering. <a href='signup.html'>Click here to try again.</a>");
 }
 
 %>

</body>
</html>