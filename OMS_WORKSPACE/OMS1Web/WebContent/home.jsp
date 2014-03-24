<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.OMS1.manager.CustomerManager"%>
<%@page import="com.OMS1.DataBean.CustomerBean"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%
String loggedin=(String)session.getAttribute("loggedin");
CustomerBean ubean = (CustomerBean)session.getAttribute("usercreds");

CustomerManager amgr = new CustomerManager();
//CustomerBean ebean = amgr.getdetails(ubean.getUSERNAME());
CustomerBean abean=(CustomerBean)CustomerManager.userProfileCache.get(ubean.getCUSTOMER_ID());%>
<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />
<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu-v.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">

</script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "smoothmenu1", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})


</script>
<script language="JavaScript1.1">
<!--


//specify interval between slide (in mili seconds)
var slidespeed = 1500

//specify images
var slideimages=new Array("home/a.jpg","home/b.jpg","home/c.jpg","home/d.jpg","home/e.jpg","home/f.jpg","home/g.jpg","home/h.jpg","home/i.jpg");

//specify corresponding links
var slidelinks=new Array("");

var newwindow=1; //open links in new window? 1=yes, 0=no
var imageholder=new Array();
var ie=document.all;
for (i=0;i<slideimages.length;i++){
imageholder[i]=new Image();
imageholder[i].src=slideimages[i];
}

function gotoshow(){
if (newwindow)
window.open(slidelinks[whichlink]);
else
window.location=slidelinks[whichlink];
}

//-->
</script>


<style type="text/css"> 
.Btn {
	TEXT-TRANSFORM: uppercase; 
OUTLINE-STYLE: none;
OUTLINE-COLOR: invert;
OUTLINE-WIDTH: medium;
WIDTH: 107px; 
FONT: 12px Georgia, "Times New Roman", Times, serif;
BACKGROUND: url(images/bag.png) no-repeat; HEIGHT: 27px; COLOR: #fff; MARGIN-LEFT: 18px; CURSOR: pointer
}
</style>
</head>
<body bgcolor="#acc3d5">
<script language="JavaScript" src="js/hxclient_v2_1.js"
	type="text/javascript"></script>
<div id="smoothmenu1" class="ddsmoothmenu">
<ul>
<li><a href="home.jsp">HI! <%=ubean.getCUSTOMER_FIRSTNAME() %></a></li>

<li><a href="#">BOUTIQUE </a>
  <ul>
  <li><a href="nokia.jsp">NOKIA</a></li>
  <li><a href="shoes.jsp">NUMERO UNO FOOTWEAR</a></li>
  <li><a href="samsung.jsp">SAMSUNG MOBILES</a></li>
  <li><a href="watches.jsp">PREMIUM WATCHES</a></li>
  <li><a href="laptops.jsp">LAPTOPS</a></li>
  <li><a href="sunglasses.jsp">SUNGLASS LOOT</a></li>
  </ul>
</li>

<li><a href="#">DRESS</a>
  <ul>
  <li><a href="jeans.jsp">JEANS</a></li>
  <li><a href="pants.jsp">PANTS</a></li>
  <li><a href="suits.jsp">RAYMOND SUITS </a></li>
  <li><a href="skirts.jsp">SKIRTS</a></li>
  <li><a href="tops.jsp">TOPS</a></li>
  <li><a href="jewels.jsp">JEWEL BAZAR</a></li>
 
  </ul>
</li>

<li><a href="order.jsp">TRACK YOUR ORDER</a></li>
<li><a href="contact.html">CONTACT US</a></li>
<li><a href="#">ABOUT US</a></li>
<li><a href="profile.jsp">MY ACCOUNT</a></li>
<li><form action="chart.jsp">
<input type="hidden" name="customer_id" id="customer_id" value="<%=ubean.getCUSTOMER_ID()%>"><input type="submit"  value="" class="Btn">
</form>
</li>
<li><a href="logout.jsp">LOGOUT</a></li>

</ul>
<br style="clear: left" />
</div>
<table><tr><td width="15%" height="1674"></td><td bgcolor="white" height="1674">
<p><font size="6" color="olive">GET SPECIAL OFFERS ON FOLLOWING
		ACCESSORIES</font></p>
<a href="javascript:gotoshow()"><img src="home/a.jpg" name="slide" border=0 style="filter:blendTrans(duration=2)" width="930" height="343"></a>

<script language="JavaScript1.1">
//<!--

var whichlink=0;
var whichimage=0;
var blenddelay=(ie)? document.images.slide.filters[0].duration*1000 : 0;
function slideit(){
if (!document.images) return;
if (ie) document.images.slide.filters[0].apply();
document.images.slide.src=imageholder[whichimage].src;
if (ie) document.images.slide.filters[0].play();
whichlink=whichimage;
whichimage=(whichimage<slideimages.length-1)? whichimage+1 : 0;
setTimeout("slideit()",slidespeed+blenddelay);
}
slideit();

//-->
</script>

<P><font size="6" color="olive" face="Times New Roman">TODAY'S BOUTIQUE</font></P><hr>
<table cellspacing="0">
<tr><td height="148" width="668"><a href="nokia.jsp"><img src="home/00.jpg"></a></td></tr>
<tr><td height="39" width="668"><a href="nokia.jsp"><img src="home/12.JPG"></a></td></tr>
<tr><td height="148" width="668"><a href="samsung.jsp"><img src="home/01.jpg"></a></td></tr>
<tr><td height="39" width="668"><a href="samsung.jsp"><img src="home/12.JPG"></a></td></tr>
<tr><td height="148" width="668"><a href="suits.jsp"><img src="home/03.jpg"></a></td></tr>
<tr><td height="39" width="668"><a href="suits.jsp"><img src="home/12.JPG"></a></td></tr>
<tr><td height="148" width="668"><a href="shoes.jsp"><img src="home/04.jpg"></a></td></tr>
<tr><td height="39" width="668"><a href="shoes.jsp"><img src="home/12.JPG"></a></td></tr>
<tr><td height="148" width="668"><a href="sunglasses.jsp"><img src="home/05.jpg"></a></td></tr>
<tr><td height="39" width="668"><a href="sunglasses.jsp"><img src="home/12.JPG"></a></td></tr>
<tr><td height="148" width="668"><a href="skirts.jsp"><img src="home/06.jpg"></a></td></tr>
<tr><td height="39" width="668"><a href="tops.jsp"><img src="home/12.JPG"></a></td></tr>


<tr><td><p><b>Privacy Policy 2012 Today Merchandise Private Limited. All rights reserved.</b></p></td><tr></table>
</table>

</body>
</html>