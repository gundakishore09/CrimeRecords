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
<%! int c11;%>
<%! int c12;%>
<%! int c13;%>
<%! String c14;%>

<head>
 <title>New Page 1</title>
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

Police Station Report   </font></b>
  <p align="center"><font color="#008000">
  <br>
  </font>
   <%
         DataCon ds =  new DataCon();
		Connection con=null;
		Statement st=null;
	 	ResultSet rs=null;
	 	 String b = request.getParameter("a");
 try{
	con = ds.getConnection1(); 
	st=con.createStatement();
	rs=st.executeQuery("select * from POLICE_STATION_MASTER where POLICE_STATION_ID='"+b+"'");
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
	   c11=rs.getInt(11);
	   c12=rs.getInt(12);
       c13=rs.getInt(13);
       c14=rs.getString(14);

		 
		}

}catch(Exception e){}
con.close();
%>
    <table width="477">
	<tr>
     <td width="296" align="right" height="25"><font size="3" color="#996633"><b>Police
      Station ID: </b></font></td>
      <td width="167" align="left"><font face="Verdana" size="2" color="#996633"><b>
	  <%=c1%>
	  </font>
	  </td>
    </tr>
	<tr>
     <td width="296" align="right" height="25"><font size="3" color="#996633"><b> Name: </b></font></td>
      <td width="167" align="left"><font face="Verdana" size="2" color="#996633"><b>
	  <%=c2%>
	  </font>
	  </td>
    </tr>
       <tr>
     <td width="296" align="right" height="25"><font size="3" color="#996633"><b> Territory
      ID: </b></font></td>
      <td width="167" align="left"><font face="Verdana" size="2" color="#996633"><b>
	  <%=c3%>
	  </font>
	  </td>
    </tr>
	<tr>
     <td width="296" align="right" height="25"><font size="3" color="#996633"><b>Starting Date: </b></font></td>
      <td width="167" align="left"><font face="Verdana" size="2" color="#996633"><b>
	  <%=c4%>
	  </font>
	  </td>

    </tr>
	<tr>
     <td width="296" align="right" height="25"><font size="3" color="#996633"><b>Incharge ID: </b></font></td>
      <td width="167" align="left"><font face="Verdana" size="2" color="#996633"><b>
	  <%=c5%>
	  </font>
	  </td>
    </tr>
	<tr>
     <td width="296" align="right" height="25"><font size="3" color="#996633"><b>Flat No: </b></font></td>
      <td width="167" align="left"><font face="Verdana" size="2" color="#996633"><b>
	  <%=c6%>
	  </font>
	  </td>

    </tr>
	<tr>
     <td width="296" align="right" height="25"><font size="3" color="#996633"><b>Street: </b></font></td>
      <td width="167" align="left"><font face="Verdana" size="2" color="#996633"><b>
	  <%=c7%>
	  </font>
	  </td>
    </tr>
	<tr>
     <td width="296" align="right" height="25"><font size="3" color="#996633"><b>City: </b></font></td>
      <td width="167" align="left"><font face="Verdana" size="2" color="#996633"><b>
	  <%=c8%>
	  </font>
	  </td>

    </tr>
	<tr>
     <td width="296" align="right" height="25"><font size="3" color="#996633"><b>State: </b></font></td>
      <td width="167" align="left"><font face="Verdana" size="2" color="#996633"><b>
	  <%=c9%>
	  </font>
	  </td>

    </tr>
	<tr>
     <td width="296" align="right" height="25"><font size="3" color="#996633"><b>Country: </b></font></td>
      <td width="167" align="left"><font face="Verdana" size="2" color="#996633"><b>
	  <%=c10%>
	  </font>
	  </td>

    </tr>
	<tr>
     <td width="296" align="right" height="25"><font size="3" color="#996633"><b>Pin: </b></font></td>
      <td width="167" align="left"><font face="Verdana" size="2" color="#996633"><b>
	  <%=c11%>
	  </font>
	  </td>

    </tr>
	<tr>
     <td width="296" align="right" height="25"><font size="3" color="#996633"><b>Phone: </b></font></td>
      <td width="167" align="left"><font face="Verdana" size="2" color="#996633"><b>
	  <%=c12%>
	  </font>
	  </td>
    </tr>
<tr>
     <td width="296" align="right" height="25"><font size="3" color="#996633"><b>Fax No: </b></font></td>
      <td width="167" align="left"><font face="Verdana" size="2" color="#996633"><b>
	  <%=c13%>
	  </font>
	  </td>

    </tr>
	<tr>
     <td width="296" align="right" height="25"><font size="3" color="#996633"><b>Email ID: </b></font></td>
      <td width="167" align="left"><font face="Verdana" size="2" color="#996633"><b>
	  <%=c14%>
	  </font>
	  </td>
    </tr>
   </table>
  </table>
</form>
</body>
</html>
