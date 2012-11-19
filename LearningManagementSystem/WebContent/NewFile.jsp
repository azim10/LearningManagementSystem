<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="mystyle.css" />
<title>Insert title here</title>
<script>
function retreave(id){
	alert(id);
    var f=document.form;
    f.method="post";
    f.location.href="//myservalate/retreave?id="+id;
    f.submit();
}



</script>
</head>
<body>
<form action="inputservalate" method="post">
UserId:<input type="text" id="id" name="id"><BR><BR>
Username<input type="text" name="name"><BR><BR>
<input type="submit" value="submit">
<button onclick="myFunction()">Try it</button>

<!--  <input type="submit" value="showDetails" onclick="retreave(document.getElementById('id').value)">
-->


</form>



</body>
</html>