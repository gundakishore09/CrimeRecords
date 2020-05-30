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
<script language="JavaScript" >

function validateAll() 
{
  var sdate=  document.forms[0].T1.value;
  var edate = document.forms[0].T2.value;

   if(isEmpty(sdate)) 
	 {
		alert("Please type  starting date.");
		document.forms[0].T1.focus();
		return false;
	} 
   
 if(isEmpty(edate)) 
 {
   alert("Please type  Ending date");
   document.forms[0].T2.focus();
   return false;
 } 
 
	return true;
}

function func_sub()
{
 
  invg_form.action="invg_insert.jsp";
  invg_form.method="post";
  invg_form.submit();

}
function func_search()
{
  invg_form.action="invg_search.jsp";
  invg_form.method="post";
  invg_form.submit();
}

function func_delete()
{
  invg_form.action="invg_delete.jsp";
  invg_form.method="post";
  invg_form.submit();
}
</script>

<meta name="Microsoft Theme" content="none">

</head>

<body bgcolor=aliceblue leftmargin=0 topmargin=0>
   <table border="0" width="80%">
    <div align="center">
    <center>
      <tr>
        <td width="100%"><img src="" width="770" height="60"><br>
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
   <form name="Designation_form">
   <tr align="center">
   <td colspan=2 width="360" height="70">
    <p align="center"><font color="#996633" size="5">&nbsp;</font><font size="5"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Investigation Master</b></font></p>
  <p align="center">&nbsp;</p>
<table border="0" width="100%">
  <tr>
    <td width="25%" align="right"><b><font face="Verdana" size="2">Investigation
      ID&nbsp;</font></b></td>
    <td width="25%">
	<select size="1" name="D1" style="WIDTH:144 PX" tabindex="1">
	 <%
         DataCon ds = new DataCon();
		Connection con=null;
		Statement st=null;
	 	ResultSet rs=null;
		String invid=null;
							  	 
 try{
	 
	con = ds.getConnection1(); 
	st=con.createStatement();
	rs=st.executeQuery("select max(INVESTIGATION_ID) from investigation_master");
	System.out.println("rs:"+rs);
	int id=0;
	
	while(rs.next())
	 {     
		invid=rs.getString(1);
		System.out.println("invid:"+invid);
		System.out.println("inside while");
			 if(invid==null) 
			{	 
				 		System.out.println("inside if");

				 invid="INV101";
					 %><option value="<%=invid%>"><%=invid%></option>
		        	<%
			 }
	
		 else{
			 		System.out.println("inside else");
					   String invid1=rs.getString(1);
					   String str=invid1.substring(3,6);
					   int x=Integer.parseInt(str);
					   x++;
                      
					   invid1="INV"+x;;
					   %>
				   <option value="<%=invid1%>"><%=invid1%></option>
				<%}
		 }
 
}catch(Exception e){}
rs.close();
 

%>
      </select></td>
  </tr>
  <tr>
    <td width="25%" align="right"><b><font face="Verdana" size="2">Start
      Date</font></b></td>
    <td width="25%"><input type="text" name="T1" size="20" tabindex="2"></td>
  </tr>
  <tr>
    <td width="25%" align="right"><b><font face="Verdana" size="2">End
      Date</font></b></td>
    <td width="25%">
	<input type="text" name="T2" size="20" tabindex="3"></td>
  </tr>
  </form>
    </table>
  <p align="center">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  <input type=button  value="Insert" name="submit"  onClick = "func_sub()"   class=bu tabindex="5">
   
   	  <input type=button  value="Search" name="submit" onClick="func_search()"  tabindex="6">
      <input type=button  value="Delete" name="submit"  onClick="func_delete()" tabindex="7">
 </p>
<p>&nbsp;</p>

</body>

</html>
