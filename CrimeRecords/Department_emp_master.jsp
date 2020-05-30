 <%@  page import = "java.io.*"%>
  <%@ page import = "java.sql.*"%>
  <%@  page import = "connection.*"%>
  <%! String c1=null;%>
  <%! String c2=null;%><html>
<head>
<script language="JavaScript" src="header.js">
</script>
<script>
function validateAll() 
{
  var name =  document.forms[0].name .value;
  var hno = document.forms[0].hno.value;
  var city = document.forms[0].city.value;
  var state = document.forms[0].state.value;
  var country = document.forms[0].country.value;
  var pin = document.forms[0].pin.value;
  var phone = document.forms[0].phone.value;
  var email = document.forms[0].email.value;
  if(isEmpty(name  )) 
 {
   alert("Please type  employee name.");
   document.forms[0]. name .focus();
   return false;
 } 
else if(!isAlpha(name)) 
{
  alert("employee name contains invalid characters. Please re-enter.");
  document.forms[0].name.focus();
  return false;
}
 if(isEmpty(hno)) 
 {
   alert("Please type  flat no.");
   document.forms[0]. hno .focus();
   return false;
 } 
 if(isEmpty(city )) 
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
 if(isEmpty(state )) 
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
 emp_form.action="emp_insert.jsp";
 emp_form.method="post";
 emp_form.submit();
	}
}
function func_search()
{
  emp_form.action="emp_search.jsp";
  emp_form.method="post";
  emp_form.submit();
}

function func_delete()
{
  emp_form.action="emp_delete.jsp";
  emp_form.method="post";
  emp_form.submit();
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
                 <table border="0" width="368" height="225">   <form name="emp_form">
   <tr align="center">
   <td colspan=4 width="381" height="70">
    <p align="center"><font color="#996633" size="5">&nbsp;</font><font size="5"<b>Department Employee Master
  </font></p>
  <p align="center">&nbsp;</p>
  <div align="center">
    <center>
  </div>
    </center>
    </td>
    </tr>
     <tr>
        <td width="114" align="right">
		<b>
		<font size="2" face="Verdana">
        Employee ID</font> </b></td>
        <td width="20%">
		<b>
		<font size="2" face="Verdana">
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
	 rs=st.executeQuery("select max(EMPLOYEE_NO) from DEPARTMENT_EMPLOYEES_MASTER");
	 System.out.println("rs:"+rs);
	 int id=0;
	
	while(rs.next())
	  {     
		evid=rs.getString(1);
		System.out.println("inside while");
			 if(evid==null) 
			{	 
				 		System.out.println("inside if");

				 evid="EMP101";
					 %><option value="<%=evid%>"><%=evid%></option>
		        	<%
			 }
	
		 else{
			 		System.out.println("inside else");
					   evid=rs.getString(1);
					   String str=evid.substring(3,6);
					   int x=Integer.parseInt(str);
					   x++;
                      
					   evid="EMP"+x;; %>
				   <option value="<%=evid%>"><%=evid%></option>
				<%}
		 }


%>
<%
}catch(Exception e){}
rs.close();
st.close();


%>
        </select></font></b></td>
        <td width="114" align="right">
        <b>
		<font size="2" face="Verdana">Street</font></b></td>
        <td width="169"><input type="text" name="street" size="20"></td>
      </tr>
      <tr>
        <td width="114" align="right"><b><font size="2" face="Verdana">&nbsp;Name</font></b></td>
        <td width="328"><b>
        <font size="2" face="Verdana">
		<input type="text" name="name" size="20"></font></b></td>
        <td width="114" align="right">
        <b>
        <font size="2" face="Verdana">City</font></b></td>
        <td width="20%">
		<input type="text" name="city" size="20"></td>
      </tr>
      <tr>
        <td width="114" align="right"><b><font size="2" face="Verdana">Designation
          ID</font></b></td>
        <td width=20%><b>
		   <font size="2" face="Verdana">
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

%>
        </select></font></b></td>
        <td width="20%" align="right"><b><font size="2" face="Verdana">State</font></b></td>
        <td width="20%"><input type="text" name="state" size="20"></td>
      </tr>
      <tr>
        <td width="30%" align="right"><b><font size="2" face="Verdana">Department
          ID</font></b></td>
        <td width="20%"><b>
        <font size="2" face="Verdana">
		<select size="1" name="D3" style="WIDTH:144 PX">
         <%
      
		Statement st2=null;
	 	ResultSet rs2=null;

					  	 
 try{
	
	st2=con.createStatement();
	rs2=st2.executeQuery("select * from Department_MASTER");
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
        </select></font></b></td>
        <td width="114" align="right"><b><font size="2" face="Verdana">Country</font></b></td>
        <td width="20%"><input type="text" name="country" size="20"></td>
      </tr>
      <tr>
        <td width="30%" align="right"><b><font size="2" face="Verdana">Date
          of Birth</font></b></td>
        <td width="20%"><b><font size="2" face="Verdana"><input type="text" name="dob" size="20"></font></b></td>
        <td width="20%" align="right"><b><font size="2" face="Verdana">Pin</font></b></td>
        <td width="20%"><input type="text" name="pin" size="20"></td>
      </tr>
      <tr>
        <td width="30%" align="right"><b><font size="2" face="Verdana">Date
          of Joining</font></b></td>
        <td width="20%"><b><font size="2" face="Verdana"><input type="text" name="doj" size="20"></font></b></td>
        <td width="20%" align="right"><b><font size="2" face="Verdana">Phone</font></b></td>
        <td width="20%"><input type="text" name="phone" size="20"></td>
      </tr>
      <tr>
        <td width="30%" align="right"><b><font size="2" face="Verdana">Flat No</font></b></td>
        <td width="20%"><b><font size="2" face="Verdana"><input type="text" name="hno" size="20"></font></b></td>
        <td width="20%" align="right"><b><font size="2" face="Verdana">EmailID</font></b></td>
        <td width="20%"><input type="text" name="email" size="20"></td>
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
 
  </table>
 </body>
