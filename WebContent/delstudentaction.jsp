<%@ page import="java.sql.*"%>
<%
	String regd=request.getParameter("regd");
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
		PreparedStatement ps=con.prepareStatement("delete from regdinfo where regdno=?");
		ps.setString(1,regd);
		int r=ps.executeUpdate();
		if(r>=1)
			out.println("1 Record Successfully Deleted.");
		else
			out.println("Record Not Found!!!");
		con.close();
	}
	catch(Exception e)
	{
			out.print(e);
	}
%>