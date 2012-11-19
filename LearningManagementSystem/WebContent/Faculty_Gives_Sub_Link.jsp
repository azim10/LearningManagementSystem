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
<form method="post" action="Faculty_gives_submittion_link_servalte">
<div id="wrapper">
    <div id="header">
	<img src="1.png" width="996"/>
	<%HttpSession session1=request.getSession(); %>
	 <div id="rightside">User:<%=session1.getAttribute("SavedUserName")%> 
	  
	 <a href="Login.jsp">SignOut </a>
	 <input type="text" value="<%=session1.getAttribute("CId")%>" name="CourseId"/>
	 </div>
    </div>  
      
	 <div id="contentarea"> 
	 
	
	 <div id="contentholder"> 
	  <h4 align="center">Faculty Issue Assignment Link</h4>
	  <div id="indexpage">
	      
	  <table>
	   
	  <tr><td> Topic Name</td> <td><input type="text" name="TopicName"/> </td>  </tr>
	  
	  <tr><td> Description</td> <td><textarea rows="4" cols="20" name="Description"> </textarea></td>  </tr>
	  <tr><td>Date of Announcing   </td> <td><input type="text" name="DateOfAnnouncing "> </td>  </tr>
	    <tr><td>Date of submission</td> <td><input type="text" name="DateOfSubmissio"> </td>  </tr>
		<tr><td>Disable link After</td> <td><input type="text" name="DisableLinkAfter"> </td>  </tr>
		<tr><td>Maximum Size   </td> <td>
		<select name="size">
		  <option value="1">1 mb</option>
  <option value="5 mb">5 mb</option>
  <option value="10 mb">10 mb</option>
  

</select> </td>  </tr>
	  
	  <tr><td> </td> <td><input type="submit" value="Submit" /> </td>  </tr>
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