<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.OMS1.manager.OrdernoManager"%>
	<%@page import="com.OMS1.DataBean.OrdernoBean"%>
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
<li><a href="#" rel="ct1"><span>Home</span></a></li>
<li><a href="ophome.jsp" rel="ct2"><span>update customer order</span></a></li>
<li><a href="ophome2.jsp" rel="ct3"><span>update shipper order</span></a></li>
<li><a href="#"><span>change settings</span></a></li>
<li><a href="logout2.jsp"><span>logout</span></a></li>
</ul>
</div>
<div class="ddcolortabsline">&nbsp;</div>




<table><tr><th width="60">ORDERNO</th><th width="260">DATE</th><th width="30">TIME</th><th width="120">VIEW DETAILS</th><th width="220">SEND TO PICKER</th><th width="600"></th></tr>

<%
String loggedin=(String)session.getAttribute("loggedin");

OrdernoManager amg= new OrdernoManager();
ResultSet a = amg.disporder();
while(a.next())
{
long id=a.getLong("ORDER_NO");
int s=a.getInt("SADDRESS_ID");
Date d=a.getDate("DATE");
Time q=a.getTime("TIME");
out.print("<form method='post' action='redirect2.jsp'><tr><td width=180><input type='hidden' id='id' name='id' value="+s+"><input type='hidden' id='ord' name='ord' value="+id+">"+id+"</td><td width=100>"+d+"</td><td>"+q+"</td><td><input type='submit' name='submit' id='submit' value='check details'></td><td><input type='submit' id='submit' name='submit' value='send to picker'><td></tr></form>");
}
%>

</table>



</body>

</html>



