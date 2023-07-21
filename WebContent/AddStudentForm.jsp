<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Student Form</title>
<style type="text/css">
.nav{
   overflow:hidden;
   }
   .nav a.act {
  background-color: #04AA6D;
  color: white;
  }
   .nav a{
   float:left;
   color:white;
   text-align:center;
   padding: 14px 16px;
   text-decoration:none;
   font-size:bold;
   }
   .nav a:hover{
   background-Color:white;
   color:black;
   }
.fr{
 text-align:middle;
 height:600px;
 width:500px;
 border-radius:10px;
background:linear-gradient(55deg,dodgerblue,white);
 border-style:solid;
 border-color:green;
 padding:40px 30px;
 margin:auto;
 }
 input{
 border-radius:10px;
 width:200px;
 padding:4px;
 height:30px;
 }
   label{
   font-size:16px;
 width:150px;
 height:50px;
 font-weight:bold;
 display: inline-block;
 margin:5px;
 padding:4px;
 }
   body{
   background-color:grey;
   }
   input#ADD:hover{
   background-color:blue;
   color:white;
   </style>
<script type="text/javascript">
	function nullcheck(){
	var Name=document.StudentForm.name.value;
	var Age=document.StudentForm.age.value;
	var Email=document.StudentForm.email.value;
	var PhoneNo=document.StudentForm.phoneno.value;
	if(Name==null || Name==""){
	document.StudentForm.name.style.borderColor="red";
	alert("Name Can't Blank");
	return false;
	}else if(Age==null || Age==""){
	alert("Please Enter Age");
	return false;
	}else if(Email==null || Email==""){
	alert("Please Enter Email");
	return false;
	}else if(PhoneNo==null || PhoneNo==""){
	alert("Please Enter PhoneNumber");
	return false;
	}else if(Name.length<3){
	alert("please Enter Name");
	return false;
	}else if(Age.length>2){
	alert("please Valid Age");
	return false;
	}else if(PhoneNo.length!=10){
	alert("Please Enter the 10 Number");
	return false;
	}
	}
	function checkEmail(){
	var email=document.StudentForm.email.value;
	var mail=/^\w+@[a-zA-Z]+?\.[a-zA-Z]{2,3}$/;
	if(!email.match(mail)){
	alert("Email must contain @ and .");
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
	}
}
function validateDate(){
   var Date=document.StudentForm.Date.value;
   var date=/^[0-9]{2}?-[A-Z]{3}-[0-9]{4}$/;
   if(!Date.match(date)){
   alert("Invalid Date Format contain DD-MON-YEAR");
   return false;
   }
 }
 function vaildatesubmit(){
    var retvalue;
	retvalue=nullcheck();
	if(retvalue==false){return retvalue;}
	
	retvalue=checkEmail();
	if(retvalue==false){return retvalue;}
	
	retvalue=validateDate();
	if(retvalue==false){return retvalue;}
	
	}
	
</script>
</head>
<body>
<form name="StudentForm" action="AddstuServlet" method="post">
    <div class="nav">
<a class="act" href="index.jsp">Home</a>
<a href="FetchAllSer">Student Details</a>
<a href="Update.jsp">Update</a>
</div>
    <div class="fr">
<h1>Insert New Student</h1><br>
<h3>Student Form</h3>
<label>Name:</label><input type="text" placeholder="Enter Your Name" name="name" onkeypress="return validate(this,event)"/><br>
<label>Age:</label><input type="text" placeholder="Enter Your Age" name="age" onkeypress="return validate(this,event)"/><br>
<label>Email:</label><input type="text" placeholder="Enter Your Email" name="email" /><br>
<label>Phone number:</label><input type="text" placeholder="Enter Your PhoneNumber" name="phoneno" onkeypress="return validate(this,event)"/><br>
<label>Date of Join:</label><input type="text" placeholder="Format 01-JAN-1970" name="Date"/><br>
<input type="submit" value="AddStudent" id="ADD" onclick="return vaildatesubmit();"/>
</div>
</form>
</body>
</html>