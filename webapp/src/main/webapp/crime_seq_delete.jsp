 <html>
<%@ page  import="java.sql.*"%>
<%@ page  import="java.io.*"%>
<%@ page  import="connection.*"%>
<%! String c1;%>
<%! int c2;%>
<head>
 <title>New Page 1</title>
 <meta name="Microsoft Theme" content="none">
</head>

<body bgcolor=aliceblue>
<p align="right">
<img border="0" src="policecrime.jpg" width="834" height="60">
<%@ include file="header.htm"%>
  <form method="POST" action="crime_seq_deleteresults.jsp">
  <p align="center"><b>
  <font face="Verdana" size="4">
 Crime Sequence Master
   </font></b>
  <p align="center"><font color="#008000">
  <br>
  </font>
  <table border="0" width="100%">
    <tr>
      <td width="25%" align="right"><b>
             <font size="3">
	         Crime Sequence ID</font>
        </b></td>
      <td width="24%"><font color="#008000">
	  <select size="1" name="a">
	   <%
         DataCon ds =  new DataCon();
		Connection con=null;
		Statement st=null;
	 	ResultSet rs=null;

					  	 
 try{
	con = ds.getConnection1(); 
	st=con.createStatement();
rs=st.executeQuery("select SEQUENCE_ID from CIRME_SEQ_ESTIMATION_MASTER");
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
    </select></font></td>
    </tr>
   </table>
  <p align="center"><font color="#008000">
  <input type="submit" value="Delete" name="submit"></font></p>
</form>
</body>
</html>
