 <html>
<%@ page  import="java.sql.*"%>
<%@ page  import="java.io.*"%>
<%@ page  import="connection.*"%>
<%! String c1;%>
<%! int c2;%>
<head>
 <title>New Page 1</title>
</head>

<body bgcolor=aliceblue leftmargin=0 topmargin=0>
  <form method="POST" action="loginmaster_deleteresult.jsp">
</select>
</td>
</tr>
<tr align="center">
<td colspan=4>
  <input type="submit" value="Delete" name="submit">
</td>
</tr>
<table>
</td>
</tr>
</table>
  </form>
 </body>
</html>

Login Master
   </font></b>
  <p align="center"><font color="#000000">
  <br>
  </font>
  <table border="0" width="100%">
    <tr>
      <td width="25%" align="right"><b>
             <font size="3" color="#000000">
	         User Name</font>
        </b></td>
      <td width="24%"><font color="#000000">
	  <select size="1" name="a">
	   <%
         DataCon ds =  new DataCon();
		Connection con=null;
		Statement st=null;
	 	ResultSet rs=null;

					  	 
 try{
	con = ds.getConnection1(); 
	st=con.createStatement();
	rs=st.executeQuery("select LOGIN_USER_NAME from login_master");
	while(rs.next())
	 {
		c1=rs.getString(1);
		%>
		       <option value="<%=c1%>"><%=c1%></option>
				<%}
	%>
<%
}catch(Exception e){}
con.close();
%>
    </select>
</td>
</tr>
<tr align="center">
<td colspan=4>
  <input type="submit" value="Delete" name="submit">
</td>
</tr>
<table>
</td>
</tr>
</table>
  </form>
 </body>
</html>

