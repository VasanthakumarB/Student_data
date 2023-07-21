<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css" type="text/css"> 
<style>
input#a:hover{
   background-c:blue;
   color:black;

}
 body{
   background-color:grey;
   }
</style>
<script type="text/javascript">
 function nullcheck(){
   var name=document.UpdateForm.name.value;
   var age=document.UpdateForm.age.value;
   var email=document.UpdateForm.email.value;
   var phoneno=document.UpdateForm.phoneno.value;
   var doj=document.UpdateForm.doj.value;
   var stuid=document.UpdateForm.stuid.value;
   if(name=="null" || name==""){
   alert("Name can't Blank");
   return false;
   }
   else if(age=="null" || age==""){
   alert("Age can't Blank");
   return false;
   }
   else if(email=="null" || email==""){
   alert("Email can't Blank");
   return false;
   }
   else if(phoneno=="null" || phoneno==""){
   alert("Phone Number Can't Blank");
   return false;
   }
   else if(doj=="null" || doj==""){
   alert("Date Can't Blank");
   return false;
   }
   else if(stuid==null || stuid==""){
   alert("Student Id can't Blank");
   return false;
   }
   else if(name.length<3){
   alert("Enter the Vaild Name");
   return false;
   }else if(age.length>3){
   alert("Please Enter Vaild Age");
   return false;
 	}
 	else if(phoneno.length!=10){
 	alert("Enter the 10 Number");
 	return false;
 	}
 }
 	function checkemail(){
 	var email=document.UpdateForm.email.value;
 	var mail=/^\w+@[a-zA-Z]+?\.[a-zA-Z]{2,3}$/;
 	if(!email.match(mail)){
 	alert("Enter vaild email");
 	return false;
 	}
 }
	function vaildate(){
	var date=document.UpdateForm.doj.value;
	var Date=/^[0-9]{2}?-[A-Z]{3}-[0-9]{4}$/;
	if(!date.match(Date)){
	 alert("Enter the Date Format");
	 return false;
	 }
}
 function vaildSumbit(){
 var retvalue;
 retvalue=nullcheck();
 if(retvalue==false){
 return retvalue;
 }
 retvalue=checkmail();
 if(retvalue==false){
 return retvalue;
 }
 retvalue=vaildate();
 if(retvalue==false){
 return retvalue;
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
	else if(inp=="age"){
	var k=event.keyCode;
	if(k>31 && (k< 48 || k>57)){
	alert("Alpha and Special Character not Allowed");
	return false;
	}
	}else if(inp=="phoneno"){
	var k=event.keyCode;
	if(k>31 && (k<48 || k>57)){
	alert("Alpha and Special Character not Allowed");
	return false;
	}
	}else if(inp=="stuid"){
	var k=event.keyCode;
	if(k>31 && (k<48 || k>57)){
	alert("Alpha and Special Character not Allowed");
	return false;
	}
	}
}
 
 </script>
</head>
<body>
<form name="UpdateForm" action="UpdateSer" method="post">
<div class=fr>
<h1>Update Student</h1><br>
 <label>Name</label><input type="text" placeholder="Enter the Name" name="name" onkeypress="return validate(this,event)" value="<%=""+request.getParameter("name") %>" /><br>
 <label>Age</label><input type="text" placeholder="Enter the Age" name="age" onkeypress="return validate(this,event)" value="<%=request.getParameter("age")%>"/><br>
 <label>Email</label><input type="text" placeholder="Enter the Email" name="email" value="<%=request.getParameter("email")%>" /><br>
 <label>Phone No</label><input type="text" placeholder="Enter the Phoneno" name="phoneno" onkeypress="return validate(this,event)" value="<%=request.getParameter("phoneno")%>"/><br>
 <label>DateOfJoin</label><input type="text" placeholder="Format 01-JAN-1970" name="doj" value="<%=request.getParameter("doj")%>" /><br>
 <label>ID</label><input type="text" placeholder="Student id Number" name="stuid" onkeypress="return validate(this,event)" value="<%=request.getParameter("stuid")%>"/><br>
 <input type="Submit" value="Update" onclick="return vaildSumbit();"/><br>
 </div>
 </form>
</body>
</html>