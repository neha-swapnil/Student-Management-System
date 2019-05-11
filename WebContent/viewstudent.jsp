<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Management System: View Student</title>
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
	<h2>View Student</h2>
	<script>
		n=new Date();
		d=n.getDate()+"-"+(n.getMonth()+1)+"-"+n.getFullYear();
		document.write("<h3>Today is "+d+"</h3>");
	</script>
	<center>
	<form action="viewstudentaction.jsp">
		<pre>
Enter RegdNo	<input type="number" name="regd" required><br>
		<input type="submit" value="View Student">
		</pre>
	</form>
	</center>
</body>
</html>