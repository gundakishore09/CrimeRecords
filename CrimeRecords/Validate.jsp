<%@ page import="java.sql.*"  %>
<%@ page import="connection.*" %>
<%
   DataCon ds=new DataCon();
   Connection con=null;
   Statement st=null;
   ResultSet rs=null;
   String uname=request.getParameter("UserName");
   String pass=request.getParameter("Password");
   System.out.println(uname);
   System.out.println(pass);

   if(uname.equals("admin")&&(pass.equals("admin")))
   {
		 response.sendRedirect("adminzone.jsp");
   }

   if(uname.equals("writer")&&(pass.equals("writer")))
   {
		 response.sendRedirect("writerzone.jsp");
   }

   if(uname.equals("investigator")&&(pass.equals("investigator")))
   {
		 response.sendRedirect("invgzone.jsp");
   }

   
	 /*try{
		   con=ds.getConnection1();
		   st=con.createStatement();
		 
		   rs=st.executeQuery("select * from login_master where LOGIN_USER_NAME='"+uname+"'");
		   System.out.println("rs"+rs);
		    while(rs.next())
		 {
				System.out.println("inside while");
				String user1=rs.getString(1);
				String password=rs.getString(5);
				System.out.println(user1);
				System.out.println(password);
				if(uname.equals(user1)&&pass.equals(password))
			 {
					
						 System.out.println("inside if");
					     System.out.println(password);
						 String profile=rs.getString(2);
						 if(pass.equals(password))
						 {
							   System.out.println("inside pass equal");
							  if(profile.equals("PF1"))
							      response.sendRedirect("adminzone.jsp");
							  else if(profile.equals("PF2"))
								    response.sendRedirect("invgzone.jsp");
							  else if(profile.equals("PF3"))
								    response.sendRedirect("writerzone.jsp");
						  }
						  else
						            response.sendRedirect("Login.jsp");

					 
			 }//if
			 else
				 response.sendRedirect("Login.jsp?msg='Incorrect Username or Password - Re-Check '");
		 }//while
		
		 
		    
     }catch(Exception e){}

	 con.close();*/
	 %>
