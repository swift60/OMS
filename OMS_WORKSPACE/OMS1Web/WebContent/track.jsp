<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.OMS1.manager.OrdernoManager"%>
	<%@page import="com.OMS1.DataBean.OrdernoBean"%>
	<%@page import="java.sql.*"%>
<html>
<head>
<title>track</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<% 
OrdernoManager mgr = new OrdernoManager();
String a=request.getParameter("orderno");
long b=Long.parseLong(a);
ResultSet c=mgr.trackoperator(b);
ResultSet d=mgr.trackpicker(b);
ResultSet e=mgr.trackpacker(b);
ResultSet f=mgr.trackshipper(b);
ResultSet g=mgr.trackreport(b);

if(c.next()){

out.print("your order is with operator");
}
else if(d.next()){
out.print("your order is with picker");
}
else if(e.next()){
out.print("your order is with packer");
}
else if(f.next()){
out.print("your order is with shipper");
}
else if(g.next())
{
out.print("your order is delivered");
}
else
{
out.print("enter valid order no");
}
%>
</body>
</html>