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
	String b=request.getParameter("name");
	String c=request.getParameter("D2");
	String d=request.getParameter("D3");
	String e=request.getParameter("dob");
	String f=request.getParameter("doj");
	String g=request.getParameter("hno");
	String h=request.getParameter("street");
	String i=request.getParameter("city");
	String j=request.getParameter("state");
	String k=request.getParameter("country");
	int l=Integer.parseInt(request.getParameter("pin"));
	int m=Integer.parseInt(request.getParameter("phone"));
	String n=request.getParameter("email");
	
	
		try
		{
            con = ds.getConnection1();
			PreparedStatement stat=con.prepareStatement("INSERT INTO DEPARTMENT_EMPLOYEES_MASTER values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			stat.setString(1,a);
			stat.setString(2,b);
			stat.setString(3,c);
             stat.setString(4,d);
			 stat.setString(5,e);
			 stat.setString(6,f);
			 stat.setString(7,g);
			 stat.setString(8,h);
			 stat.setString(9,i);
			 stat.setString(10,j);
			 stat.setString(11,k);
			stat.setInt(12,l);
			stat.setInt(13,m);
			stat.setString(14,n);
			
			 

			stat.executeUpdate(); 
           response.sendRedirect("Department_emp_master.jsp");
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