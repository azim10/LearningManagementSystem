<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="javaClass.user"%>
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
	   <h4 align="center">Courses To Select</h4>
	    
	   <div id="course_list">
	   List Of Courses:
	   <table>
	   
	 
	  
	     </table>
	     
	      <%
	try{
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
		
		String query = "Select CourseName,Teacher,CourseId,T_Id from addnewcourseform ";
		
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(query);

		while (rs.next()) {
			
			if(rs.getString(1)!=null) {%> 
			
		<a  href="CheckReg.jsp?CourseId=<%out.println(rs.getString(3)); %>&T_id=<%out.println(rs.getString(4)); %>"><% out.println(rs.getString(1));%></a><BR>
			<label><% out.println(rs.getString(2));%></label><BR><BR>
			
				<%
				
			}}
				rs.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}
	  
	  %>
	  
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