
function validateLoginForm()
{
	
	
	var c = document.getElementById("username").value;
	
	var d= document.getElementById("password").value;
	
	if(c==null ||d=='' )
	{
		alert("Please enter the username.");
		return false;
	}else if(d==null || d=='' )
	{
		alert("Please enter the password.");
		return false;
	}else
	{
	
	return true;
	}
		
}

function validateRegisterForm()
{
	
	
	var a = document.getElementById("firstname").value; 
	var b = document.getElementById("lastname").value; 
	var c = document.getElementById("username").value;
	var d= document.getElementById("password").value;
	var e = document.getElementById("email").value;
	var f = document.getElementById("day").value;
	var g = document.getElementById("month").value;
	var h = document.getElementById("year").value;
	var i = document.getElementById("contact").value;
	
	var j = document.getElementById("confirmpassword").value;

	if(a==null || a=='')
	{
		alert("Please enter your firstname");
        return false;
	}
	if(b==null || b=='')
	{
		alert("Please enter your lastname");
        return false;
	}
	
		if(c==null ||c==''  )
	{
		alert("Please enter the Username.");
		return false;
	}
	 if(d==null || d=='' )
	{
		alert("Please enter the Password.");
		return false;
	}
	if(j==null || j=='' )
	{
		alert("Please confirm the password.");
		return false;
	}
	if (i==null || i=='')
	{
		alert("Please enter contact no.");
		return false;
	}
	if (i==null || i=='')
	{
		alert("Please enter contact no.");
		return false;
	}
	if (i==null || i=='')
	{
		alert("Please enter contact no.");
		return false;
	}
	

	
	
	
	if(e==null || e=='')
	{
		alert("Please enter your email.");
		return false;
	}
	if(j!=d)
	{
		alert("Passwords entered do not match.");
		return false;
	}
	
	if (isNaN(i))
	{
	{alert ("please enter valid Contact Number");
	return false;
	}
	
	return echeck(e);
		
}

function echeck(str) {

		var at="@";
		var dot=".";
		var lat=str.indexOf(at);
		var lstr=str.length;
		var ldot=str.indexOf(dot);
		if (str.indexOf(at)==-1)
		{
		   alert("Invalid E-mail ID");
		   return false;
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   alert("Invalid E-mail ID");
		   return false;
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    alert("Invalid E-mail ID");
		    return false;
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    alert("Invalid E-mail ID");
		    return false;
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    alert("Invalid E-mail ID");
		    return false;
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    alert("Invalid E-mail ID");
		    return false;
		 }
		
		 if (str.indexOf(" ")!=-1){
		    alert("Invalid E-mail ID");
		    return false;
		 }

 		 return true;					
	}



}