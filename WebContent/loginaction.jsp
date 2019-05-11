<%@ page import="java.sql.*"%>
<%
	String name=request.getParameter("uname");
	String pass=request.getParameter("pass");
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
		PreparedStatement ps=con.prepareStatement("select * from regdinfo where name=? and password=?");
		ps.setString(1,name);
		ps.setString(2,pass);
		ResultSet rs=ps.executeQuery();
		
		if(rs.next())
		{
			String role = (String)rs.getObject(7);
			if(role.equals("Student"))
				response.sendRedirect("swelcome.jsp");
			else
				response.sendRedirect("fwelcome.jsp");
		}
		else
			response.sendRedirect("invalid.jsp");
		con.close();
	}
	catch(Exception e)
	{
			out.print(e);
	}
%>