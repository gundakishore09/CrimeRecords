<html>
<body bgcolor="#CCFFFF">
<%@  page language="java"  import="java.sql.*"  %>
<%@ page   import="java.io.*"  %>
<%! Statement st=null; %>
<%! Connection con=null; %>
<%@ page import="connection.*" %>
<%
	ResultSet rs=null;
    DataCon ds = new DataCon();
	
 	String a=request.getParameter("D1");
	String b=request.getParameter("D2");
	String c=request.getParameter("name");
	String d=request.getParameter("desc");
	System.out.println(c);
	
	
		try
		{
            con = ds.getConnection1();
			PreparedStatement stat=con.prepareStatement("INSERT INTO CRIME_CATEGORY_NATURE_MASTER values(?,?,?,?)");
			stat.setString(1,a);
			stat.setString(2,b);
			stat.setString(3,c);
			stat.setString(4,d);
			stat.executeUpdate(); 
           response.sendRedirect("crime_category_nature_master.jsp");
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