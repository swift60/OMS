<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.OMS1.manager.ReportManager"%>
	<%@page import="com.OMS1.DataBean.ReportBean"%>
	<%@page import="java.sql.*"%>
<html>
<head>
<title>ophome</title>


<script type="text/javascript" src="ddtabmenufiles/ddtabmenu.js">


</script>


<!-- CSS for Tab Menu #4 -->
<link rel="stylesheet" type="text/css" href="ddtabmenufiles/ddcolortabs.css" />

<script type="text/javascript">


ddtabmenu.definemenu("ddtabs4", 2) 
</script>

<body>




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




<table><tr><th width="60">ORDERNO</th><th width="260">DATE</th><th width="30">TIME</th><th width="120">VIEW DETAILS</th><th width="220">DELETE REPORT</th><th width="600"></th></tr>

<%
String loggedin=(String)session.getAttribute("loggedin");

ReportManager amg= new ReportManager();
ResultSet a = amg.disporderreport();
while(a.next())
{
long id=a.getLong("ORDER_NO");
int s=a.getInt("SADDRESS_ID");
Date d=a.getDate("DATE");
Time q=a.getTime("TIME");
out.print("<form method='post' action='redirect8.jsp'><tr><td width=180><input type='hidden' id='id' name='id' value="+s+"><input type='hidden' id='ord' name='ord' value="+id+">"+id+"</td><td width=100>"+d+"</td><td>"+q+"</td><td><input type='submit' name='submit' id='submit' value='check details'></td><td><input type='submit' id='submit' name='submit' value='delete'><td></tr></form>");
}
%>

</table>



</body>

</html>



