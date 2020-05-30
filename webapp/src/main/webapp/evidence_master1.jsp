<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="connection.*"%>
<%! String c1;%>
<%! String c2;%>

<html>
<head>
<script>
function func_sub()
{
  
   evidence_form.action="evidence_insert.jsp";
   evidence_form.method="post";
   evidence_form.submit();

}
function func_search()
{
   evidence_form.action="evidence_search.jsp";
   evidence_form.method="post";
   evidence_form.submit();
}
function func_delete()
{
   evidence_form.action="evidence_delete.jsp";
   evidence_form.method="post";
   evidence_form.submit();
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
        <%@ include file = "header3.htm"%></td>
      </tr>
      <tr>
        <td width="100%">
          <div align="center">
            <table border="0" width="100%" height="129">
              <tr>
                <td width="20%" height="125"><marquee direction="down"><img src="p1.jpg" width="150" height="80"><BR><BR><BR><img src="p2.jpg" width="150" height="80"><BR><BR><BR><img src="p3.jpg" width="150" height="80"><BR><BR><BR><img src="p4.jpg" width="150" height="80"><BR><BR><BR><img src="p5.jpg" width="150" height="80"></marquee></td>
                <td width="80%" height="125">
                 <table border="0" width="368" height="225">
   <form name="evidence_form">
   <tr align="center">
   <td colspan=4 width="360" height="70">
    <p align="center"><font color="#996633" size="4"></font><font size="5">

Evidence
  Master</font></p>
  <p align="center">&nbsp;</p>
  </td>
  </tr>
  <tr>
    <td width="25%" align="right"></td>
    <td width="25%" align="right"><b>
	<font face="Verdana" size="2">Evidence ID</font></b></td>
     <td width="25%">
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
	rs=st.executeQuery("select max(EVIDENCE_ID) from EVIDENCE_MASTER");
	System.out.println("rs:"+rs);
	int id=0;
	while(rs.next())
	 {     
		evid=rs.getString(1);
        System.out.println(evid);
		System.out.println("inside while");
			 if(evid==null) 
			{	 
				 		System.out.println("inside if");

				 evid="EVD101";
					 %><option value="<%=evid%>"><%=evid%></option>
		        	<%
			 }
	
		 else{
			 		 System.out.println("inside else");
					 evid=rs.getString(1);
					 String str=evid.substring(3,6);
					 System.out.println(str);
					 int x=Integer.parseInt(str);
                     System.out.println(x);
					  x++;
					 System.out.println(x);
                     evid="EVD"+x;; %>
				   <option value="<%=evid%>"><%=evid%></option>
				<%}
		 }


%>
<%
}catch(Exception e){}
rs.close();


%>

     </select></td>
    <td width="25%"></td>
  </tr>
  <tr>
    <td width="25%" align="right"></td>
    <td width="25%" align="right"><b><font face="Verdana" size="2">Investigation
      ID&nbsp;</font></b></td>
    <td width="25%">
	<select size="1" name="D2" style="WIDTH:144 PX">
	  <%
     	ResultSet rs1=null;

					  	 
 try{
	
	rs1=st.executeQuery("select * from  INVESTIGATION_MASTER");
	while(rs1.next())
	 {
		c1=rs1.getString(1);
		%>
		       <option value="<%=c1%>"><%=c1%></option>
				<%}
	%>
<%
}catch(Exception e){}

%>
      </select></td>
    <td width="25%"></td>
  </tr>
  <tr>
    <td width="25%" align="right"></td>
    <td width="25%" align="right"><b><font face="Verdana" size="2">Evidence
       Type ID </font></b></td>
    <td width="25%"><select size="1" name="D3" style="WIDTH:144 PX">
	 <%
     	ResultSet rs2=null;
 	 
 try{
	
	rs2=st.executeQuery("select * from  EVIDENCE_TYPE_MASTER");
	while(rs2.next())
	 {
		c1=rs2.getString(1);
		%>
		       <option value="<%=c1%>"><%=c1%></option>
				<%}
	%>
<%
}catch(Exception e){}
con.close();
%>
     
      </select></td>
    <td width="25%"></td>
  </tr>
  <tr>
    <td width="25%" align="right"></td>
    <td width="25%" align="right"><b>Evidence Date</b></td>
    <td width="25%">
 <input type="text" name="edate" size="20" tabindex="4"></td>
 </tr>
   </form>
  <tr>
    <td colspan=4 width="370" align="center">

	  <input type=button value="Insert" name="submit" onClick="func_sub()" class=bu tabindex="4"> 
	
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



