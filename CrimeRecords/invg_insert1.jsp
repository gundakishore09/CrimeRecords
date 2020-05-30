<html>
<body bgcolor="#CCFFFF">
<%@  page language="java"  import="java.sql.*"  %>
<%@ page   import="java.io.*"  %>
<%! Statement st=null; %>
<%! Connection con=null; %>
<%@ page import="connection.*" %>
<%
System.out.println("in invg insert.jsp");
	ResultSet rs=null;
    DataCon ds = new DataCon();
	
 	String a=request.getParameter("D1");
	String b=request.getParameter("T1");
	String c=request.getParameter("T2");
	 
	
	
		try
		{
 
           con = ds.getConnection1();
			PreparedStatement stat=con.prepareStatement("INSERT INTO investigation_master values(?,?,?)");
			stat.setString(1,a);
			stat.setString(2,b);
			stat.setString(3,c);
 
			stat.executeUpdate(); 
           response.sendRedirect("Investigation_master1.jsp");
		}
		catch(Exception E)
		{
			out.println("Error inserting value"+E);
		}	
		finally
		{
			con.close();
		}
		
		
%>
</body>
</html>