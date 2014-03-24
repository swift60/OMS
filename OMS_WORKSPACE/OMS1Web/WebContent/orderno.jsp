<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.OMS1.manager.OrdernoManager"%>
	<%@page import="com.OMS1.DataBean.OrdernoBean"%>
	<%@page import="java.sql.*"%>
<html>
<head>
<%
OrdernoManager mgr = new OrdernoManager();
String a = (String)session.getAttribute("saddress");
int b = Integer.parseInt(a);
System.out.print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");

OrdernoBean rbean =mgr.getord(b);;
%>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>status</title>

<style type="text/css"> 
body {margin: 0 auto; background: #ffffff url()repeat-y center top;	background-color:#ffffff;/*#ffffff;*/}
.ariallarge{font-family:Arial, Helvetica, sans-serif; font-size:30px; color:#000000; padding:0px 5px 20px 40px;}
.arial12{font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#000000;}
.arial12 a:link, .arial12 a:visited{ color:#0066CC; text-decoration:underline;  }
.arial12 a:hover{ text-decoration:none;  }
 
.arial{font-family:Arial, Helvetica, sans-serif; font-size:14px; color:#000000; padding:12px 4px;}
.flt{ float:left;}
 
#container{ width:966px; height:auto; background-color:#ffffff; margin:0 auto;}
.rboxtop{ background: transparent url() no-repeat 0px 0px; height:41px; width:789px; margin-top:15%; }
.rboxbottom{ background: transparent url(images/logo1.png) no-repeat 0px 0px; height:41px; width:789px; }
.rboxmid{background: #fff url() repeat-y; width:789px;}

 
</style>
</head>
 
<body>
 
 
 
 
 
 
 
 
 
 
 
<div id="container" align="center" style="vertical-align:middle" >
<div style="float:left; width:200px; padding:5px 10px; "><img src="images/logo.png" width="189" height="94" border="0" /> </div>

<!-- <div style="clear:both"></div>
<div style="width:100%; height:4px; background-color:#cccccc;"></div> -->
<div class="rboxtop"></div>
<div class="rboxmid">
<div class="ariallarge" align="left">order no: <%=rbean.getORDER_NO() %></div>
<br/>

<div style="width:450px; margin:0 auto; border:1px solid #F3F3F3; padding:20px;">
<p align="left" >
<a href="home.jsp"><img src="images/home.png"/></a>
<a href="logout.jsp"><img src="images/logout.png"></a>
</p>
</div>

 
<br /><br />
</div>
<div class="rboxbottom"></div>
</div>
</body>
</html>
 
 

 
 
 

