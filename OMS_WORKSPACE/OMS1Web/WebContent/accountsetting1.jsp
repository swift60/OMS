<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.OMS1.manager.CustomerManager"%>
<%@page import="com.OMS1.DataBean.CustomerBean"%>
<%@taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%
String loggedin=(String)session.getAttribute("loggedin");
CustomerBean ubean = (CustomerBean)session.getAttribute("usercreds");%>
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

<p align="right"><br>
<a href="accountsetting1.jsp"><img src="images/edit.png"></a>      
<a href="changepassword.html"><p align="right">CHANGE PASSWORD</p></a>

			<form action="account.jsp">
			<table border="0">
				<tbody>
					<tr>
						<td width="229" height="50">EDIT PROFILE</td>
						<td height="50" width="155"></td>
					</tr>
					
					<tr>
						<td width="229" height="55">PHONE NO:</td>
						<td height="55" width="155"><input
							type="text" name="contact" id="contact" value="<%=ubean.getCONTACT() %>" size="20"></td>
					</tr>
					<tr>
						<td width="229" height="46">EMAIL ID :</td>
						<td height="46" width="155"><input
							type="text" name="email" id="email" value="<%=ubean.getEMAIL() %>" size="20"></td>
					</tr>
					<tr>
						<td width="229" height="45">FIRST NAME</td>
						<td height="45" width="155"><input
							type="text" name="firstname" id="firstname" value="<%=ubean.getCUSTOMER_FIRSTNAME() %>" size="20"></td>
					</tr>
					<tr>
						<td width="229" height="46"><br>
						LAST NAME</td>
						<td width="155" height="46"><input
							type="text" name="lastname" id="lastname"  value="<%=ubean.getCUSTOMER_LASTNAME() %>" size="20"></td>
					</tr>
					
					<tr>
						<td width="229"><br>
						DATE OF BIRTH</td>
						<td width="155"><input type="text" name="dob" id="dob" value="<%=ubean.getDOB() %>"
							size="20"></td>
							
					</tr>
				</tbody>
				
			</table>
			<input type="submit" name="Save " value="Save">
			</form>
	



</body>
</html>