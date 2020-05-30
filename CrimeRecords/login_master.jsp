 <%@ page  import="java.sql.*"%>
<%@ page  import="java.io.*"%>
<%@ page  import="connection.*"%>
<%! String c1;%>
<%! String c2;%>
<html>
<head>
<script>
function func_sub()
{
	
  loginmaster_form.action="loginmaster_insert.jsp";
  loginmaster_form.method="post";
  loginmaster_form.submit();
}
function func_search()
{
  loginmaster_form.action="loginmaster_search.jsp";
  loginmaster_form.method="post";
  loginmaster_form.submit();
}
function func_delete()
{
  loginmaster_form.action="loginmaster_delete.jsp";
  loginmaster_form.method="post";
  loginmaster_form.submit();
}

</script>
<meta name="Microsoft Theme" content="none">
</head>
<body bgcolor=aliceblue leftmargin=0 topmargin=0>
   <table border="0" width="80%">
    <div align="center">
    <center>
      <tr>
        <td width="100%"><img src="policecrime.jpg" width="770" height="60"><br>
        <%@ include file = "header.htm"%></td>
      </tr>

	  <tr>
        <td width="100%">
          <div align="center">
            <table border="0" width="100%" height="129">
              <tr>
                <td width="20%" height="125"><marquee direction="down"><img src="p1.jpg" width="150" height="80"><BR><BR><BR><img src="p2.jpg" width="150" height="80"><BR><BR><BR><img src="p3.jpg" width="150" height="80"><BR><BR><BR><img src="p4.jpg" width="150" height="80"><BR><BR><BR><img src="p5.jpg" width="150" height="80"></marquee></td>
                <td width="80%" height="125">
                 <table border="0" width="368" height="225">
   <form name="loginmaster_form">
   <tr align="center">
   <td colspan=4 width="360" height="70">
    <p align="center"><font color="#996633" size="4"></font><font size="5"><b>Login
  Master</b></font></p>
 
  <p align="center">&nbsp;</p>
   </td>
   </tr>
   

  <tr>
    <td width="25%" align="right"><b><font face="Verdana" size="2">Login
      User Name</font></b></td>
    <td width="25%">
    <input type="text" name="T1" size="20" tabindex="1"></td>
  </tr>
  <tr>
    <td width="25%" align="right"><b><font face="Verdana" size="2">Profile
      ID</font></b></td>
    <td width="25%">
	<select size="1" name="D1" style="WIDTH:144 PX" tabindex="2">
    <option>PF1</option>
	<option>PF2</option>
	<option>PF3</option>
     </select></td>
  </tr>
  <tr>
    <td width="25%" align="right"><b><font face="Verdana" size="2">Employee
      NO</font></b></td>
    <td width="25%">
	<select size="1" name="D2" style="WIDTH:144 PX" tabindex="3">
      <%
         DataCon ds =  new DataCon();
		Connection con=null;
		Statement st=null;
	 	ResultSet rs=null;

					  	 
 try{
	con = ds.getConnection1(); 
	st=con.createStatement();
	rs=st.executeQuery("select * from  DEPARTMENT_EMPLOYEES_MASTER ");
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
  <tr>
    <td width="25%" align="right"><b><font face="Verdana" size="2">Old
      Password</font></b></td>
    <td width="25%"><input type="text" name="T2" size="20" tabindex="4"></td>
  </tr>
  <tr>
    <td width="25%" align="right"><b><font face="Verdana" size="2">Current
      Password</font></b></td>
    <td width="25%"><input type="text" name="T3" size="20" tabindex="5"></td>
  </tr>
  <tr>
    <td width="25%" align="right"><b><font face="Verdana" size="2">Change
      Date </font></b></td>
    <td width="25%"><input type="text" name="T4" size="20" tabindex="6"></td>
  </tr>
   </form>
  <tr>
    <td colspan=4 width="370" align="right">
      <p align="center"> 
	  <input type=button value="Insert" name="submit" onClick="func_sub()" class=bu tabindex="4"> 
	  <input type="submit" value="Search" name="submit" onClick="func_search()"  class=bu tabindex="5"><input type="submit" value="Delete" name="submit" onClick="func_delete()" class=bu tabindex="6"></td>
  
  
    </td>
  </tr>
  </table>
    </td>
    </tr>
    </center>
  </div>
 
  </table>
 </body>
</html>
