<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.OMS1.DataBean.BagBean"%>
<%@page import="com.OMS1.manager.BagManager"%>
<%@page import="com.OMS1.DataBean.CustomerBean"%>
<%@page import="com.OMS1.manager.Ship_AddressManager"%>
<%@page import="com.OMS1.DataBean.Ship_AddressBean"%>

<%@page import="java.sql.*"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%><%@taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><html>
<head>
<%
String loggedin=(String)session.getAttribute("loggedin");
CustomerBean ubean = (CustomerBean)session.getAttribute("usercreds");
Ship_AddressManager dmgr = new Ship_AddressManager();
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
})


</script>
<STYLE type=text/css>
.ItemTag1 IMG {
	BORDER-BOTTOM: 0px;
	BORDER-LEFT: 0px;
	BORDER-TOP: 0px;
	BORDER-RIGHT: 0px
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
	COLOR: #000;
	FONT-WEIGHT: bold
}

.OrigPrice .price {
	TEXT-DECORATION: line-through
}

.discountPrice {
	COLOR: red;
	FONT-WEIGHT: bold
}

.MoreColors {
	
}

.dlCategoryList {
	WIDTH: 100%;
	TABLE-LAYOUT: fixed
}

.dlCategoryItem {
	VERTICAL-ALIGN: top
}

.ItemImage {
	PADDING-BOTTOM: 3px
}

OVERFLOW-Y
:
 
scroll


}
BODY {
	BACKGROUND-COLOR: #ffffff;
	MARGIN: 0px
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
<li><form action="chart.jsp">
<input type="hidden" name="customer_id" id="customer_id" value="<%=ubean.getCUSTOMER_ID()%>"><input type="submit"  value="" class="Btn">
</form>
</li>
<li><a href="logout.jsp">LOGOUT</a></li>

</ul>
<br style="clear: left" />
</div>
<table><tr>
<th>Bag Id</th> 
<th>Model Name</th>
<th>Price</th>
<th>Quantity</th>
<th>Total</th></tr> 
<%
BagManager imgr = new BagManager();
ResultSet rs = imgr.getbag(ubean.getCUSTOMER_ID());
long tot = 0;
while(rs.next())
{
int bag_id = rs.getInt("BAG_ID");
String model_name = rs.getString("MODEL_NAME");
Long price = rs.getLong("PRICE");
int qty = rs.getInt("QUANTITY");
Long total = rs.getLong("TOTAL");
out.print("<tr><td>"+bag_id+"</td><td>"+model_name+"</td><td>"+price+"</td><td>"+qty+"</td><td>"+total+"</td></tr>");
tot=tot+total;
}
long G_total=12*tot/100+tot+100;
long tax=12*tot/100;
%>
</table>
<table>
<%
out.print("<tr><td> VAT Tax :</td><td>12%</td><td>"+tax+"</td></tr><tr><td>Shipping Charges</td><td>Rs 100</td></tr><tr><td>Grand total</td><td>"+G_total+"</td></tr>");

 %>
 </table>
 <table>

<% 
String id = (String)session.getAttribute("cid");
int cid = Integer.parseInt(id);
ResultSet brs = dmgr.getship(cid);
ResultSet abrs = dmgr.getship(cid);
String landmark="",city="",street="",dist="",state="";
int hno=0,sad=0;
int c=0;
long pin=0;
while(abrs.next())
{
c++;
}
for(int a=0;a<c;a++)
{
brs.next();
}

sad=brs.getInt("SADDRESS_ID");
hno = brs.getInt("HNO");
city = brs.getString("CITY");
street = brs.getString("STREET");
dist= brs.getString("DISTRICT");
state = brs.getString("STATE");
landmark=brs.getString("LANDMARK");
pin=brs.getLong("PINCODE");

out.print("<tr><td>HNO:</td><td>"+hno+"</td></tr><tr><td>CITY:</td><td>"+city+"</td></tr><tr><td>STREET:</td><td>"+street+"</td></tr><tr><td>DISTRICT:</td><td>"+dist+"</td></tr><tr><td>STATE:</td><td>"+state+"</td></tr><tr><td>LANDMARK:</td><td>"+landmark+"</td></tr><tr><td>PINCODE:</td><td>"+pin+"</td></tr>");


out.print("<form action='last1.jsp'><tr><td><input type='hidden' name=saddress_id id='saddress_id' value="+sad+"><input type='submit' value='submit'></td></tr></form>");



%>

</table>
