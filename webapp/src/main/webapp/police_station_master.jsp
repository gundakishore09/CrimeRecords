<%@ page  import="java.sql.*"%>
<%@ page  import="java.io.*"%>
<%@ page  import="connection.*"%>
<%! String c1;%>
<%! String c2;%>
<html>
<head>
<script language="JavaScript" src="header.js">
</script>
<script>
function validateAll() 
{
  var name =  document.forms[0].name.value;
   var sdate =  document.forms[0].sdate.value;
  var hno = document.forms[0].hno.value;
   var street = document.forms[0].hno.value;
  var city = document.forms[0].city.value;
  var state = document.forms[0].state.value;
  var country = document.forms[0].country.value;
  var pin = document.forms[0].pin .value;
  var phone = document.forms[0].phone .value;
  var fax = document.forms[0].fax.value;
  var email = document.forms[0].email .value;
  if(isEmpty(name  )) 
 {
   alert("Please type  Police station name.");
   document.forms[0]. name .focus();
   return false;
 } 
  else if(isEmpty(sdate)) 
  {
    alert("Please type Starting date of police station.");
    document.forms[0]. sdate .focus();
    return false;
  } 
 else if(isEmpty(hno)) 
 {
   alert("Please type  flat no.");
   document.forms[0]. hno .focus();
   return false;
 } 
  else if(isEmpty(street)) 
 {
   alert("Please type  Street.");
   document.forms[0]. street .focus();
   return false;
 } 
 else if(isEmpty(city)) 
 {
   alert("Please type  city.");
   document.forms[0]. city .focus();
   return false;
 } 
else if(!isAlpha(city)) 
{
  alert("city name contains invalid characters. Please re-enter.");
  document.forms[0].city.focus();
  return false;
}
 else if(isEmpty(state)) 
 {
      alert("Please type  state.");
     document.forms[0]. state .focus();
      return false;
 } 
else if(!isAlpha(state)) 
{
  alert("state name contains invalid characters. Please re-enter.");
  document.forms[0].state.focus();
  return false;
}
 if(isEmpty(country )) 
 {
   alert("Please type country.");
   document.forms[0]. country .focus();
   return false;
 } 
else if(!isAlpha(country)) 
{
  alert("Country name contains invalid characters. Please re-enter.");
  document.forms[0].country.focus();
  return false;
}
else if(isEmpty(pin))
    {
	    alert("Please type  pin.");
	    document.forms[0].pin.focus();
	    return false;
    } 
 else  if(!isPosIntegercheck(pin))
	{
       alert("Enter valid 6 characters in Zip Code. Please re-enter.");
      document.forms[0].pin .focus();
       return false;
	}
   else if(isEmpty(phone))
    {
	    alert("Please type  phone.");
	    document.forms[0].phone.focus();
	    return false;
    } 
	 else if(isEmpty(fax))
    {
	    alert("Please type  fax no.");
	    document.forms[0].fax.focus();
	    return false;
    } 
	else if(isEmpty(email))
    {
	    alert("Please type  e-mail address.");
	    document.forms[0].email.focus();
	    return false;
    } 
	return true;
}
function func_sub()
{
	if(validateAll())
	{
   policestation_form.action="police_station_insert.jsp";
  policestation_form.method="post";
  policestation_form.submit();
}
}
function func_search()
{
  policestation_form.action="policestation_search.jsp";
  policestation_form.method="post";
  policestation_form.submit();
}
function func_delete()
{
  policestation_form.action="policestation_delete.jsp";
  policestation_form.method="post";
  policestation_form.submit();
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
   <form name="policestation _form">
   <tr align="center">
   <td colspan=4 width="381" height="70">
    <p align="center"><font color="#996633" size="5">&nbsp;</font><b> Police Station Master  </b></font></p>
   
 
  <p align="center">&nbsp;</p>
 </td>
 </tr>
  <tr>
     <td width="143" align="right" height="25"><b>
	 <font face="Verdana" size="2"> Police station ID </font></b></td>
    <td width="150" height="25">
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
	rs=st.executeQuery("select max(POLICE_STATION_ID) from POLICE_STATION_MASTER");
	System.out.println("rs:"+rs);
	int id=0;
	
	while(rs.next())
	 {     
		evid=rs.getString(1);
		System.out.println("inside while");
			 if(evid==null) 
			{	 
				 		System.out.println("inside if");

				 evid="PS101";
					 %><option value="<%=evid%>"><%=evid%></option>
		        	<%
			 }
	
		 else{
			 		System.out.println("inside else");
					   evid=rs.getString(1);
					   String str=evid.substring(2,5);
					   int x=Integer.parseInt(str);
					   x++;
                      evid="PS"+x;; %>
				   <option value="<%=evid%>"><%=evid%></option>
				<%}
		 }


%>
<%
}catch(Exception e){}
rs.close();


%>

  </select></td>
  <td width="60" align="right" height="25"><b><font   face="Verdana" size="2">City</font></b></td>
    <td width="148" height="25">
	<input type="text" name="city" size="20"></td>
  </tr>
  <tr>
    <td width="143" align="right" height="25"><b><font face="Verdana" size="2"> police
      station Name</font></b></td>
    <td width="150" height="25"><input type="text" name="name" size="20"></td>
    <td width="60" align="right" height="25"><b><font face="Verdana" size="2">State</font></b></td>
    <td width="148" height="25"><input type="text" name="state" size="20"></td>
  </tr>
  <tr>
     <td width="143" align="right" height="25"><b><font face="Verdana" size="2">Territory 
         ID</font></b></td>
     <td width="150" height="25">
	 <select size="1" name="D2" style="WIDTH:144 PX">
        <%
     	ResultSet rs1=null;

					  	 
 try{
		rs1=st.executeQuery("select * from TERRITORY_MASTER ");
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
    <td width="60" align="right" height="25"><b><font face="Verdana" size="2">Country</font></b></td>
    <td width="148" height="25"><input type="text" name="country" size="20"></td>
  </tr>
  <tr>
   <td width="143" align="right" height="26"><b><font face="Verdana" size="2">Starting
      Date</font></b></td>
    <td width="150" height="26">
	<input type="text" name="sdate" size="20"></td>
    <td width="60" align="right" height="26"><b><font face="Verdana" size="2">Pin</font></b></td>
    <td width="148" height="26">
	<input type="text" name="pin" size="20"></td>
  </tr>
  <tr>
    <td width="143" align="right" height="25"><b><font face="Verdana" size="2">Incharge
      ID</font></b></td>
    <td width="150" height="25">
	<select size="1" name="D3" style="WIDTH:144 PX">
      <%
     	ResultSet rs2=null;
		  	 
 try{
		rs2=st.executeQuery("select * from DEPARTMENT_EMPLOYEES_MASTER  ");
	while(rs2.next())
	 {
		        c2=rs2.getString(1);
		%>
		   <option value="<%=c2%>"><%=c2%></option>
				<%}
	%>
<%
}catch(Exception e){}
con.close();
%> 
	</select></td>
    <td width="60" align="right" height="25"><b><font face="Verdana" size="2">Phone&nbsp;</font></b></td>
    <td width="148" height="25">
	<input type="text" name="phone" size="20"></td>
  </tr>
  <tr>
    <td width="143" align="right" height="25"><b><font face="Verdana" size="2">Flat
         No</font></b></td>
    <td width="150" height="25">
	<input type="text" name="hno" size="20"></td>
    <td width="60" align="right" height="25"><b><font face="Verdana" size="2">Fax&nbsp;</font></b></td>
    <td width="148" height="25"><input type="text" name="fax" size="20"></td>
  </tr>
  <tr>
    <td width="143" align="right" height="25"><b><font face="Verdana" size="2">Street</font></b></td>
    <td width="150" height="25"><input type="text" name="street" size="20"></td>
    <td width="60" align="right" height="25"><b><font face="Verdana" size="2">Email
      ID</font></b></td>
    <td width="148" height="25"><input type="text" name="email" size="20"></td>
  </tr>
   </form>
  <tr>
    <td colspan=4 width="437" align="right">
      <p align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	  <input type=button value="Insert" name="submit" onClick="func_sub()" class=bu tabindex="4">&nbsp;<input type="submit" value="Search" name="submit" onClick="func_search()"  class=bu tabindex="5"><input type="submit" value="Delete" name="submit" onClick="func_delete()" class=bu tabindex="6"></td>
    <td width="1" align="right">
      <p align="left">
    </td>
  </tr>
  </table>
    </td>
    </tr>
 
  </table>
 </body>
