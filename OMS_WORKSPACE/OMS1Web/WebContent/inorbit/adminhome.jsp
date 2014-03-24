<%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.OMS1.manager.AdminManager"%>
<%@page import="com.OMS1.DataBean.AdminBean"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%
String loggedin=(String)session.getAttribute("loggedin");
AdminBean ubean = (AdminBean)session.getAttribute("admincreds");
AdminManager amgr = new AdminManager();
AdminBean ebean = amgr.getdetails(ubean.getUSERNAME());
AdminBean abean=(AdminBean)AdminManager.userProfileCache.get(ubean.getEMP_ID());%>
<head>
<title>ADMIN</title>

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
<li><a href="#"><span>HI <%=ebean.getEMP_NAME() %></span></a></li>
<li><a href="checkprofile.jsp" ><span>Home</span></a></li>
<li><a href="adminhome2.jsp"><span>report</span></a></li>
<li><a href="usersignup.jsp" rel="ct3"><span>add user</span></a></li>
<li><a href="#"><span>profile</span></a></li>
<li><a href="logout1.jsp"><span>logout</span></a></li>
</ul>
</div>
<div class="ddcolortabsline">&nbsp;</div>


</div>
</body>
</html>

     

	



