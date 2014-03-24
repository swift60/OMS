<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.OMS1.manager.User_DetailsManager"%>
<%@page import="com.OMS1.DataBean.User_DetailsBean"%>
<%@taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%
String loggedin=(String)session.getAttribute("loggedin");
User_DetailsBean ubean = (User_DetailsBean)session.getAttribute("usercreds");%>


</head>
<body>




			<form action="">
			<table border="1">
				<tbody>
					<tr>
						<td width="229" height="50">EDIT PROFILE</td>
						<td height="50" width="155"></td>
					</tr>
					<tr>
						<td width="229" height="45">NAME</td>
						<td height="45" width="155"><input
							type="text" name="firstname" id="firstname" value="<%=ubean.getU_NAME() %>" size="20"></td>
					</tr>
					<tr>
						<td width="229" height="46">EMAIL ID :</td>
						<td height="46" width="155"><input
							type="text" name="email" id="email" value="<%=ubean.getEMAILID() %>" size="20"></td>
					</tr>
					<tr>
						<td width="229" height="55">PHONE NO:</td>
						<td height="55" width="155"><input
							type="text" name="contact" id="contact" value="<%=ubean.getCONTACT_NO() %>" size="20"></td>
					</tr>
					
					
					<tr>
						<td width="229" height="55">ADDRESS</td>
						<td height="55" width="155"><input
							type="text" name="contact" id="contact" value="<%=ubean.getADDRESS() %>" size="20"></td>
					</tr>
					
					
					
				</tbody>
				
			</table>
			<input type="submit" name="Save " value="Save">
			</form>
	



</body>
</html>