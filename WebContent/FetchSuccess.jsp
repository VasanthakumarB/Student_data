<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*,java.util.Date,java.sql.*,java.text.SimpleDateFormat,java.lang.String" %>
<%@ page import="p2.UpdateBean" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Fetch.css" type="text/css"> 
<style>
 body{
   background-color:grey;
   }
</style>
</head>
<body>
<div class="fr">
   <% p2.UpdateBean bean=(p2.UpdateBean)request.getAttribute("k"); %>
   <b>Student Id:</b><%=bean.getStuid() %><br>
   <b>Name:</b><%= bean.getName() %><br>
   <b>Age:</b><%= bean.getAge() %><br>
   <b>Email:</b><%= bean.getEmail() %><br>
   <b>Phoneno:</b><%= bean.getPhoneno() %><br>
   <b>Date Of join:</b><%=bean.getDate()%><br>
   <a href="index.jsp">Go to Home Page</a><br>
   </div>
</body>
</html>