<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.OMS1.manager.User_DetailsManager"%>
<%@page import="com.OMS1.DataBean.User_DetailsBean"%>
<html>
<head>
<title>login</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
String rl = request.getParameter("as");
int role=Integer.parseInt(rl);
User_DetailsManager mgr = new User_DetailsManager();
boolean flag=mgr.login(username,password);
if(flag)
{
   	User_DetailsManager umgr = new User_DetailsManager();
    User_DetailsBean ebean = umgr.getdetails(username);
    session.setAttribute("loggedin","true");
	session.setAttribute("usercreds",ebean);
	if(role==0)
	response.sendRedirect("adminhome.jsp");
	if (role==1 )
	response.sendRedirect("ophome.jsp");
	else if	(role==2 )
	response.sendRedirect("pichome.jsp");
	else if(role==3 )
    response.sendRedirect("pachome.jsp");
	else if (role==4 )
	response.sendRedirect("shiphome.jsp");
}
else

 {   	
 response.sendRedirect("userlogin.html");
}

 %>
</body>
</html>