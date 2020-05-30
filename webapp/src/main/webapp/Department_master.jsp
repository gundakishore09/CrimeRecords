    <%@ page  import="java.sql.*"%>
    <%@ page  import="java.io.*"%>
	<%@ page  import="connection.*"%>
    <%! String c1;%>
    <%! int c2;%>
    <html>
    <head>
    <script language="JavaScript" src="header.js">
     </script>
     <script>
     function validateAll() 
   {
       var name =  document.forms[0].name .value;
       if(isEmpty(name  )) 
     {
        alert("Please type Department name.");
        document.forms[0]. name .focus();
        return false;
      } 
else if(!isAlpha(name)) 
{
     alert("Department name contains invalid characters. Please re-enter.");
     document.forms[0].name.focus();
     return false;
}
   return true;
}
 function func_sub()
{
    if(validateAll())
	 {
           Department_form.action="Department_master_insert.jsp";
           Department_form.method="post";
           Department_form.submit();
}
}
function func_search()
{
     Department_form.action="Department_master_search.jsp";
     Department_form.method="post";
     Department_form.submit();
}
function func_delete()
{
     Department_form.action="Department_master_delete.jsp";
     Department_form.method="post";
     Department_form.submit();
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
   <form name="Department_form">
   <tr align="center">
   <td colspan=2 width="360" height="70">
    <p align="center"><font color="#996633" size="5">&nbsp;</font><font size="5"><b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Department  Master </b></font></p>
    <p align="center">&nbsp;</p>
   </td>
   </tr>
    <td width="267">
<p align="center">&nbsp;</p>

   <tr>
     <td width="267" align="right" height="19"><b><font face="Verdana" size="2">&nbsp; Department ID</font></b></td><td width="344" height="32">
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
	    rs=st.executeQuery("select max(Department_no ) from Department_master");
	    System.out.println("rs:"+rs);
	    int id=0;
	
	while(rs.next())
	  {     
		 evid=rs.getString(1);
		 System.out.println("inside while");
		 if(evid==null) 
			{	 
				 		System.out.println("inside if");

				 evid="DP101";
					 %> <option value="<%=evid%>"><%=evid%></option>
		        	<%
			 }
	
		 else{
			 		   System.out.println("inside else");
					   evid=rs.getString(1);
					   String str=evid.substring(2,5);
					   int x=Integer.parseInt(str);
					   x++;
                       evid="DP"+x;; %>
				   <option value="<%=evid%>"><%=evid%></option>
				<%}
		 }


%>
<%
}catch(Exception e){}
rs.close();
st.close();


%>
         </select></td>
       </tr>
       <tr>
       <td width="267" align="right" height="28"><b><font size="2" face="Verdana">Department Name</font></b></td>
         <td width="344" height="28">
		 <input type="text" name="name" size="20">
		 </td>
         </tr>
      <tr>
        <td width="267" align="right" height="33"><b><font size="2"  face="Verdana">Department
          Desc</font></b></td>
        <td width="344" height="33"><input type="text" name="desc" size="20"></td>
      </tr>
      <tr>
         <td width="267" align="right" height="32"><b><font size="2" face="Verdana">Highest  Designation ID</font></b></td>
        <td width="344" height="32">
		<select size="1" name="D2" style="WIDTH:144 PX">
         <%
        
		Statement st1=null;
	 	ResultSet rs1=null;

					  	 
 try{
	
	st1=con.createStatement();
	rs1=st1.executeQuery("select * from DESIGNATION_MASTER");
	while(rs1.next())
	 {
		c1=rs1.getString(1);
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
    </form>
  <tr>
    <td width="267" align="right">
      <p align="right">&nbsp; 
	  <input type=button value="Insert" name="submit" onClick="func_sub()" class=bu tabindex="4"> 
	  <input type="submit" value="Search" name="submit" onClick="func_search()"  class=bu tabindex="5"></td>
    <td width="344" align="right">
      <p align="left">
	  <input type="submit" value="Delete" name="submit" onClick="func_delete()" class=bu tabindex="6"></td>
  </tr>
  </table>
 
  </table>
 </body>
