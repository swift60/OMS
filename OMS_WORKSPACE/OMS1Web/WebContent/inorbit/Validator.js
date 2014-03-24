
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
	
	
	var a = document.getElementById("uname").value; 
	var b = document.getElementById("addresss").value; 
	var c = document.getElementById("username").value;
	var d= document.getElementById("password").value;
	var e = document.getElementById("email").value;

	var i = document.getElementById("contact").value;
	
	var j = document.getElementById("confirmpassword").value;

	if(a==null || a=='')
	{
		alert("Please enter your name");
        return false;
	}
	if(b==null || b=='')
	{
		alert("Please enter your address");
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
	
	
		
}


 		 return true;					
	}



