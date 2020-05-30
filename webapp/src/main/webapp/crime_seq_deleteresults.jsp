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
  <form method="POST" action="crime_seq_delete.jsp">
  <p align="center"><b>
  <font face="Verdana" size="4" color="#996633">
 
   </font></b>
  <p align="center"><font color="#008000">
  <br>
  </font>
  <table border="0" width="100%">
    <tr>
      
      <td width="24%"><font color="#008000">
	  
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
	rs=st.executeQuery("delete  from CIRME_SEQ_ESTIMATION_MASTER where SEQUENCE_ID='"+s+"'");
	

}catch(Exception e){}
con.close();
%>
  
    </tr>
   </table>
<p align="center">
<font size="4">
Your  Record is Deleted</font>
  <p align="center"><font color="#008000">
  <input type="submit" value="ok" name="submit"></font></p>
</form>
</body>
</html>
