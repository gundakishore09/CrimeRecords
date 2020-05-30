import	java.io.*;
import	java.sql.*;
import	javax.servlet.*;
import	javax.servlet.http.*;
 
public class ArchDesig extends HttpServlet 
{

public void  service(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
{
	
	String cmd =req.getParameter("submit");
 
	if(cmd.equals("Insert"))
		{
				ResultSet rs=null;
				Connection conn=null;
				Statement st=null;
				int a=Integer.parseInt(req.getParameter("did"));
			    String b =req.getParameter("dname");
				String c =req.getParameter("desc");
		
				
				
	try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","arc","arc");
		 st=conn.createStatement();
		  PreparedStatement stat=conn.prepareStatement
		 ("INSERT INTO DESIG_MASTER values(?,?,? )");
			stat.setInt(1,a);
			stat.setString(2,b);
			stat.setString(3,c);
		 
			stat.executeUpdate(); 
                      res.sendRedirect("arch_desg_master.jsp");
		}
		catch(Exception E){}
	finally
		{  try{
			rs.close();
			st.close();
			conn.close();
		}catch(Exception e1){}
		}
	}
	else if(cmd.equals("Search"))
		{
				res.sendRedirect("search_arc_desg.jsp");
		} 
	else if(cmd.equals("Delete"))
	{
		res.sendRedirect("delete_arc_desg.jsp");
	}
	else if(cmd.equals("Update"))
	{
		res.sendRedirect("update_arch_desg.jsp");
	}
 }
}