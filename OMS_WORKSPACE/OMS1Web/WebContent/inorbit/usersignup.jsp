
<html>
<head>


<title>user signup</title>
<script type="text/javascript">
var req;

function validate(val) {
   
      var url = "CheckUserName?userid=" + encodeURIComponent(val);
   if (typeof XMLHttpRequest != "undefined") {

       req = new XMLHttpRequest();
   
   } else if (window.ActiveXObject) 
   {
  
       req = new ActiveXObject("Microsoft.XMLHTTP");
   }
   req.open("GET", url, true);
 //  req.send("userid=" + encodeURIComponent(val));
   
   req.onreadystatechange = callback;
  req.send(null);
}
function getudetails()
{

validate(document.getElementById("username").value);
	
}



function callback() {
    if (req.readyState == 4) {
        if (req.status == 200) {
       		var s=document.getElementById("username").value;
        	if(req.responseText=="2")
        	{
				document.getElementById("uinfo").innerHTML="<font face=Arial size=2 color=green>"+s + " is available ! </font>";
				
			}else
			{
						
						document.getElementById("uinfo").innerHTML="<font face=Arial size=2 color=red>"+s + " is already a registered user. </font>";
			}
             // update the HTML DOM based on whether or not message is valid
			req=null;
        }
    }
}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="description" content="INORBIT" />
<meta name="keywords" content="INORBIT" />
<meta name="GENERATOR" content="INORBIT" />
<script language="JavaScript" src="Validator.js">
 </script>


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

<li><a href="checkprofile.jsp" ><span>Home</span></a></li>
<li><a href="adminhome2.jsp"><span>report</span></a></li>
<li><a href="usersignup.jsp" rel="ct3"><span>add user</span></a></li>
<li><a href="#"><span>profile</span></a></li>
<li><a href="logout1.jsp"><span>logout</span></a></li>
</ul>
</div>
<div class="ddcolortabsline">&nbsp;</div>




<form name="f1"   action="register1.jsp"  >

<table border="0">

	<tbody>
	
		<tr>
			<td align="right" height="33" width="95">NAME:</td>
			<td height="33" width="165"><input type="text" name="uname" id="uname"
				size="20" onchange="getudetails();"/></td><div id="uinfo"></div>
		</tr>
		<tr>
			<td align="right" height="32" width="95">EMAIL:</td>
			<td height="32" width="165"><input type="text" name="email" id="email"
				size="20"></td>
		</tr>
		<tr>
			<td align="right" height="30" width="95">USERNAME:</td>
			<td height="30" width="165"><input type="text" name="username" id="username"
				size="20"></td>
		</tr>
		<tr>
			<td align="right" height="32" width="95">PASSWORD:</td>
			<td height="32" width="165"><input type="password" name="password" id="password"
				size="20"></td>
		</tr>
		<tr>
			<td align="right" height="36" width="95">CONFIRM<br>
			PASSWORD:</td>
			<td height="36" width="165"><input type="password"
				name="confirm password" size="20" id="confirm password"></td>
		</tr>
		<tr>
			<td align="right" height="10" width="95">CONTACT:</td>
			<td height="10" width="165"><input type="text" name="contact" id="contact"
				size="20"></td>
		</tr>
		<tr>
			<td align="right" height="41" width="95">ADDRESSS:</td>
			<td height="41" width="165"><textarea rows="2" cols="17" id="address"
				name="address"></textarea></td>
		</tr>
		<tr>
			<td align="right" height="40" width="95">ROLE:</td>
			<td height="40" width="165"><select name="role" id="role">
				<option value="1">Operator</option>
				<option value="2">Picker</option>
				<option value="3">packer</option>
				<option value="4">shipper</option>
			</select></td>
		</tr>
		
	</tbody>
</table>
<input type="submit"   class="submitBtn" value="add user">
			
			</form>


 

</div>
</body>
</html>