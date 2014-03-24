<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.OMS1.manager.Ship_AddressManager"%>
<%@page import="com.OMS1.DataBean.Ship_AddressBean"%>

<%@page import="java.sql.*"%>

<html>
<head>


<title>shippingdetails</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>

 <table>
<%
Ship_AddressManager dmgr = new Ship_AddressManager();
String z = (String)session.getAttribute("id");
int b = Integer.parseInt(z);

ResultSet rbean = dmgr.getinfo(b);
while( rbean.next()){
%>
<tr><td>HNO</td><td><%=rbean.getInt("HNO") %></td></tr>
<tr><td>STREET:</td><td><%=rbean.getString("STREET")%></td></tr>
<tr><td>CITY:</td><td><%=rbean.getString("CITY") %></td></tr>
<tr><td>DISTRICT</td><td><%=rbean.getString("DISTRICT") %></td></tr>
<tr><td>STATE</td><td><%=rbean.getString("STATE") %></td></tr>
<tr><td>LANDMARK</td><td><%=rbean.getString("LANDMARK") %></td></tr>
<tr><td>PINCODE</td><td><%=rbean.getLong("PINCODE") %></td></tr>


<% 
}
%>
</table>
</body>
</html>