<%@ page import="java.sql.*"%>
<%
	String name=request.getParameter("uname");
	String pass=request.getParameter("pass");
	String regd=request.getParameter("regd");
	String mail=request.getParameter("mail");
	String phno=request.getParameter("phno");
	String branch=request.getParameter("branch");
	String role=request.getParameter("role");
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
		PreparedStatement ps=con.prepareStatement("insert into regdinfo values(?,?,?,?,?,?,?)");
		ps.setString(1,name);
		ps.setString(2,pass);
		ps.setString(3,regd);
		ps.setString(4,mail);
		ps.setString(5,phno);
		ps.setString(6,branch);
		ps.setString(7,role);
		int r=ps.executeUpdate();
		if(r>=1)
		{
			out.println("<script>alert('DONE!');</script>");
			if(role.equals("Student"))
				response.sendRedirect("swelcome.jsp");
			else
				response.sendRedirect("fwelcome.jsp");
		}
		else
			out.println("Failed to Insert");
		con.close();
	}
	catch(Exception e)
	{
			out.print(e);
	}
%>