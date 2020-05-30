<html>
<%@ page  import="java.sql.*"%>
<%@ page  import="java.io.*"%>
<%@ page  import="connection.*"%>
<%! String c1;%>
<%! String c2;%>
<%! String c3;%>
<%! String c4;%>
<head>
 <title>New Page 1</title>
</head>

<body bgcolor=aliceblue>
 <table border="0" width="80%">
      <tr>
        <td width="100%"><img src="policecrime.jpg" width="770" height="60"><br>
        <%@ include file = "header1.htm"%></td>
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
    <p align="center"><b><font face="Verdana" size="4">Crime Category
  Nature Report
   </font></b>
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
	rs=st.executeQuery("select * from CRIME_CATEGORY_NATURE_MASTER  where NATURE_ID ='"+b+"'");
	while(rs.next())
	 {
		c1=rs.getString(1);
        c2=rs.getString(2);
        c3=rs.getString(3);
		 c4=rs.getString(4);
		}

}catch(Exception e){}
con.close();
%>
    <table width="436">
	<tr>
     <td width="302" align="right" height="25"><b><font size="3">Crime Category Nature ID:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c1%>
	  </font>
        </b>
	  </td>
    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3">Crime Category  ID:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c2%>
	  </font>
        </b>
	  </td>
    </tr>
	<tr>
     <td width="302" align="right" height="25"><b><font size="3">Crime Category Name:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c3%>
	  </font>
        </b>
	  </td>
    </tr>
	<tr>
     <td width="302" align="right" height="25"><b> <font size="3"> Description:</font> </b></td>
      <td width="120" align="left"><b>
      <font face="Verdana" size="2">
	  <%=c4%>
	  </font>
	  </td>
    </tr>
   </table>
</table>
</body>
</html>
