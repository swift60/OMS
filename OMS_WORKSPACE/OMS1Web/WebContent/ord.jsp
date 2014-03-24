<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.OMS1.manager.BagManager"%>
<%@page import="com.OMS1.DataBean.BagBean"%>
<%@page import="com.OMS1.manager.CustomerManager"%>
<%@page import="com.OMS1.DataBean.CustomerBean"%>
<html>
<head>
<title>ord</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


</head>
<body>
<%
//CustomerBean ubean = (CustomerBean)session.getAttribute("usercreds");
//BagBean ubean = (BagBean)session.getAttribute("bagcreds");
BagBean ubean = new BagBean();
String price = request.getParameter("price");
String name = request.getParameter("name"); 
String quantity = request.getParameter("quantity");
String color = request.getParameter("color");
String customer_id=request.getParameter("customer_id");

ubean.setPRICE(Long.parseLong(price));
ubean.setMODEL_NAME(name);
ubean.setQUANTITY(Integer.parseInt(quantity));
ubean.setCOLOR(color);
ubean.setCUSTOMER_ID(Integer.parseInt(customer_id));

BagManager mgr = new BagManager();
int i=mgr.register(ubean,price,quantity);
 if(i>0)
 {
 	out.print("Your cart has been updated.. <a href='home.jsp'>HOME </a>");
 }
 else
 {
 	out.print("Error");
  }
  %>	

</body>
</html>