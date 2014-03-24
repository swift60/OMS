<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.OMS1.manager.User_DetailsManager"%>
<%@page import="com.OMS1.DataBean.User_DetailsBean"%>
<html>
<head>
<title>role</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<% 
User_DetailsBean ubean = (User_DetailsBean)session.getAttribute("usercreds");
int role =(Integer.parseInt( request.getParameter("role")));
String uname=request.getParameter("uname");
ubean.setROLE_ID(role);
User_DetailsManager mgr = new User_DetailsManager();
int i=mgr.updateprofile(uname,ubean);
 if(i>0)
 {
 	out.print("Your Profile has been updated.. <a href='checkprofilecomment.jsp'>HOME </a>");
 }
 else
 {
 	out.print("Error");
  }
  %>	

</body>
</body>
</html>