<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.OMS1.manager.CustomerManager"%>
<%@page import="com.OMS1.DataBean.CustomerBean"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%
String loggedin=(String)session.getAttribute("loggedin");
CustomerBean ubean = (CustomerBean)session.getAttribute("usercreds");
CustomerManager amgr = new CustomerManager();
CustomerBean ebean = amgr.getdetails(ubean.getUSERNAME());
CustomerBean abean=(CustomerBean)CustomerManager.userProfileCache.get(ubean.getCUSTOMER_ID());
//String id =request.getParameter("id");
//session.setAttribute("pid","id");
%>
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
});


</script>
<STYLE type=text/css>.ItemTag1 IMG {
	BORDER-BOTTOM: 0px; BORDER-LEFT: 0px; BORDER-TOP: 0px; BORDER-RIGHT: 0px
}
.ItemTag2 {
	FONT-WEIGHT: bold
}
.DisplayName {
	
}
.ItemTag3 {
	
}
.ItemTag4 {
	
}
.ItemTag5 {
	
}
.ItemPrice {
	COLOR: #000; FONT-WEIGHT: bold
}
.OrigPrice .price {
	TEXT-DECORATION: line-through
}
.discountPrice {
	COLOR: red; FONT-WEIGHT: bold
}
.MoreColors {
	
}
.dlCategoryList {
	WIDTH: 100%; TABLE-LAYOUT: fixed
}
.dlCategoryItem {
	VERTICAL-ALIGN: top
}
.ItemImage {
	PADDING-BOTTOM: 3px
}
OVERFLOW-Y: scroll
}
BODY {
	BACKGROUND-COLOR: #ffffff; MARGIN: 0px
}
.Language {
	
}
.CurrentLanguage {
	FONT-WEIGHT: bold
}
.Btn {
	TEXT-TRANSFORM: uppercase; 
OUTLINE-STYLE: none;
OUTLINE-COLOR: invert;
OUTLINE-WIDTH: medium;
WIDTH: 107px; 
FONT: 12px Georgia, "Times New Roman", Times, serif;
BACKGROUND: url(images/bag.png) no-repeat; HEIGHT: 27px; COLOR: #fff; MARGIN-LEFT: 18px; CURSOR: pointer
}
.det {
	TEXT-TRANSFORM: uppercase; 
OUTLINE-STYLE: none;
OUTLINE-COLOR: invert;
OUTLINE-WIDTH: medium;
WIDTH: 120px; 
FONT: 12px Georgia, "Times New Roman", Times, serif;
BACKGROUND: url(images/viewdetails.gif) no-repeat; HEIGHT: 30px; COLOR: #fff; MARGIN-LEFT: 18px; CURSOR: pointer
}
</style>




</head>
<body>

	

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
<li>
<form action="chart.jsp">
<input type="hidden" name="customer_id" id="customer_id" value="<%=ubean.getCUSTOMER_ID()%>">
<input type="submit"  value="" class="Btn">
</form>
</li>
<li><a href="logout.jsp">LOGOUT</a></li>

</ul>
<br style="clear: left" />
</div>
<table cellspacing="20" cellpadding="20">
<tr>
<td>
<form name="details" action="nokia1280.jsp"><TABLE style="HEIGHT: 300px" border=0>
                                <TBODY>
                                <TR>
                                <TD style="HEIGHT: 210px" >
                                <IMG 
                                border=0 
                                src="nokia/nok1.jpg"></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 90px" 
                                 vAlign=top align=center>
                                <DIV class=ItemTag1></DIV>
                                <DIV class=ItemTag2>INORBIT</DIV>
                                <DIV class=DisplayName id="8">
                                NOKIA 1200</DIV><FONT 
                                class=price>RS 1000</FONT><br>
				<input type="hidden" name="id" id="id" value="4731">
<input type="submit" name="Submit" class="det"	value=""></TD></TR></TBODY></TABLE></form></td>
       






               <td><form name="details" action="nokia1280.jsp"><TABLE style="HEIGHT: 300px" border=0>
                                <TBODY>
                                <TR>
                                <TD style="HEIGHT: 210px"> 
                                <IMG 
                                border=0 
                                src="nokia/nok2.jpg"></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 90px" 
                                 vAlign=top align=center>
                                <DIV class=ItemTag1></DIV>
                                <DIV class=ItemTag2>INORBIT</DIV> 
                                <DIV class=DisplayName>
                                NOKIA LUMIA 700</DIV><FONT 
                                class=price>RS 7000</FONT><br>
					<input type="hidden" name="id" id="id" value="4732">
<input type="submit" name="Submit" class="det"	value=""></TD></TR></TBODY></TABLE></form></td>
      
<td><form name="details" action="nokia1280.jsp"><TABLE style="HEIGHT: 300px" border=0>
                                <TBODY>
                                <TR>
                                <TD style="HEIGHT: 210px">
                                <IMG 
                                border=0 
                                src="nokia/nok3.jpg"></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 90px" 
                                 vAlign=top align=center>
                                <DIV class=ItemTag1></DIV>
                                <DIV class=ItemTag2>INORBIT</DIV>
                                <DIV class=DisplayName>
                                NOKIA C2-02</DIV><FONT 
                                class=price>RS 3700</FONT><br>
					<input type="hidden" name="id" id="id" value="4733">
<input type="submit" name="Submit" class="det"	value=""></TD></TR></TBODY></TABLE></form></td></tr>
<tr><td><form name="details" action="nokia1280.jsp"><TABLE style="HEIGHT: 300px" border=0>
                                <TBODY>
                                <TR>
                                <TD style="HEIGHT: 210px"> 
                               <IMG 
                                border=0 
                                src="nokia/nok4.jpg"></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 90px" 
                                 vAlign=top align=center>
                                <DIV class=ItemTag1></DIV>
                                <DIV class=ItemTag2>INORBIT</DIV>
                                
                                <DIV class=DisplayName>
                                NOKIA LUMIA 800</DIV><FONT 
                                class=price>RS 10000</FONT><br>
					<input type="hidden" name="id" id="id" value="4734">
<input type="submit" name="Submit" class="det"	value=""></TD></TR></TBODY></TABLE></form></td>
<td><form name="details" action="nokia1280.jsp"><TABLE style="HEIGHT: 300px" border=0>
                                <TBODY>
                                <TR>
                                <TD style="HEIGHT: 210px"> 
                               <IMG 
                                border=0 
                                src="nokia/nok5.jpg"></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 90px" 
                                 vAlign=top align=center>
                                <DIV class=ItemTag1></DIV>
                                <DIV class=ItemTag2>INORBIT</DIV>
                                
                                <DIV class=DisplayName>
                                NOKIA C2-03</DIV><FONT 
                                class=price>RS 4500</FONT><br>
					<input type="hidden" name="id" id="id" value="4735">
<input type="submit" name="Submit" class="det"	value=""></TD></TR></TBODY></TABLE></form></td>
<td>
<form name="details" action="nokia1280.jsp"><TABLE style="HEIGHT: 300px" border=0>
                                <TBODY>
                                <TR>
                                <TD style="HEIGHT: 210px"> 
                                <IMG 
                                border=0 
                                src="nokia/nok6.jpg"></TD></TR>
                                <TR>
                                <TD style="HEIGHT: 90px" 
                                 vAlign=top align=center>
                                <DIV class=ItemTag1></DIV>
                                <DIV class=ItemTag2>INORBIT</DIV>
                                
                                <DIV class=DisplayName>
                                NOKIA X2-01</DIV><FONT 
                                class=price>RS 3500</FONT><br>
					<input type="hidden" name="id" id="id" value="4736">
<input type="submit" name="Submit"	value="View Details"></TD></TR></TBODY></TABLE></form></td></tr>
</table>

</body>
</html>