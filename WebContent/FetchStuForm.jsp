<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Student</title>
<link rel="stylesheet" href="Fetch.css" type="text/css"> 
<style>
 body{
   background-color:grey;
   }
</style>
<script type="text/javascript">
function nullcheck(){
   var name=document.FetchForm.name.value;
   if(name==null || name==""){
   alert("Name Can't Blank");
   return false;
   }else if(name.length<3){
   alert("Enter vaild Name");
   return false;
   }
   }
   function validate(obj,event){
   var inp=obj.name;
	if(inp=="name"){
	var k=event.keyCode;
	if((k>33 && k<=64) ||(k>=91 && k<=96)){
	alert("Numbers and Special Character not Allowed");
	return false;
	}
	}
   }
</script>
</head>
<body>
<form name="FetchForm" action="FetchstuServlet" method="post">
<div class="fr">
<label>Name:</label><input type="text" name="name" placeholder="Search Name" onkeypress="return validate(this,event)"/><br>
<input type="submit" value="submit" onclick="return nullcheck();"/>
</div>
</form>
</body>
</html>