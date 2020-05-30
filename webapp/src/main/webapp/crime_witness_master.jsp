<html>
<%@ page  import="java.sql.*"%>
<%@ page  import="java.io.*"%>
<%@ page  import="connection.*"%>
<%! String c1;%>
<%! int c2;%>
<head>
 <title>Police Station Master</title>
 <script>
function func_sub()
{

  witness_form.action="witness_insert.jsp";
  witness_form.method="post";
 witness_form.submit();
}
function func_search()
{
  witness_form.action="witness_search.jsp";
  witness_form.method="post";
  witness_form.submit();
}
function func_delete()
{
  witness_form.action="witness_delete.jsp";
  witness_form.method="post";
  witness_form.submit();
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
   <form name="witness_form">
   <tr align="center">
   <td colspan=4 width="360" height="70">
    <p align="center"><font color="#996633" size="4"></font><font size="5"><b>Crime
  Witness Master</b>&nbsp;&nbsp;&nbsp;</font></p>
  <p align="center">&nbsp;</p>
  <div align="center">
    <center>

      </div>
    </center>

      <tr>
        <td width="346" align="right">
          <p align="right"><b><font size="2" face="Verdana">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;
          Witness ID</font></b></p>
        </td>
        <td width="362"><font size="2" face="Verdana" color="#996633"><b>
		<select size="1" name="D1" style="WIDTH:144 PX" tabindex="1">
		 <%
         DataCon ds = new DataCon();
		Connection con=null;
		Statement st=null;
	 	ResultSet rs=null;
		String firid=null;
							  	 
 try{
	 
	con = ds.getConnection1(); 
	st=con.createStatement();
	rs=st.executeQuery("select max(WITNESS_ID) from CRIME_WITNESS_MASTER");
	System.out.println("rs:"+rs);
	int id=0;
	
	while(rs.next())
	 {     
		firid=rs.getString(1);
		System.out.println("inside while");
			 if(firid==null) 
			{	 
				 		System.out.println("inside if");

				 firid="CW101";
					 %><option value="<%=firid%>"><%=firid%></option>
		        	<%
			 }
	
		 else{
			 		System.out.println("inside else");
					   firid=rs.getString(1);
					   String str=firid.substring(2,5);
					   int x=Integer.parseInt(str);
					   x++;
                      
					   firid="CW"+x;; %>
				   <option value="<%=firid%>"><%=firid%></option>
				<%}
		 }
 
}catch(Exception e){}
rs.close();
 

%>
          </select></b></font></td>
      </tr>
      <tr>
        <td width="346" align="right"><b><font size="2" face="Verdana">&nbsp;FIR
          No</font></b></td>
        <td width="362"><font size="2" face="Verdana" color="#996633"><b><select size="1" name="D2" style="WIDTH:144 PX" tabindex="2">
         <%
       
	 	ResultSet rs1=null;
		String nid=null;
						  	 
 try{
	 
	 
	rs1=st.executeQuery("select * from VICTIMS_FIR_MASTER");
	System.out.println("rs:"+rs);
	int id=0;
	
	while(rs1.next())
	 {     
		nid=rs1.getString(1);
		System.out.println("inside while");
		%>
			 
				   <option value="<%=nid%>"><%=nid%></option>
					    
				<%}
	 
 
}catch(Exception e){}
rs1.close();
 

%>
          </select></b></font></td>
      </tr>
      <tr>
        <td width="346" align="right"><b><font size="2" face="Verdana">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          Witness
          Collected Date&nbsp;&nbsp;&nbsp;</font></b></td>
        <td width="362"><font size="2" face="Verdana" color="#996633"><b><input type="text" name="T1" size="20" tabindex="3"></b></font></td>
      </tr>
      <tr>
        <td width="346" align="right">
          <p align="right"><b><font size="2" face="Verdana">Witness
          Information</font></b></p>
        </td>
        <td width="362"><font size="2" face="Verdana" color="#996633"><b><input type="text" name="T2" size="20" tabindex="4"></b></font></td>
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
