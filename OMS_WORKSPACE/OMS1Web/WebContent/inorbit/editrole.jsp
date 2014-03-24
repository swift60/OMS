<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.OMS1.manager.User_DetailsManager"%>
	<%@page import="com.OMS1.DataBean.User_DetailsBean"%>
	<%@page import="java.sql.*" %>
<html>
<head>
<title>edit profile</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="ddtabmenufiles/ddtabmenu.js">


</script>


<!-- CSS for Tab Menu #4 -->
<link rel="stylesheet" type="text/css" href="ddtabmenufiles/ddcolortabs.css" />

<script type="text/javascript">
//SYNTAX: ddtabmenu.definemenu("tab_menu_id", integer OR "auto")

ddtabmenu.definemenu("ddtabs4", 2); 
</script>
</head>
<body>

<div id="container" align="center" style="vertical-align:middle" >


<div id="ddtabs4" class="ddcolortabs">
<ul>
<li><a href="#"><span>HI </span></a></li>
<li><a href="checkprofile.jsp" ><span>Home</span></a></li>
<li><a href=""><span>report</span></a></li>
<li><a href="usersignup.jsp" rel="ct3"><span>add user</span></a></li>
<li><a href=""><span>profile</span></a></li>
<li><a href="logout1.jsp"><span>logout</span></a></li>
</ul>
</div>
<div class="ddcolortabsline">&nbsp;</div>

<%

User_DetailsManager mgr = new User_DetailsManager();
String a = (String)session.getAttribute("id");
int b = Integer.parseInt(a);

ResultSet rbean = mgr.getinfo(b);
while (rbean.next())
{%>
<form action="role.jsp">

<table>

<tr><td>USERNAME:</td><td><%=rbean.getString("USERNAME")%></td></tr>
<tr><td>NAME:</td><td><%=rbean.getString("U_NAME") %></td></tr>
<tr><td>PASSWORD</td><td><%=rbean.getString("PASSWORD") %></td></tr>
<tr><td>ADDRESS</td><td><%=rbean.getString("ADDRESS") %></td></tr>
<tr><td>CONTACT</td><td><%=rbean.getLong("CONTACT_NO") %></td></tr>
<tr><td>ROLE</td><td><input type="text" name="role" id="role" value="<%=rbean.getInt("ROLE_ID")%>"></td></tr>
<tr><td></td><td><input type="submit" value="save"></td></tr>
</table>
<form>
<%} %>

</body>
</html>