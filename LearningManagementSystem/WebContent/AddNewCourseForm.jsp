<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="mycss.css"/>
</head>
<body>
<form method="post" action="AddNewCourseFormServalate">
<div id="wrapper">
    <div id="header">
	<img src="1.png" width="996"/>
	<%HttpSession session1=request.getSession(); %>
	 <div id="rightside">User:<%=session1.getAttribute("SavedUserName")%> 
	  
	 <a href="Login.jsp">SignOut </a>
	 </div>
    </div>  
      
	 <div id="contentarea"> 
	 
	
	 <div id="contentholder"> 
	  <h4 align="center">Faculty Issue Assignment Link</h4>
	  <div id="indexpage">
	      
	  <table>
	   
	  <tr><td> Course Name</td> <td><input type="text" name="CourseName" id="CourseName"/> </td>  </tr>
	  
	  <tr><td> Description</td> <td><textarea rows="4" cols="20" name="Description" id="Description"> </textarea></td>  </tr>
	   <tr><td> Course Key</td> <td><input type="text" name="CourseKey" id="CourseKey"/> </td>  </tr>
 

	  
	  <tr><td> </td> <td><input type="submit" id="submit" /> </td>  </tr>
	  </table>
	  </div>
	 </div>
	   
	  
	 
    </div> 
	
</div>
 
 <div id="footer">
    </div> 
    </form>
</body>
</html>