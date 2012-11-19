<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="mycss.css"/>
<title>RegisterCourse</title>
</head>
<body>
<form method="post" action="RegisterCourseServlet">
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
	   <h4 align="center">Resource File Upload</h4>
	     
	  <div id="indexpage">
<table align="center">

<tr><td>Course Key </td><td><input type="text" id ="courseKey" name="courseKey"/><td> </td></tr>

<tr><td> </td><td><input type="submit"  value="Submit" /><td> </td></tr>
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