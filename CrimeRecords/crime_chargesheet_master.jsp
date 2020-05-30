   <%@  page import = "java.io.*"%>
  <%@ page import = "java.sql.*"%>
  <%@  page import = "connection.*"%>
  <%! int c1=0;%>
  <%! int c2=0;%>
  <html>
  <head>
  <script language="JavaScript" src="header.js">
  </script>
  <script>
 function validateAll() 
 {
      var cdate =  document.forms[0].cdate .value;
       var cdetails =  document.forms[0].cdetails .value;
	   var court =  document.forms[0].court .value;
	   var by =  document.forms[0].by .value;
      if(isEmpty(cdate)) 
   {
      alert("Please type Crime charge sheet date.");
      document.forms[0]. cdate .focus();
      return false;
 }  
else if(isEmpty(cdetails)) 
   {
       alert("Please type Crime charge sheet details.");
       document.forms[0]. cdetails .focus();
       return false;
 }  
  else if(isEmpty(court)) 
   {
      alert("Please type court name.");
      document.forms[0]. court .focus();
      return false;
 }  
  else if(isEmpty(by)) 
   {
      alert("Please type charge sheet field by.");
      document.forms[0]. by .focus();
      return false;
 }  
   return true;
}
function func_sub()
{
	if(validateAll())
	{
      chargesheet_form.action="chargesheet_insert.jsp";
      chargesheet_form.method="post";
      chargesheet_form.submit();
}
}
function func_search()
{
     chargesheet_form.action="chargesheet_search.jsp";
     chargesheet_formmethod="post";
     chargesheet_form.submit();
}
function func_delete()
{
     chargesheet_form.action="chargesheet_delete.jsp";
     chargesheet_form.method="post";
     chargesheet_form.submit();
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
   <form name="chargesheet_form">
   <tr align="center">
   <td colspan=4 width="360" height="70">
    <p align="center"><font color="#996633" size="4"></font><font size="5"><br>Crime Charge Sheet Master</br></font></p>
     </td>
 </tr>
  
   <tr>
     <td width="266" align="right"><b><font face="Verdana" size="2">Charge
      Sheet No</font></b></td>
     <td width="393">
	 <select size="1" name="D1" style="WIDTH:144 PX">
 <%
         DataCon ds = new DataCon();
    	Connection con=null;
		Statement st=null;
	 	ResultSet rs=null;
		String firid=null;
							  	 
 try{
	 
	con = ds.getConnection1(); 
	st=con.createStatement();
	rs=st.executeQuery("select max(CHARGE_SHEET_NO) from CRIME_CHARGESHEET_MASTER");
	System.out.println("rs:"+rs);
	int id=0;
	
	while(rs.next())
	 {     
		firid=rs.getString(1);
		System.out.println("inside while");
			 if(firid==null) 
			{	 
				 		System.out.println("inside if");
				 firid="CS101";
					 %><option value="<%=firid%>"><%=firid%></option>
		        	<%
			 }
	
		 else{
			 		System.out.println("inside else");
					   firid=rs.getString(1);
					   String str=firid.substring(2,5);
					   int x=Integer.parseInt(str);
					   x++;
                      
					   firid="CS"+x;; %>
				   <option value="<%=firid%>"><%=firid%></option>
				<%}
		 }
 
}catch(Exception e){}
rs.close();
 %>
 </select></td>
  </tr>
  
  <tr>
    <td width="266" align="right"><b><font face="Verdana" size="2">Charge
      Sheet Date</font></b></td>
    <td width="393"><input type="text" name="cdate" size="20" tabindex="2"></td>
  </tr>

  <tr>
    <td width="266" align="right"><b><font face="Verdana" size="2">Charge
      Sheet Details</font></b></td>
    <td width="393"><input type="text" name="cdetails" size="20" tabindex="3"></td>
  </tr>
  
  <tr>
    <td width="266" align="right"><b><font face="Verdana" size="2">FIR
      NO</font></b></td>
    <td width="393">
	<select size="1" name="D2" style="WIDTH:144 PX">
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
       
      </select></td>
  </tr>
  
  <tr>
    <td width="266" align="right"><b><font face="Verdana" size="2">Produced
      Court Name</font></b></td>
    <td width="393"><input type="text" name="court" size="20" tabindex="5"></td>
  </tr>
  
  <tr>
    <td width="266" align="right"><b><font face="Verdana" size="2">Charge
      Sheet Filed By</font></b></td>
    <td width="393"><input type="text" name="by" size="20" tabindex="6"></td>
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
