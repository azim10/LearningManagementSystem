<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="mycss.css"/>
<title>Insert title here</title>
</head>
<body>
<form method="post" action="">
<div id="wrapper">
    <div id="header">
    <%HttpSession session1=request.getSession(); %>
	 <div id="rightside">
	 </div>
	<img src="1.png" width="996"/>
    </div>  
        User:<%=session1.getAttribute("SavedUserName")%> 
	  
	 <a href="Login.jsp">SignOut </a>
	 <div id="contentarea"> 
	 
	
	 <div id="contentholder"> 
	   <h4 align="center">Resource File Upload</h4>
	     
	  <div id="indexpage">
	     
	  <table>
	   
	
	  
	  <tr><td><input type="file" name="uploadField" /><td> </td> <td><input type="submit" value="Upload" /> </td>  </tr>
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