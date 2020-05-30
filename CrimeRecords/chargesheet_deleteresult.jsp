 <html>
<%@ page  import="java.sql.*"%>
<%@ page  import="java.io.*"%>
<%@ page  import="connection.*"%>
<%! String c1;%>
<%! int c2;%>
<head>
 <title>New Page 1</title>
</head>
<body bgcolor=aliceblue>
  <form method="POST" action="chargesheet_delete.jsp">
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

	  
	   <%
	    String s = request.getParameter("a");
		System.out.println(s);
                                   DataCon ds =  new DataCon();
		Connection con=null;
		Statement st=null;
	 	ResultSet rs=null;
					  	 
 try{
	con = ds.getConnection1(); 
	st=con.createStatement();
	rs=st.executeQuery("delete  from CRIME_CHARGESHEET_MASTER where CHARGE_SHEET_NO='"+s+"'");
	

}catch(Exception e){}
con.close();
%>
<tr>
<td>  
<p align="center">
<font size="4">
Your  Record is Deleted</font>
  <p align="center"><font color="#008000">
  <input type="submit" value="ok" name="submit"></font></p>
</td>
    </tr>
   </table>
</table>
</form>

</body>
</html>
