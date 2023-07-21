<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index</title>
<style>
button#a{
width:200px;
height:50px;
display:inline-block;
  padding:10px 20px;
  border-style:solid;
  border-color:green;

}
button#a:hover{
background-color:blue;
color:black;
}
div.SA{
    margin:right;
    }
body{
   background-color:gray;
   }
div.Inde{
   position:fixed;
    top: 50%;
    left:50%;
   
    height:430px;
   margin-top: -9em ;
	margin-left: -15em;
	background:linear-gradient(60deg,dodgerblue,white);
	width: 450px;
	padding: 10px 20px;
	border-radius: 30px;
	border-style:solid;
	border-color:yellow;
	}
table.center{
margin:auto;
}	
</style>
</head>
<body>
<form>
<div class="Inde">
<table class="center" border="5" cellspacing="10px" cellpadding="10px">
  <caption>Student Information System</caption>
	<tbody>
	<tr>
	<td><button id="a"  type="button" onclick="location.href='AddStudentForm.jsp'">AddStudent</button></td>
	</tr>
	<tr>
	<td><button id="a" type="button" onclick="location.href='Update.jsp'">Update Student</button></td>
	</tr>
	<tr>
	<td><button id="a" type="button" onclick="location.href='FetchStuForm.jsp'">Fetch Student</button></td>
	</tr>
	<tr>
	<td><button id="a" type="button" onclick="location.href='FetchAllSer'" id="userid">Fetch All Student</button></td>
	</tr>
</tbody>
</table>
</div>
</form>
</body>
</html>