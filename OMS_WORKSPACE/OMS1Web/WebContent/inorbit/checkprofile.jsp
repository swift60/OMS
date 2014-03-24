<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.OMS1.manager.User_DetailsManager"%>
	<%@page import="java.sql.*"%>
<html>
<head>
<title>checkprofile</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="ddtabmenufiles/ddtabmenu.js">


</script>


<!-- CSS for Tab Menu #4 -->
<link rel="stylesheet" type="text/css" href="ddtabmenufiles/ddcolortabs.css" />

<script type="text/javascript">


ddtabmenu.definemenu("ddtabs4", 2); 
</script>
</head>
<body>

<div id="container" align="center" style="vertical-align:middle" >


<div id="ddtabs4" class="ddcolortabs">
<ul>

<li><a href="checkprofile.jsp" ><span>Home</span></a></li>
<li><a href="adminhome2.jsp"><span>report</span></a></li>
<li><a href="usersignup.jsp" rel="ct3"><span>add user</span></a></li>
<li><a href="#"><span>profile</span></a></li>
<li><a href="logout1.jsp"><span>logout</span></a></li>
</ul>
</div>
<div class="ddcolortabsline">&nbsp;</div>



<table>
<tr><td width="60px">NAME</td><td width="150px">CHECK PROFILE</td><td width="100px">DELETE USER</td></tr>
<%
String loggedin=(String)session.getAttribute("loggedin");
User_DetailsManager amg= new User_DetailsManager();

ResultSet a = amg.getuser();
while(a.next())
{
int id=a.getInt("U_ID");
String s=a.getString("U_NAME");
out.print("<form method='post' action='redirect.jsp'><input type='hidden' id='id' name='id' value="+id+"><tr><td>"+s+"</td><td><input type='submit' name='submit' id='submit' value='Check Profile'></td><td><input type='submit' id='submit' name='submit' value='Delete user'></td></tr></form>");
}
%>
</table>
</body>
</html>