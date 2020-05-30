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
  <form method="POST" action="emp_searchresult.jsp">
  <p align="center"><b><font face="Verdana" size="4"> Employee Details
  </font></b>
  <p align="center">
  <br>
  <table border="0" width="100%">
  <tr>
     <td width="25%" align="right"><b>
             <font size="3">
	         Employee ID</font>
        </b></td>
      <td width="24%">
	  <select size="1" name="a">
	   <%
         DataCon ds =  new DataCon();
		Connection con=null;
		Statement st=null;
	 	ResultSet rs=null;

					  	 
 try{
	con = ds.getConnection1(); 
	st=con.createStatement();
	rs=st.executeQuery("select * from DEPARTMENT_EMPLOYEES_MASTER");
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
    </select></td>
    </tr>
   </table>
  <p align="center">
  <input type="submit" value="view" name="submit"></p>
</form>
</body>
</html>
