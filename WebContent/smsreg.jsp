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
			.tab{background-image:url("tabreg.jpg");
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
				font-size:20px;}
			a{font-size:18px;
			  background:lightgrey;
			  color:black;
			  text-decoration:none;}
			th{color:white;
			   font-size:35px;}
			input[type=password],
			input[type=email],
			input[type=number],
			input[type=text] {border-bottom: 2px solid black;
							  border-radius: 10px;
							  width:200px;
							  height:12px;
							  padding:12px 20px;
							  margin:8px 0;
							  background-color: #F5FFFA;}
			select{border-bottom: 2px solid black;
							  border-radius: 10px;
							  width:250px;
							  height:40px;
							  padding:6px 20px;
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
					<tr><th>
						<form action="regaction.jsp">
		<pre>
User Name  <input type="text" name="uname" required>
Password   <input type="password" name="pass" required>
Regd. No.   <input type="number" name="regd" required>
E-Mail         <input type="email" name="mail" required>
Mobile No. <input type="number" name="phno" required>
Branch	   <input type="text" name="branch" required>
Role	   <select name="role">
			  <option value="Faculty">Faculty</option>
			  <option value="Student">Student</option>
			</select><br>
	<input type="submit" value="SignUp">	<input type="reset" value="Reset">
		</pre>
		</form></th>
					</tr>
					<tr>
					
				</table>
			</table>
			<center style="margin-top:590px">
				<h2>Dveloped by Neha Swapnil</h2>
			</center>
		</div>
	</body>
</html>