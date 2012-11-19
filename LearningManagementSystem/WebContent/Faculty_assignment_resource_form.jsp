<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="mycss.css"/>
<title>
 
</title>
</head>
<body>
<%
HttpSession session1=request.getSession();
String id=request.getParameter("CourseId");
System.out.println(request.getParameter("CourseId"));


	session1.setAttribute("CId", request.getParameter("CourseId")); %>
	
<%
try{
	
	HttpSession session3=request.getSession();
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
	connection = DriverManager.getConnection(connectionURL, "root", ""); %>
<div id="wrapper">
    <div id="header">
	<img src="1.png" width="996"/>
	
	 <div id="rightside">User:<%=session1.getAttribute("SavedUserName")%> 
	  
	 <a href="Login.jsp">SignOut </a>
	 </div>
    </div>  
        
	 <div id="contentarea"> 
	 
	
	 <div id="contentholder" > 
	   <h4 align="center">Upload Resourse And Assignment </h4>
	    
	    
	   <div id="upload_link_1">
	    <form method="post" action="faculty_uploads_reading_material.jsp">
	   <input type="submit" value="Upload Resources">
	   <br>
	  		
	   </form>
	   </div>
	 
	   <div id="resource_link_1">
	   <form method="post" action="Faculty_Gives_Sub_Link.jsp">
	    	      <input type="submit" value="Give Assignment Link"><br>
	    	      <%String query = "Select TopicName,TeacherId,CourseId from faculty_gives_submittion_link where TeacherId='" + session1.getAttribute("UserId") + "' and CourseId='" + session1.getAttribute("CId") + "'";
			
			Statement stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(query);

			while (rs.next()) {
				
				if(rs.getString(1)!=null) {%> 
				
			<a  href="Assignments.jsp?CourseId=<%out.println(rs.getString(3)); %>"><% out.println(rs.getString(1));%></a><BR><BR>
				
				
					<%}}
					rs.close();
			}
			catch(Exception e)
			{
				out.println(e);
			}
		  
		  %>
	    	       
	   </form>
	   </div>
	  <div id="indexpage">
	
	        
	 
	  </div>
	   
	 </div>
	   
	  
	 
    </div> 
	
</div>
 
 <div id="footer">
    </div> 
</body>
</html>