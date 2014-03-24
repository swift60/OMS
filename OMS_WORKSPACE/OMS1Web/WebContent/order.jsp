 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

 
<title>Track Your Order</title>
<script type="text/javascript">
function check()
{
var a;
a=document.f2.orderno.value;
if(a=="")
alert("order field is empty");
}
</script>
              
<style type="text/css"> 
.submitBtn {
	TEXT-TRANSFORM: uppercase; 
OUTLINE-STYLE: none;
OUTLINE-COLOR: invert;
OUTLINE-WIDTH: medium;
WIDTH: 128px; 
FONT: 12px Georgia, "Times New Roman", Times, serif;
BACKGROUND: url(images/button.png) no-repeat; HEIGHT: 27px; COLOR: #fff; MARGIN-LEFT: 18px; CURSOR: pointer
}
body {margin: 0 auto; background: #0189e1 url()repeat-y center top;	background-color:#0189e1;/*#ffffff;*/}
.ariallarge{font-family:Arial, Helvetica, sans-serif; font-size:30px; color:#000000; padding:0px 5px 20px 40px;}
.arial12{font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#000000; padding:12px 4px;}
.arial{font-family:Arial, Helvetica, sans-serif; font-size:14px; color:#000000; padding:12px 4px;}
.flt{ float:left;}
 
#container{ width:966px; height:auto; background-color:#ffffff; margin:0 auto;}
.rboxtop{ background: transparent url() no-repeat 0px 0px; height:41px; width:789px; margin-top:15%; }
.rboxbottom{ background: transparent url(images/logo1.png) no-repeat 0px 0px; height:41px; width:789px; }
.rboxmid{background: #fff url() repeat-y; width:789px;}
.input { border-left:1px solid #cccccc; border-top:1px solid #cccccc; border-right:1px solid #dddddd; border-bottom:1px solid #dddddd;
    color:#666666; padding:4px 2px; font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#000000;  } 
.input:hover { border-left:1px solid #dddddd; border-top:1px solid #dddddd; border-right:1px solid #cccccc; border-bottom:1px solid #cccccc;
 background: #fdfdfd; } 
label { display: block; width:100px; float:left; margin: 5px 0px 4px 50px; text-align:right; font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#000000; }
#botton{ height:33px; margin:0 auto; padding-left:205px; }
.bleft{  height:33px; width:8px;}
.bright{  height:33px; width:8px; }
.bmid{  height:33px; padding:0px 4px; }
.arailw{ font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#ffffff; text-decoration:none; padding-top:8px; font-weight:bold;}
.arailw a:link, .arailw a:visited{ color:#ffffff; text-decoration:none; vertical-align:middle; }
.arailw a:hover{ color:#F8F8F8; text-decoration:none; vertical-align:middle;   }
</style>
</head>
 
<body>
 
<div id="container" align="center" style="vertical-align:middle" >
<div style="float:left; width:200px; padding:5px 10px; "><img src="images/logo.png" width="189" height="94" border="0" /></div>

 
 
<!-- <div style="clear:both"></div> -->
<!-- <div style="width:100%; height:4px; background-color:#cccccc;"></div> -->
<div class="rboxtop"></div>
 
 
 
<div class="rboxmid">
<div class="ariallarge" align="left" >Track my order<br />
  <span class="arial">Follow how your order is progressing. 
  To know the status, input your order number here.</span></div><br />
<div style="width:450px; margin:0 auto; border:1px solid #F3F3F3; padding:20px;">
<span class="arial12"><strong>To track the status of your order, enter your order number below.</strong></span><br /><br />
 
 
 
<label>Order Number: </label> 
<form name="f2" action="track.jsp">
<input type="text" name="orderno" class="input" size="30"/>
<br /><br />

<input type="submit" onclick=check() class="submitBtn" value="Track this Order"/>

</form>
</div>
<br /><br />

</div>
<div class="rboxbottom"></div>
</div>
</body>
</html>
 
 

