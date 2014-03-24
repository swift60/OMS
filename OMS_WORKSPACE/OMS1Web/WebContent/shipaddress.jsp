
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.OMS1.manager.Ship_AddressManager"%>
<%@page import="com.OMS1.DataBean.Ship_AddressBean"%>
<%@page import="java.util.*" %>
<%@page import="java.text.*" %>
<html>
<head>
<title>register</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%
Ship_AddressBean ubean = new Ship_AddressBean();
Ship_AddressManager mgr =  new Ship_AddressManager();
String hno = request.getParameter("hno");
String street = request.getParameter("street");
String landmark = request.getParameter("landmark");
String district = request.getParameter("district");
String city = request.getParameter("city");
String state = request.getParameter("state");
String pincode=request.getParameter("pincode");
String customer_id=request.getParameter("customer_id");
session.setAttribute("cid",customer_id);
ubean.setDISTRICT(district);
ubean.setSTREET(street);
ubean.setHNO(Integer.parseInt(hno));
ubean.setLANDMARK(landmark);
ubean.setCITY(city);
ubean.setSTATE(state);
ubean.setPINCODE(Long.parseLong(pincode));
ubean.setCUSTOMER_ID(Integer.parseInt(customer_id));
mgr.register(ubean);
response.sendRedirect("last.jsp");

%>
</body>


</html>