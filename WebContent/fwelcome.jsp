<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Welcome Student</title>
	<link rel="icon" href="icon.ico" type="image/x-icon">
	<style>
		html{background:url("bgsms.jpg") no-repeat center center fixed;
			 -webkit-background-size: cover;
	  		 -moz-background-size: cover;
	  		 -o-background-size: cover;
	  		 background-size: cover;}
	  	body{background: transparent;}
		h1{background:blue;
		   color:yellow;
		   font-size:50px;
		   border:2px solid yellow;
		   text-align:center;}
		th{border:3px solid blue;
		   width:200px;
		   height:50px;
		   font-size:20px;}
		th:hover{background:lightgray;
				 color:red;}
	</style>
	</head>
	<body>
		<h1>Student Management System: Faculty</h1>
		<table>
			<tr><th onclick=window.location="addstudent.jsp">Add Student</th></tr>
			<tr><th onclick=window.location="viewstudent.jsp">View Student</th></tr>
			<tr><th onclick=window.location="enquiry.jsp">Enquiry</th></tr>
			<tr><th onclick=window.location="delstudent.jsp">Delete Student</th></tr>
			<tr><th onclick=window.location="logoutaction.jsp">Logout</th></tr>
		</table>
	</body>
</html>