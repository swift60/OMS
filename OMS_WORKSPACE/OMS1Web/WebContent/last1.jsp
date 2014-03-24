<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.OMS1.manager.CustomerManager"%>
<%@page import="com.OMS1.DataBean.CustomerBean"%>
<%@page import="com.OMS1.manager.OrdersManager"%>
<%@page import="com.OMS1.DataBean.OrdersBean"%>
<%@page import="com.OMS1.manager.OrdernoManager"%>
<%@page import="com.OMS1.DataBean.OrdernoBean"%>
<%@page import="com.OMS1.manager.BagManager"%>
<%@page import="java.sql.*"%>
<html>
<head>
<title>CONFIRM</title>
 



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%

CustomerBean ubean = (CustomerBean)session.getAttribute("usercreds");
BagManager imgr = new BagManager();
OrdernoManager ONmgr = new OrdernoManager();
OrdernoBean rbean = new OrdernoBean();
ResultSet rs = imgr.getbag(ubean.getCUSTOMER_ID());
while(rs.next())
{
OrdersBean abean = new OrdersBean();
OrdersManager xmgr = new OrdersManager();

int bag_id = rs.getInt("BAG_ID");
String model_name = rs.getString("MODEL_NAME");
Long price = rs.getLong("PRICE");
int qty = rs.getInt("QUANTITY");
Long total = rs.getLong("TOTAL");
String b =request.getParameter("saddress_id");
abean.setBAG_ID(bag_id );
abean.setMODEL_NAME(model_name);
abean.setPRICE(price);
abean.setQUANTITY(qty );
abean.setTOTAL(total);
abean.setCUSTOMER_ID(ubean.getCUSTOMER_ID());
rbean.setSADDRESS_ID(Integer.parseInt(b));
session.setAttribute("saddress",b);
int i=xmgr.newbag(abean, rbean.getSADDRESS_ID());
}
int j=imgr.remove(ubean.getCUSTOMER_ID());


ONmgr.genord(rbean.getSADDRESS_ID());
out.print("Your order will be delivered shortly. Thanks for shopping with us!!!<a href='orderno.jsp'>HOME </a>");


%>
</body>
</html>