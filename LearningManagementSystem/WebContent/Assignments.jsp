<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="mycss.css"/>
<title>Insert title here</title>

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
	   
	    <div id="information1">
	   
	   <h1 align="center">STUDENTS  ASSIGNMENT</h1>
	   </div>
	  <div id="indexpage">
	     
	  <table>
	   
	
	  
	  <tr><td></td></tr> <br>
	 <tr> <td><br><%
	 File f = new File("C:\\Users\\AZIM\\Desktop\\myfiles");
	 File[] files = f.listFiles();
	 for(int i=0;i<files.length;i++){
	 String name=files[i].getName();
	 String path=files[i].getPath();
	 System.out.printf(path);


	 %>
	 <tr><td><a href="<%=path%>" ><%=name%></a></td></tr>
	 <%
	 }
	 %>  </td>  </tr><br>
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