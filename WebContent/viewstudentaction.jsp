<%@ page import="java.sql.*"%>
<%
	String regd=request.getParameter("regd");
	try
	{
		int cnt=0;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
		PreparedStatement ps=con.prepareStatement("select name,regdno,mail,phno,branch from regdinfo where regdno=?");
		ps.setString(1,regd);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			out.println("Name:"+rs.getString(1)+"\n");
			out.println("Regd.No.:"+rs.getString(2)+"\n");
			out.println("Email:"+rs.getString(3)+"\n");
			out.println("Phno:"+rs.getString(4)+"\n");
			out.println("Branch:"+rs.getString(5)+"\n");
			cnt++;
		}
		if(cnt>0)
		{
			
		}
		else
			out.println("<h1>No Record Found!!!</h1>");
		con.close();
	}
	catch(Exception e)
	{
			out.print(e);
	}
%>