<%@ page import="java.sql.*"%>
<%
	int regd=Integer.parseInt(request.getParameter("regd"));
	String pass=request.getParameter("password");
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
		PreparedStatement ps=con.prepareStatement("update regdinfo set password = '?' where regdno = ?");
		ps.setString(1,pass);
		ps.setInt(2,regd);
		int r=ps.executeUpdate();
		if(r>=1)
		{
			out.println("<script>alert('DONE!');</script>");
			response.sendRedirect("swelcome.jsp");
			out.println("DONE");
		}
		else
			out.println("Failed to Insert");
		con.close();
	}
	catch(Exception e)
	{
			out.print(e);
			out.println(pass+ " " +regd);
	}
%>