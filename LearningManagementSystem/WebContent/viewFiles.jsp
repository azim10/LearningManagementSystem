<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.*"%>
<table>
<%
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
%>

<% 
%>
</table>