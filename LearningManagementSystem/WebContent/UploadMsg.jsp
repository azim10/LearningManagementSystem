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
<form ENCTYPE="multipart/form-data" action="student_assignment_upload.jsp" method=post>


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
	   
	    <div id="information">
	   
	   
	   </div>
	  <div id="indexpage">
	     
	  <table>
	   
	
	  
	  <tr><td><h1>YOUR FILE HAS BEEN SAVED  IN DATABASE</h1></td></tr> <br>
	 <tr> <td><br><h4 align="center"><input type="submit" value="Continue" /></h4> </td>  </tr><br>
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