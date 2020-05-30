<html>
<%@ page  import="java.sql.*"%>
<%@ page  import="java.io.*"%>
<%@ page  import="connection.*"%>
<%! String c1;%>
<%! int c2;%>
<head>
 <title>Police Station Master</title>
  <script language="JavaScript" src="header.js">
</script>
<script>
function validateAll() 
{
  var rdate=  document.forms[0].T1.value;
  var addr = document.forms[0].T2.value;
  var ldetails = document.forms[0].T3.value;
  var cdate = document.forms[0].T4.value;
   if(isEmpty(rdate)) 
 {
   alert("Please type  Registration date.");
   document.forms[0].T1.focus();
   return false;
 } 
 
 if(isEmpty(addr)) 
 {
   alert("Please type  address");
   document.forms[0]. T2 .focus();
   return false;
 } 
 if(isEmpty(ldetails)) 
 {
   alert("Please type  Location details.");
   document.forms[0].T3.focus();
   return false;
 } 
 
 if(isEmpty(cdate)) 
 {
   alert("Please type  Crime date");
   document.forms[0].T4.focus();
   return false;
 } 
 
	return true;
}
function func_sub()
{
	if(validateAll())
	{
 fir_form.action="victim_fir_insert.jsp";
  fir_form.method="post";
  fir_form.submit();
}
}
function func_search()
{
  fir_form.action="victim_fir_search.jsp";
  fir_form.method="post";
  fir_form.submit();
}
function func_delete()
{
  fir_form.action="victim_fir_delete.jsp";
  fir_form.method="post";
  fir_form.submit();
}

</script>

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
				 <form name="fir_form">
   <tr align="center">
   <td colspan=4 width="381" height="70">
    <p align="center"><font color="#996633" size="5">&nbsp;</font><font size="5"><b>Victims
  FIR Master</b></font></p>
  <p align="center">&nbsp;</p>
  <div align="center">
    <center>
      <tr>
        <td width="38%" align="right"><font size="2" face="Verdana" color="#000000"><b>Victim
          FIR ID</b></font></td>
        <td width="28%"><font size="2" face="Verdana" color="#000000"><b><select size="1" name="D1" style="WIDTH:144 PX" tabindex="1">
		 <%
         DataCon ds = new DataCon();
		Connection con=null;
		Statement st=null;
	 	ResultSet rs=null;
		String firid=null;
							  	 
 try{
	 
	con = ds.getConnection1(); 
	st=con.createStatement();
	rs=st.executeQuery("select max(FIR_NO) from VICTIMS_FIR_MASTER");
	System.out.println("rs:"+rs);
	int id=0;
	
	while(rs.next())
	 {     
		firid=rs.getString(1);
		System.out.println("inside while");
			 if(firid==null) 
			{	 
				 		System.out.println("inside if");

				 firid="FIR101";
					 %><option value="<%=firid%>"><%=firid%></option>
		        	<%
			 }
	
		 else{
			 		System.out.println("inside else");
					   firid=rs.getString(1);
					   String str=firid.substring(3,6);
					   int x=Integer.parseInt(str);
					   x++;
                      
					   firid="FIR"+x;; %>
				   <option value="<%=firid%>"><%=firid%></option>
				<%}
		 }
 
}catch(Exception e){}
rs.close();
 

%>
          </select></b></font></td>
        <td width="38%" align="right"><font size="2" face="Verdana" color="#000000"><b>Registration
          Date </b></font></td>
        <td width="25%"><input type="text" name="T1" size="20" tabindex="5"></td>
      </tr>
      <tr>
        <td width="38%" align="right"><font size="2" face="Verdana" color="#000000"><b>Crime
          Nature ID</b></font></td>
        <td width="28%"><font size="1" face="Verdana" color="#000000"><b><select size="1" name="D2" style="WIDTH:144 PX" tabindex="2">
         <%
       
	 	ResultSet rs1=null;
		String nid=null;
							  	 
 try{
	 
	 
	rs1=st.executeQuery("select NATURE_ID from CRIME_CATEGORY_NATURE_MASTER");
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
        <td width="38%" align="right"><font size="2" face="Verdana" color="#000000"><b>Victim
          ID</b></font></td>
        <td width="25%"><font size="2" face="Verdana" color="#000000"><b><select size="1" name="D3" style="WIDTH:144 PX" tabindex="6">
         <%
       
	 	ResultSet rs2=null;
		String vid=null;
							  	 
 try{
	 
	 
	rs2=st.executeQuery("select VICTIM_ID from VICTIMES_MASTER");
	System.out.println("rs:"+rs);
	int id=0;
	
	while(rs2.next())
	 {     
		vid=rs2.getString(1);
		System.out.println("inside while");
		%>
			 
				   <option value="<%=vid%>"><%=vid%></option>
				<%}
		 
 
}catch(Exception e){}
rs2.close();
 

%>
          </select></b></font></td>
      </tr>
      <tr>
        <td width="38%" align="right"><font size="2" face="Verdana" color="#000000"><b>Address</b></font></td>
        <td width="28%"><font size="1" face="Verdana" color="#000000"><b><input type="text" name="T2" size="20" tabindex="3"></b></font></td>
        <td width="38%" align="right"><font size="2" face="Verdana" color="#000000"><b>Investigation
          Officer ID</b></font></td>
        <td width="25%"><font size="2" face="Verdana" color="#000000"><b><select size="1" name="D4" style="WIDTH:144 PX" tabindex="7">
  <%
       
	 	ResultSet rs3=null;
		String iid=null;
							  	 
 try{
	 
	 
	rs3=st.executeQuery("select INVESTIGATION_ID from INVESTIGATION_MASTER");
	System.out.println("rs:"+rs);
	int id=0;
	
	while(rs3.next())
	 {     
		iid=rs3.getString(1);
		System.out.println("inside while");
			 %>
				   <option value="<%=iid%>"><%=iid%></option>
				<%}
		 
 
}catch(Exception e){}
rs3.close();
 

%>
          </select></b></font></td>
      </tr>
      <tr>
        <td width="38%" align="right"><font size="2" face="Verdana" color="#000000 "><b>Location
          Details</b></font></td>
        <td width="28%"><font size="2" face="Verdana" color="#000000"><b><input type="text" name="T3" size="20" tabindex="4"></b></font></td>
        <td width="38%" align="right"><font size="2" face="Verdana" color="#000000"><b>Crime
          Date</b></font></td>
        <td width="25%"><input type="text" name="T4" size="20" tabindex="8"></td>
      </tr>
      </form>
  <tr>
    <td width="30%" align="right">
      <p align="right">&nbsp; 
      <p align="right"> 
      &nbsp; 
    </td>
    <td colspan=4 width="370" align="right">
      <p align="left">
      &nbsp; 
      <p align="left">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type=button value="Insert" name="submit" onClick="func_sub()" class=bu tabindex="4">
      <input type="submit" value="Search" name="submit" onClick="func_search()"  class=bu tabindex="5">&nbsp;
      <input type="submit" value="Delete" name="submit" onClick="func_delete()" class=bu tabindex="6"></td>
  </tr>
  </table>
    </td>
    </tr>