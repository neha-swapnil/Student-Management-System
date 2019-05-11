<!DOCTYPE html>
<html>
	<head>
		<title>Student Management System</title>
		<link rel="icon" href="icon.ico" type="image/x-icon">
		<style>
			.outer{overflow:hidden;
				   background-color:#3e6795;
				   width:1270px;
				   height:595px;
				   position: absolute;
				   padding: 30px}
			.tab{background-image:url("tablogin.jpg");
				 margin-top: 10px;
				 margin-left: 10px;
				 margin-right: 10px;
				 margin-bottom: 10px;
				 background-color:#f2f2f2;
				 width:1250px;
				 height:580px;
				 position:absolute;
				 border:2px solid black;}
			.innertab{background-image:url("tab.jpg");
					  background-position:center;
					  position:absolute;
					  margin-top: 10px;
					  margin-left: 760px;
					  margin-right: 10px;
					  margin-bottom: 10px;
					  width:500px;
					  height: 580px;
					  border:2px solid black;
					  cell-spacing:0px;
					  cell-padding:0px;}
			pre{color:black;
				font-family:arial;
				font-size:30px;}
			a{font-size:18px;
			  background:lightgrey;
			  color:black;
			  text-decoration:none;}
			th{color:white;
			   font-size:35px;}
			input[type=password],
			input[type=text] {border-bottom: 2px solid black;
							  border-radius: 10px;
							  width:240px;
							  height:20px;
							  padding:12px 20px;
							  margin:8px 0;
							  background-color: #F5FFFA;}
			input[type=submit], 
			input[type=reset] {background-color: #db6d22;
							   border-radius: 10px;
							   border:2px solid black;
							   color: white;
							   padding: 10px 25px;
						       text-decoration: bold;
						       font-family:arial;
						       font-size:20px;
							   margin: 2px 1px;
							   cursor: pointer;}
		</style>
	</head>
	<body bgcolor="#5781b7" style="padding:10px;">
		<div class="outer">
			<table class="tab">
				<table class="innertab">
					<tr>
						<th>
						<form action="loginaction.jsp">
		<pre>


User Name <input type="text" name="uname" required>
Password  <input type="password" name="pass" required>
	<input type="submit" value="SignUp">	<input type="reset" value="Reset">


	  <a href="forgot.jsp">Forgot Password</a>
	  <a href="smsreg.jsp">Register</a>
		</pre>
		</form></th>
					</tr>
					<tr>
					
				</table>
			</table>
			<center style="margin-top:590px">
				<h2>Developed by Neha Swapnil</h2>
			</center>
		</div>
	</body>
</html>