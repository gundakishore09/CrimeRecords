 <%@  page import = "java.io.*"%>
 <%@ page import = "java.sql.*"%>
 <%@  page import = "connection.*"%>
 <%! int c1=0;%>
<%! int c2=0;%>
 <html> 
<head>
<script>
<head>
    <script language="JavaScript" src="header.js">
     </script>
     <script>
function validateAll() 
{
 var name = document.forms[0]. T1 .value;
  if(isEmpty(name  )) 
 {
   alert("Please type  evidence type name.");
   document.forms[0]. name .focus();
   return false;
 } 
else if(isAlpha(name)) 
{
  alert("evidence type name contains invalid characters. Please re-enter.");
  document.forms[0].name.focus();
  return false;
}
return true;
}
function func_sub()
{
   if(validateAll() )
 {
  eve_form.action="eve_type_insert.jsp";
  eve_form.method="post";
  eve_form.submit();
  }
}
function func_search()
{
  eve_form.action="evidence_type_search.jsp";
  eve_form.method="post";
  eve_form.submit();
}
function func_delete()
{
  eve_form.action="evidence_type_delete.jsp";
  eve_form.method="post";
  eve_form.submit();
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
   <form name="eve_form">
   <tr align="center">
   <td colspan=4 width="360" height="70">
    <p align="center"><font color="#996633" size="4"></font><font size="5"><b>Evidence Type Master</b></font></p>
  <p align="center">&nbsp;</p>

  <tr>
    <td width="350" align="right" height="25"><b>
	<font face="Verdana" size="2">
	Evidence ID</font></b></td>
    <td width="258" height="25">
	<select size="1" name="D1" style="WIDTH:144 PX">
<%
         DataCon ds = new DataCon();
		Connection con=null;
		Statement st=null;
	 	ResultSet rs=null;
		String evid=null;
							  	 
 try{
	 
	con = ds.getConnection1(); 
	st=con.createStatement();
	rs=st.executeQuery("select max(EVIDENCE_ID) from EVIDENCE_TYPE_MASTER");
	System.out.println("rs:"+rs);
	int id=0;
	
	while(rs.next())
	 {     
		evid=rs.getString(1);
		System.out.println("inside while");
			 if(evid==null) 
			{	 
				 		System.out.println("inside if");

				 evid="EV101";
					 %><option value="<%=evid%>"><%=evid%></option>
		        	<%
			 }
	
		 else{
			 		System.out.println("inside else");
					   evid=rs.getString(1);
					   String str=evid.substring(2,5);
					   int x=Integer.parseInt(str);
					   x++;
                      
					   evid="EV"+x;; %>
				   <option value="<%=evid%>"><%=evid%></option>
				<%}
		 }


%>
<%
}catch(Exception e){}
rs.close();
st.close();
con.close();

%>
      </select></td>
  </tr>
  <tr>
    <td width="350" align="right" height="25"><b><font face="Verdana" size="2">Evidence
      Name</font></b></td>
    <td width="258" height="25"><input type="text" name="T1" size="20" tabindex="2"></td>
  </tr>
  <tr>
    <td width="350" align="right" height="25"><b><font face="Verdana" size="2">Description</font></b></td>
    <td width="258" height="25"><input type="text" name="T2" size="20" tabindex="3"></td>
  </tr>
  <tr>
    <td width="350" align="right" height="21"></td>
    <td width="258" height="21"></td>
  </tr>
  <tr>
    <td width="350" align="right" height="1"></td>
    <td width="258" height="1"></td>
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
