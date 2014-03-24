<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.OMS1.manager.CustomerManager"%>
<%@page import="com.OMS1.DataBean.CustomerBean"%>
<html>
<head>
<title>account</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%
CustomerBean ubean = (CustomerBean)session.getAttribute("usercreds");
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname"); 

String email = request.getParameter("email");
String contact = request.getParameter("contact");
String dob = request.getParameter("dob");


ubean.setCUSTOMER_FIRSTNAME(firstname);
ubean.setCUSTOMER_LASTNAME(lastname);

ubean.setCONTACT(Long.parseLong(contact));
ubean.setEMAIL(email);
ubean.setDOB(dob);

CustomerManager mgr = new CustomerManager();
int i=mgr.updateprofile(ubean.getUSERNAME(),ubean);
 if(i>0)
 {
 	out.print("Your Profile has been updated.. <a href='accountsetting1.jsp'>HOME </a>");
 }
 else
 {
 	out.print("Error");
  }
  %>	

</body>
</html>