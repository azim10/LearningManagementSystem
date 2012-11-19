<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="javaClass.user"%>
      <%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%
			HttpSession session1=request.getSession();
		HttpSession session2=request.getSession();
		
		String id=request.getParameter("CourseId");
		System.out.println(request.getParameter("T_id"));
		
		
  		session2.setAttribute("CId", request.getParameter("CourseId"));
  		session2.setAttribute("T_id", request.getParameter("T_id"));
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
		
		String query = "Select UserId,CourseId from RegisterCourse  where UserId ='"+session1.getAttribute("UserId")+"' and CourseId ='"+request.getParameter("CourseId")+"' "; 
		
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(query);
		
		if(rs.next())
		{
			RequestDispatcher rd = request.getRequestDispatcher("StudentGetResoursesAndUploadLinks.jsp");
	  		rd.forward(request, response);
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("RegisterCourse1.jsp");
	  		rd.forward(request, response);
		}

		
		rs.close();
		
	

	  
	  %>
</body>
</html>