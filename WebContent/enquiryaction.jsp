<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Management System: Delete Student</title>
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
</style>
</head>
<body>
	<h1>Student Management System</h1><br>
	<%@ page import="java.sql.*" %>
	<%
		String regd=request.getParameter("regd");
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
			PreparedStatement ps=con.prepareStatement("select * from regdinfo where regdno=?");
			ps.setString(1,regd);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				out.println("<center><h3>Name:"+rs.getString(1));
				out.println("<br>RegdNo:"+rs.getString(3));
				out.println("<br>Email:"+rs.getString(4));
				out.println("<br>Mobile:"+rs.getString(5)+"</h3></center>");
			}
			con.close();
		}
		catch(Exception e)
		{
			out.println("<h3>RECORD NOT FOUND</h3>");
		}
	%>
	<br>
	<a href="enquiry.jsp">Back to Enquiry</a>
</body>
</html>