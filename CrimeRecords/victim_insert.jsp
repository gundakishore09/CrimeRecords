<html>
<body bgcolor="#CCFFFF">
<%@  page language="java"  import="java.sql.*"  %>
<%@ page  import="java.io.*" %>
<%! Statement st=null;%>
<%! Connection con=null;%>
<%@ page import="connection.*" %>
<%
	ResultSet rs=null;
    DataCon ds = new DataCon();
	
 	String a=request.getParameter("D1");
	String b=request.getParameter("name");
	String c=request.getParameter("hno");
	String d=request.getParameter("street");
	String e=request.getParameter("city");
	String f=request.getParameter("state");
	String g=request.getParameter("country");
	 int  h=Integer.parseInt(request.getParameter("pin"));
	int  i=Integer.parseInt(request.getParameter("phone"));
	String j=request.getParameter("date");
   String k=request.getParameter("email");
   String l=request.getParameter("other");
   String m=request.getParameter("rdate");
		
		try
		{
 
           con = ds.getConnection1();
			PreparedStatement stat=con.prepareStatement("INSERT INTO VICTIMES_MASTER values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			stat.setString(1,a);
			stat.setString(2,b);
			stat.setString(3,c);
            stat.setString(4,d);
			stat.setString(5,e);
			stat.setString(6,f);
			stat.setString(7,g);
			stat.setInt(8,h);
			stat.setInt(9,i);
			stat.setString(10,j);
			stat.setString(11,k);
			stat.setString(12,l);
			stat.setString(13,m);

			stat.executeUpdate(); 
           response.sendRedirect("victim_master.jsp");
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