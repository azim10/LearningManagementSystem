
  
  function checkPassConfirm(){
	  
	  var pass = document.getElementById("password").value;
	  var c_pass = document.getElementById("confirmpassword").value;
	  
	  if(pass!=c_pass){
		  
		  document.getElementById("password").value = "";
		  document.getElementById("confirmpassword").value="";
		  document.getElementById("error_ConfirmPassword").innerHTML="Passwords do not match";
		return false;
		  
		
	  }
	  return true;
	  
  }
  
  function trim(s){
	  return s.replace( /^\s*/, "" ).replace ( /\s*$/, "");
  }
  
  
  function RequiredField(f)
  {
	 var i,field;
	  for(i=0; i<f.elements.length; i++){
		 field=f.elements[i].name;
		 value=trim(f.elements[i].value);
		 
		 if(value=="" || value==null)
		{
			 document.getElementById("error_"+field).innerHTML="* "+field+" Required";
			 f.elements[i].focus();
			 return false;
			 
		}
	  
	  }
	  return true;
  }
  
  
  function validateEmail()
  {
  var x=document.forms["frm"]["email"].value;
  var atpos=x.indexOf("@");
  var dotpos=x.lastIndexOf(".");
  if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
    {
	document.getElementById("error_emailId").innerHTML="* Invalid email id";
    return false;
    }
  return true;
  }
  
  function validateNumber(f)
  {
	  var number = /^[0-9]+$/;
	  input = document.getElementById("pnumber").value;
	  if(input.match(number))
		  {
		  	return true;
		  }
	  else
		  {
		  	document.getElementById("error_phnum").innerHTML="* "+field+" Enter Numbers Only";
		  	return false;
		  }
  }