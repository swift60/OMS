<%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.OMS1.manager.User_DetailsManager"%>
<%@page import="com.OMS1.DataBean.User_DetailsBean"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%
String loggedin=(String)session.getAttribute("loggedin");
User_DetailsBean ubean = (User_DetailsBean)session.getAttribute("usercreds");
User_DetailsManager amgr = new User_DetailsManager();
User_DetailsBean ebean = amgr.getdetails(ubean.getUSERNAME());
User_DetailsBean abean=(User_DetailsBean)User_DetailsManager.userProfileCache.get(ubean.getU_ID());%>
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
<li><a href="#"><span>HI </span></a></li>

<li><a href=""><span>profile</span></a></li>
<li><a href="logout1.jsp"><span>logout</span></a></li>
</ul>
</div>
</div>
