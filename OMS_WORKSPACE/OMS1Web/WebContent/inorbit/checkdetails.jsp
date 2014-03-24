<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
		<%@page import="com.OMS1.manager.OrdersManager"%>
	<%@page import="com.OMS1.DataBean.OrdersBean"%>
	<%@page import="java.sql.*"%>
<html>
<head>
<title>checkdetails</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<table><tr>
<th>Bag Id</th> 
<th>Model Name</th>
<th>Price</th>
<th>Quantity</th>
<th>Total</th></tr> 
<%
OrdersManager mgr = new OrdersManager();
String a = (String)session.getAttribute("id");
int b = Integer.parseInt(a);
ResultSet rs = mgr.getdet(b);
long tot = 0;
while(rs.next())
{
int bag_id = rs.getInt("BAG_ID");
String model_name = rs.getString("MODEL_NAME");
Long price = rs.getLong("PRICE");
int qty = rs.getInt("QUANTITY");
Long total = rs.getLong("TOTAL");
out.print("<tr><td>"+bag_id+"</td><td>"+model_name+"</td><td>"+price+"</td><td>"+qty+"</td><td>"+total+"</td></tr>");
tot=tot+total;
}
long G_total=12*tot/100+tot+100;
long tax=tot*12/100;
%>
</table>
<table>
<%
out.print("<tr><td>VAT Tax :</td><td>12%</td><td>"+tax+"</td></tr><tr><td>Shipping Charges</td><td>Rs 100</td></tr><tr><td>Grand total</td><td>"+G_total+"</td></tr>");

 %>
</table>


</body>
</html>