
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="mycss.css"/>
<title>LMS</title>
<script src="validation.js"></script>
</head>

<body>
<form action="RegisterServalate" method="post" onSubmit="return RequiredField(this);">
<div id="wrapper">
    <div id="header">
	<img src="1.png" width="996"/>
    </div>  
        
	 <div id="contentarea"> 
	 
	
	 <div id="contentholder"> 
	   <h4 align="center">Register User</h4>
	  <div id="indexpage">
	      
	  <table>
	   
	 <tr><td>Email Id </td><td><input type="text" name="EmailId" id ="emailId"/><td> </td><td><span id ="error_EmailId" ></span> </td></tr>
<tr><td>User Name </td><td><input type="text" name="UserName" id = "username"/><td> </td><td><span id ="error_UserName" ></span> </td></tr>
<tr><td>User Type </td><td><select name="option" id="option"><option>Teacher</option>
									<option>Student</option>
									</select>
									<td> </td></tr>
<tr><td>Password </td><td><input type="password" name="Password" id = "password"/><td> </td><td><span id ="error_Password" ></span> </td></tr>
<tr><td>Confirm Password </td><td><input type="password" name="ConfirmPassword" id ="confirmpassword"/><td> </td><td><span id ="error_ConfirmPassword" ></span> </td></tr>
<tr><td>First Name </td><td><input type="text" name="FirstName" id = "fName"/><td> </td><td><span id ="error_FirstName" ></span> </td></tr>
<tr><td>Last Name </td><td><input type="text"  name="LastName" id = "lName"/><td> </td><td><span id ="error_LastName" ></span> </td></tr>
<tr><td>City </td><td><input type="text" name="City" id = "city"/><td> </td></tr>

<tr><td> </td><td><input type="submit"  value="Submit" id ="submit"/><td> </td></tr>
	  </table>
	  
	  <a href="Login.jsp">Back </a>
	  </div>
	 </div>
	   
	  
	 
    </div> 
	
</div>
 
 <div id="footer">
    </div> 
    </form>
</body>

</html>