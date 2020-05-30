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
	String c=request.getParameter("T2");
	String d=request.getParameter("T3");
	String e=request.getParameter("T1");
	String f=request.getParameter("D3");
	String g=request.getParameter("D4");
	 
	String h=request.getParameter("T4");
 
		
		try
		{
 
           con = ds.getConnection1();
			PreparedStatement stat=con.prepareStatement("INSERT INTO VICTIMS_FIR_MASTER values(?,?,?,?,?,?,?,?)");
			stat.setString(1,a);
			stat.setString(2,b);
			stat.setString(3,c);
            stat.setString(4,d);
			stat.setString(5,e);
			stat.setString(6,f);
			stat.setString(7,g);
			stat.setString(8,h);
			 
			stat.executeUpdate(); 
           response.sendRedirect("victims_fir_master.jsp");
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