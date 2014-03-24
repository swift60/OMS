<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.OMS1.manager.CustomerManager"%>
<%@page import="com.OMS1.DataBean.CustomerBean"%>
<%@page import="com.OMS1.manager.OrdersManager"%>
<%@page import="com.OMS1.DataBean.OrdersBean"%>
<%@page import="com.OMS1.manager.BagManager"%>
<%@page import="java.sql.*"%>
<html>
<head>
<title>login</title>
 



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%

CustomerBean ubean = (CustomerBean)session.getAttribute("usercreds");

BagManager imgr = new BagManager();
int j= imgr.remove(ubean.getCUSTOMER_ID());
session.setAttribute("loggedin","false");
	response.sendRedirect("index.html");
if(j>0)
 {
 
 session.setAttribute("loggedin","false");
	response.sendRedirect("index.html");
 
 	
 }
    
else
 {
 	out.print("Error ");
 }




 %>
</body>
</html>