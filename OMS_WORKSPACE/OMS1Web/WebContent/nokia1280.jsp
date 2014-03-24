<%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.OMS1.manager.CustomerManager"%>
<%@page import="com.OMS1.DataBean.CustomerBean"%>
<%@page import="com.OMS1.DataBean.ProductBean" %>
<%@page import="com.OMS1.manager.ProductManager" %>
<html>
<head>
<%
String loggedin=(String)session.getAttribute("loggedin");
CustomerBean ubean = (CustomerBean)session.getAttribute("usercreds");
String id=request.getParameter("id");
CustomerManager amgr = new CustomerManager();
ProductManager pmgr = new ProductManager();
ProductBean pbean = pmgr.getdetails(id);
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
</STYLE>
<style type="text/css"> 
body {margin: 0 auto; background: #0189e1 url()repeat-y center top;	background-color:#0189e1;/*#ffffff;*/}
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
.submitBtn {
	TEXT-TRANSFORM: uppercase; 
OUTLINE-STYLE: none;
OUTLINE-COLOR: invert;
OUTLINE-WIDTH: medium;
WIDTH: 128px; 
FONT: 12px Georgia, "Times New Roman", Times, serif;
BACKGROUND: url(images/button.png) no-repeat; HEIGHT: 27px; COLOR: #fff; MARGIN-LEFT: 18px; CURSOR: pointer
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
.bag {
	TEXT-TRANSFORM: uppercase; 
OUTLINE-STYLE: none;
OUTLINE-COLOR: invert;
OUTLINE-WIDTH: medium;
WIDTH: 128px; 
FONT: 12px Georgia, "Times New Roman", Times, serif;
BACKGROUND: url(images/addToBag.gif) no-repeat; HEIGHT: 27px; COLOR: #fff; MARGIN-LEFT: 18px; CURSOR: pointer
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

 <table>
 <tr><td bgcolor="#ffffff"> <div style="width:450px; margin:0 auto; border:1px solid #F3F3F3; padding:20px;">
 <img src="<%=pbean.getIMAGEPATH() %>"></div></td>


<td>



price:RS.<%=pbean.getCOST() %>
Model type:<%=pbean.getPROD_NAME() %>
Model no:<%=pbean.getDESCRIPTION() %>
    <P><form action="ord.jsp">
    Quantity: 
    <input type=text size=2 maxlength=3 name="quantity"  id="quantity"  value="1">    
    <input type=hidden name="price" value="<%=pbean.getCOST() %>">
    <input type=hidden name="name" value="<%=pbean.getDESCRIPTION() %>">
<input type="hidden" name="customer_id" id="customer_id" value="<%=ubean.getCUSTOMER_ID() %>">
    Select a color: 
    <select name="color" id="color">
        <option value="red">  Red
        <option value="Blue"> Blue
        <option value="White">White
    </select>
  
    <input type="submit"  class="bag" value="" >
    
    </form>
    
 </td></tr></table>   



</body>
</html>
 