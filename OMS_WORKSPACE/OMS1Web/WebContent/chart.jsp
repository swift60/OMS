<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.OMS1.DataBean.BagBean" %>
<%@page import="com.OMS1.manager.BagManager" %>
<%@page import="com.OMS1.DataBean.CustomerBean" %>
<%@page import="java.sql.*" %>

<html>
<head>
<%
String loggedin=(String)session.getAttribute("loggedin");
CustomerBean ubean = (CustomerBean)session.getAttribute("usercreds");

BagManager bmgr = new BagManager();
//BagBean bbean = bmgr.getdetails(customer_id);
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
<input type="hidden" name="customer_id" id="customer_id" value="<%=ubean.getCUSTOMER_ID()%>">
<input type="submit"  value="" class="Btn">
</form>
</li>
<li><a href="logout.jsp">LOGOUT</a></li>

</ul>
<br style="clear: left" />
</div>
</head>

<body>

<table border="1">
	<tbody>
		<tr>
			<td width="91">ITEM ID</td>
			<td width="137">MODEL NAME</td>
			<td width="84">COLOR</td>
			<td width="55">PRICE</td>
			<td width="111">QUANTITY</td>
			<td width="182">TOTAL</td>
			<td width="100">REMOVE</td>
			
		</tr>
		
	</tbody></table>
	
<%
Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection con = DriverManager.getConnection("jdbc:db2://localhost:50000/OMS","db2admin","password");
String customer_id=request.getParameter("customer_id");
PreparedStatement stmt = con.prepareStatement("SELECT * FROM BAG WHERE CUSTOMER_ID = '"+customer_id+"'");
stmt.executeQuery();
ResultSet rs = stmt.getResultSet();
while(rs.next()){
int id = rs.getInt("BAG_ID");
String model = rs.getString("MODEL_NAME");
String col = rs.getString("COLOR");
long price = rs.getLong("PRICE");
int qty = rs.getInt("QUANTITY");
long total = rs.getLong("TOTAL"); 




%>
<table>
<tr>
<td width="110"><%out.print(rs.getString(1));%></td>
<td width="147"><%out.print(rs.getString(3));%></td>
<td width="97"><%out.print(rs.getString(6));%></td>
<td width="75"><%out.print(rs.getString(4));%></td>
<td width="131"><%out.print(rs.getString(5));%></td>
<td width="195"><%out.print(rs.getString(7));%></td>
<td width="120"><form action="remove.jsp"><input type="hidden"  name="bag_id" id="bag_id" value="<%out.print(rs.getString(1));%>"><input type="submit" value="remove"> </form></td>
<td width="100">
		</td>
</tr> 
</table>		
<%
}

rs.close();
stmt.close();
con.close();
%>
<a href="shipadd.jsp">checkout</a>	
	

</body>
</html>