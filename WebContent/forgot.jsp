<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create New Password</title>
<link rel="icon" href="icon.ico" type="image/x-icon">
<style>
	html{background:url("bgsms.jpg") no-repeat center center fixed;
			 -webkit-background-size: cover;
	  		 -moz-background-size: cover;
	  		 -o-background-size: cover;
	  		 background-size: cover;}
  	body{background: transparent;}
	h3{text-align:right;}
	h1{background:blue;
	   color:yellow;
	   font-size:50px;
	   border:2px solid yellow;
	   text-align:center;}
</style>


</head>
<body>
	<h1>Student Management System</h1><hr>
	<h2>Create New Password</h2>
	<script>
		n=new Date();
		d=n.getDate()+"-"+(n.getMonth()+1)+"-"+n.getFullYear();
		document.write("<h3>Today is "+d+"</h3>");
	</script>
	<center>
	<form action="forgotaction.jsp">
<pre>
Your Registered RegdNo     <input type="number" name="regd" required><br>
New Password		   <input type="password" name="password" id="password" onchange='check_pass();'/><br>
Confirm Password	   <input type="password" name="confirm_password" id="confirm_password" onchange='check_pass();'/><br>
   <input type="submit" name="submit"  value="Submit"  id="submit"/>
		</pre>
	</form>
	</center>
</body>
</html>