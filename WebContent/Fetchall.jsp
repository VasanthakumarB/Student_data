<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>
<%@page import="java.sql.Date" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ListIterator" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="p2.UpdateBean"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fetch All Student</title>
<link rel="stylesheet" href="Fetchall.css" type="text/css"> 
<style>
 body{
   background-color:grey;
   }
</style>
<script type="text/javascript">
function Confirm(){
   var answer = window.confirm("Are you sure you want to Delete this thing into the database?");
if (answer) {
    console.log('Thing was Delete to the Database');
}
else {
    console.log("doesn't Deleter this data");
    return false;
}
}
</script>
</head>
<body>
<div class="ra">
<table border="2" style="width:100">
        <tr>
            <th>Name</th>
            <th>Age</th>
            <th>Email</th>
            <th>Phoneno</th>
            <th>DateOfJoin</th>
            <th colspan="2">Action</th>           
            </tr>
            <%List<p2.UpdateBean> list=new ArrayList<p2.UpdateBean>(); %>
            <%list=(List<p2.UpdateBean>)request.getAttribute("li"); %>
            <%ListIterator<p2.UpdateBean> litr=list.listIterator(); %>
            <%while(litr.hasNext()){%>
           <% p2.UpdateBean bean=litr.next();%>
           <tr>
        <td>  <%=bean.getName() %></td>
            <td>  <%=bean.getAge() %></td>
            <td>  <%= bean.getEmail() %></td>
            <td>  <%=bean.getPhoneno() %></td>
            <td>  <%=bean.getDate() %></td>
            <td><a href="Update.jsp?name=<%=bean.getName()%>&age=<%=bean.getAge()%>&email=<%=bean.getEmail()%>&phoneno=<%=bean.getPhoneno() %>&doj=<%=bean.getDate() %>&stuid=<%=bean.getStuid() %>">Update</a></td>
            <td><a href="Delete?stuid=<%=bean.getStuid() %>" onclick="return Confirm();">Delete</a></td>
            </tr>
            <%} %>
</table>
<a href="index.jsp">Go to Home Page </a><br>    <a href="AddStudentForm.jsp">Add Student</a>
</div>
</body>
</html>