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
User_DetailsBean fbean = new User_DetailsBean();
User_DetailsManager mgr =  new User_DetailsManager();


String emailid = request.getParameter("emailid");
String contact_no = request.getParameter("contact_no");
String name = request.getParameter("name");




fbean.setU_NAME(name);

fbean.setCONTACT_NO(Long.parseLong(contact_no));
fbean.setEMAILID(emailid);



  	
 int i=mgr.updateprofile(fbean.getUSERNAME(),fbean);
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