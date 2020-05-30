<html>
<%@ page  import="java.sql.*"%>
<%@ page  import="java.io.*"%>
<%@ page  import="connection.*"%>
<%! String c1;%>
<%! String c2;%>
<%! String c3;%>
<%! String c4;%>
<%! String c5;%>
<%! String c6;%>
<%! String c7;%>
<%! String c8;%>
<%! String c9;%>
<%! String c10;%>
<%! String c11;%>
<%! int c12;%>
<%! int c13;%>
<%! String c14;%>
<head>
 <title>New Page 1</title>
 <meta name="Microsoft Theme" content="none">
</head>

<body bgcolor=aliceblue>
 <table border="0" width="80%">
      <tr>
        <td width="100%"><img src="policecrime.jpg" width="770" height="60"><br>
        <%@ include file = "header.htm"%></td>
      </tr>
      <tr>
         <td>   
            <table border="0" width="100%" height="129">
              <tr>
                <td width="20%" height="125"><marquee direction="down" scrolldelay="100"><img src="p1.jpg" width="150" height="80"><BR><BR><BR><img src="p2.jpg" width="150" height="80"><BR><BR><BR><img src="p3.jpg" width="150" height="80"><BR><BR><BR><img src="p4.jpg" width="150" height="80"><BR><BR><BR><img src="p5.jpg" width="150" height="80"></marquee></td>
              <td width="80%" height="125">
              <table border="0" width="368" height="225">
      <tr align="center">
   <td colspan=4 width="360" height="70">
    <p align="center"><b><font face="Verdana" size="4">
Employee Report
   </font></b>
  <p align="center">
  <br>

     
     
	 
	   <%
         DataCon ds =  new DataCon();
		Connection con=null;
		Statement st=null;
	 	ResultSet rs=null;
		String b = request.getParameter("a");

					  	 
 try{
	con = ds.getConnection1(); 
	st=con.createStatement();
	rs=st.executeQuery("select * from DEPARTMENT_EMPLOYEES_MASTER  where EMPLOYEE_NO='"+b+"'");
	while(rs.next())
	 {
		c1=rs.getString(1);
        c2=rs.getString(2);
        c3=rs.getString(3);
        c4=rs.getString(4);
		 c5=rs.getString(5);
		 c6=rs.getString(6);
		 c7=rs.getString(7);
		 c8=rs.getString(8);
		 c9=rs.getString(9);
		 c10=rs.getString(10);
		 c11=rs.getString(11);
		 c12=rs.getInt(12);
		 c13=rs.getInt(13);
		  c14=rs.getString(14);

		}

}catch(Exception e){}
con.close();
%>
    <table width="436">
	<tr>
     <td width="302" align="right" height="25"><b><font size="3">Emp ID:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c1%>
	  </font>
        </b>
	  </td>
    </tr>
	<tr>
     <td width="302" align="right" height="25"><b> <font size="3"> Name:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c2%>
	  </font>
        </b>
	  </td>
    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3">Designation ID:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c3%>
	  </font>
        </b>
	  </td>
    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3">Department ID:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c4%>
	  </font>
        </b>
	  </td>
    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3">Date of Birth:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c5%>
	  </font>
        </b>
	  </td>
    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3">Date of Joining:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c6%>
	  </font>
        </b>
	  </td>
    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3">Flat No:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c7%>
	  </font>
        </b>
	  </td>
    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3">Street:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c8%>
	  </font>
        </b>
	  </td>
    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3">City:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c9%>
	  </font>
        </b>
	  </td>
    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3">State:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c10%>
	  </font>
        </b>
	  </td>
    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3">Country:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c11%>
	  </font>
        </b>
	  </td>
    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3">Pin:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c12%>
	  </font>
        </b>
	  </td>
    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3">Phone:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c13%>
	  </font>
        </b>
	  </td>
    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3">EmailID:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c14%>
	  </font>
	  </td>
    </tr>
   </table>
</table>
</body>
</html>
