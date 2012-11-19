<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="mycss.css"/>
<title>Login</title>
<script>
function validate(){
var username=document.form.UserName.value;
var password=document.form.Password.value;
if(username==""){
 alert("Enter Username!");
  return false;
}
if(password==""){
 alert("Enter Password!");
  return false;
}
return true;
}
</script>
</head>
	 
<body>
<form name="form" action="loginServalate" method="post" onsubmit="javascript:return validate();">
<div id="wrapper">
    <div id="header">
	<img src="1.png" width="996"/>
    </div>  
        
	 <div id="contentarea"> 
	 
	  
	 <div id="contentholder"> 
	 <h4 align="center">Login</h4>
	  <div id="indexpage">
	      
	  <table>
	   
	  <tr><td> User Name  </td> <td><input type="text" name="UserName" id = "userName"/> </td>  </tr>
	  
	  <tr><td> Password  </td> <td><input type="Password" name="Password" id = "password"/> </td>  </tr>
	  
	  <tr><td>  </td>  <td><input type="submit" value="Submit" id = "submit"/> </td> </tr>
	<tr><td></td>  <td><a href="RegisterUser.jsp">Register User </a></td> </tr>
	  </table>
	 
	  
	  <%String msg=request.getParameter("msg");
if(msg!=null){
	%>
	
	 <label><font color="red"><%=msg%></font></label> 
	<%
}
    %>
	
	
	  
	  
	  </div>
	 </div>
	   
	  
	 
    </div> 
	
</div>
 
 <div id="footer">
    </div> 
     </form>
   
</body>
</html>

