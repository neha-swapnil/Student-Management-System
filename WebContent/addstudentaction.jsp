<%@ page import="java.sql.*"%>
<%
	String name=request.getParameter("name");
	String pass=request.getParameter("regd");
	String regd=request.getParameter("regd");
	String mail=request.getParameter("mail");
	String phno=request.getParameter("phno");
	String branch=request.getParameter("branch");
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
		PreparedStatement ps=con.prepareStatement("insert into regdinfo values(?,?,?,?,?,?)");
		ps.setString(1,name);
		ps.setString(2,pass);
		ps.setString(3,regd);
		ps.setString(4,mail);
		ps.setString(5,phno);
		ps.setString(6,branch);
		int r=ps.executeUpdate();
		if(r>=1)
		{
			out.println("1 Record Successfully Inserted.");
			response.setHeader("Refresh","2;url=swelcome.jsp");
		}
		else
		{
			out.println("Failed to Insert!! Try Again!!");
			response.setHeader("Refresh","2;url=swelcome.jsp");
		}	
		con.close();
	}
	catch(Exception e)
	{
			out.print(e);
	}
%>