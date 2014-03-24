<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.OMS1.manager.CustomerManager"%>
<%@page import="com.OMS1.DataBean.CustomerBean"%>
<html>
<head>
<title>changepassword</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%
CustomerBean ubean = (CustomerBean)session.getAttribute("usercreds");
CustomerBean ebean=(CustomerBean)CustomerManager.userProfileCache.get(ubean.getUSERNAME());
CustomerManager amgr = new CustomerManager();
String password = request.getParameter("Pass");
String npassword = request.getParameter("NewPass");
String pwd = ebean.getPASSWORD();
if(pwd.equals(password))
{
int i = amgr.changepassword(ebean,password,npassword);
 if(i>0)
 {
 	out.print("Password Changed.. <a href='profile.jsp'>HOME </a>");
 }
 else
 {
 	out.print("Error");
 }
 }
 else
 {
 out.print("It seems like you entered an invalid password.. <a href='profile.jsp'>HOME</a>");
 }
 %>


</body>
</html>