<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
   <%@ page import="javaClass.user"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<form method="post" action="retreave"> 




<%		
			user name=new user();
           if (request.getAttribute("name") != null) {
            	name= (user) request.getAttribute("name");
            }

		
%>

UserId:<input type="input" name="name" value="<%=name.getId()%>"><BR><BR>
Username:<input type="input" name="name" value="<%=name.getName()%>"><BR><BR>
<input type="submit" value="showDetails">
</form>

</body>


</html>