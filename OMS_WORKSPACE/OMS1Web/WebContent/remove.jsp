<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.OMS1.manager.BagManager"%>
<%@page import="com.OMS1.DataBean.BagBean"%>
<html>
<head>
<title>remove</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%
BagBean ubean = new BagBean();
String bag_id = request.getParameter("bag_id");

ubean.setBAG_ID(Integer.parseInt(bag_id));

BagManager amgr = new BagManager();
int i = amgr.rem(ubean);
 if(i>0)
 {
 	out.print("Your product has been deleted. <a href='home.jsp'>CART </a>");
 }
 else
 {
 	out.print("Error");
  }
  
 %>

</body>
</html>