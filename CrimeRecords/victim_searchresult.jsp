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
<%! int c8;%>
<%! int c9;%>
<%! String c10;%>
<%! String c11;%>
<%! String c12;%>
<%! String c13;%>


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
    <p align="center"><b><font face="Verdana" size="4"><b>Victim
   </font></b>
  <p align="center"><font color="#000000">
  <br>

     
     
	 
	   <%
         DataCon ds =  new DataCon();
		Connection con=null;
		Statement st=null;
	 	ResultSet rs=null;

					  	 
 try{
	con = ds.getConnection1(); 
	st=con.createStatement();
	rs=st.executeQuery("select * from VICTIMES_MASTER");
	while(rs.next())
	 {
	   c1=rs.getString(1);
       c2=rs.getString(2);
       c3=rs.getString(3);
       c4=rs.getString(4);
	   c5=rs.getString(5);
	   c6=rs.getString(6);
	   c7=rs.getString(7);
	   c8=rs.getInt(8);
	   c9=rs.getInt(9);
	   c10=rs.getString(10);
	   c11=rs.getString(11);
	   c12=rs.getString(12);
       c13=rs.getString(13);
		 
		}

}catch(Exception e){}
con.close();
%>
  </font>
    <table width="436">
	<tr>
     <td width="302" align="right" height="25"><b><font size="3" color="#000000">Victim ID:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c1%>
	  </font>
        </b>
	  </td>
    </tr>
	<tr>
     <td width="302" align="right" height="25"><b> <font size="3" color="#000000"> Name:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c2%>
	  </font>
        </b>
	  </td>
    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3" color="#000000">Flat No:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c3%>
	  </font>
        </b>
	  </td>

    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3" color="#000000">Street:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c4%>
	  </font>
        </b>
	  </td>
    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3" color="#000000">City:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c5%>
	  </font>
        </b>
	  </td>

    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3" color="#000000">Satate:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c6%>
	  </font>
        </b>
	  </td>
    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3" color="#000000">Country:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c7%>
	  </font>
        </b>
	  </td>

    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3" color="#000000">Pin:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c8%>
	  </font>
        </b>
	  </td>

    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3" color="#000000">Phone:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c9%>
	  </font>
        </b>
	  </td>

    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3" color="#000000">Date of Birth:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c10%>
	  </font>
        </b>
	  </td>

    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3" color="#000000">Email ID:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c11%>
	  </font>
        </b>
	  </td>
    </tr>
<tr>
     <td width="302" align="right" height="25"><b><font size="3" color="#000000">Other Details:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c12%>
	  </font>
        </b>
	  </td>

    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3" color="#000000">Registration Date:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c13%>
	  </font>
	  </td>
    </tr>
   </table>
  </table>
</form>
</body>
</html>
