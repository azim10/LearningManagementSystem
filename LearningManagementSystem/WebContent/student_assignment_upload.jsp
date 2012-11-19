<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="javaClass.user"%>
     <%@ page import="java.sql.*" %> 
	<%@ page import="java.io.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="mycss.css"/>
<title>
 
</title>
</head>
<body>
<form ENCTYPE="multipart/form-data" action="Fileservlte" method=post>

<%
HttpSession session1=request.getSession();
session1.setAttribute("SLink", request.getParameter("SubmitionLink"));
 %>
 <%
 /* Create string of connection url within specified format with machine name, 
	port number and database name. Here machine name id localhost and 
	database name is usermaster. */ 
	String connectionURL = "jdbc:mysql://localhost:3306/test"; 

	// declare a connection by using Connection interface 
	Connection connection = null; 

	// Load JBBC driver "com.mysql.jdbc.Driver" 
	Class.forName("com.mysql.jdbc.Driver").newInstance(); 

	/* Create a connection by using getConnection() method that takes parameters of 
	string type connection url, user name and password to connect to database. */ 
	connection = DriverManager.getConnection(connectionURL, "root", "");
 %>
<div id="wrapper">
    <div id="header">
   
	 
	<img src="1.png" width="996"/>
	<div id="rightside">User:<%=session1.getAttribute("SavedUserName")%> 
	  
	 <a href="Login.jsp">SignOut </a>
	 </div>
    </div>  
        
	 <div id="contentarea"> 
	 
	
	 <div id="contentholder"> 
	   <h4 align="center">Assignment upload link</h4>
	   
	  <div id="indexpage">
	     
	  <table>
	   
	
	  
	  <tr><td><input type="file" name="uploadField" /><td> </td> <td><input type="submit" value="Upload" /> </td>  </tr>
	 
	  </table>
	  <%
	//  HttpSession session2=request.getSession();
	  	String query = "Select Path from uploadassign where s_id='" + session1.getAttribute("UserId") + "'  and C_id='" + session1.getAttribute("CId") + "' and Sublink='" + session1.getAttribute("SLink") + "' ";
		
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(query);

		while (rs.next()) {
			
			if(rs.getString(1)!=null) {%> 
			
		<a  href="<%out.println(rs.getString(1));%>"><% out.println(rs.getString(1));%></a><BR>
			
			
				<%
				
			}}
				rs.close();
		
		
	  
	  %> <a href="StudentGetResoursesAndUploadLinks.jsp">Back</a>
	  </div>
	
	 </div>
	   
	  
	 
    </div> 
	
</div>
 
 <div id="footer">
    </div> 
    </form>
</body>
</html>