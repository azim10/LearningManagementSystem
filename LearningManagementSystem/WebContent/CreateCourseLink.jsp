<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="mycss.css"/>
<title>Insert title here</title>
</head>
<body>

<form action="AddNewCourseForm.jsp">
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
	 <h4 align="center">Add / Access Course link form</h4>
	  <div id="indexpage">
	      
	  <table>
	    <%HttpSession session2=request.getSession(); %>
	    
	  <tr><td>Click To Add Course:  </td> <td><input type="submit" value="Add Course" /> </td>  </tr>
		 </table>
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
		connection = DriverManager.getConnection(connectionURL, "root", "");
		String query = "Select CourseName,Teacher,CourseId from addnewcourseform form where T_id='" + session2.getAttribute("UserId") + "' ";
		
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(query);

		while (rs.next()) {
			
			if(rs.getString(1)!=null) {%> 
			
		<a  href="Faculty_assignment_resource_form.jsp?CourseId=<%out.println(rs.getString(3)); %> "><% out.println(rs.getString(1));%></a><BR>
			
			
				<%}}
				rs.close();
		}
		catch(Exception e)
		{
			out.println(e);
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
</body>
</html>