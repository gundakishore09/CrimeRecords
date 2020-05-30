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
	String c=request.getParameter("T1");
	String d=null;

 		try
		{
 
           con = ds.getConnection1();
		   st=con.createStatement();
            rs=st.executeQuery("select max(SEQUENCE_ORDER_NO) from CIRME_SEQ_ESTIMATION_MASTER where FIR_NO='"+b+"'");
			while(rs.next())
			{
				 d=rs.getString(1);
				 System.out.println("from database d:"+d);
				 if(d==null)
				{
					 System.out.println("inside if");
					 d=b+"-SEQ101";
					 System.out.println("d:"+d);
				}
				else
				{
 				 System.out.println("inside else");
					String str=d.substring(10,13);
					System.out.println("str:"+str);
					int id=Integer.parseInt(str);
					id++;
					d=b+"-SEQ"+id;
				 System.out.println("d:"+d);
				}
			}
			PreparedStatement stat=con.prepareStatement("INSERT INTO CIRME_SEQ_ESTIMATION_MASTER values(?,?,?,?)");
			stat.setString(1,a);
			stat.setString(2,b);
			stat.setString(3,d);
			stat.setString(4,c);
			stat.executeUpdate(); 
           response.sendRedirect("crime_seq_est_master.jsp");
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