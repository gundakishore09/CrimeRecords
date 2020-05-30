<%@  page import = "java.io.*"%>
 <%@ page import = "java.sql.*"%>
 <%@  page import = "connection.*"%>
<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>Police Station Master</title>
<meta name="Microsoft Theme" content="none">
</head>
<script>
function init() 
{
    document.forms[0].T1.focus();
}
function kaps(fieldname) 
{
    fieldname.value= fieldname.value.toUpperCase();
}
function isEmpty(str)
{
if(str=="")
{
return true;
}
else 
return false;
}
function isAlpha(str1)
{
len=str1.length;
for(i=0; i<len; i++)
{
 if( ((str1.charAt(i) >='a')&& (str1.charAt(i) <='z')) ||  ((str1.charAt(i) >='A')&& (str1.charAt(i) <='Z')) )
{
}
else
{
return true; break;
}
}
}

function validateAll() 
{
 var name = document.forms[0]. T1 .value;
  if(isEmpty(name  )) 
 {
   alert("Please type  Territory  name.");
   document.forms[0]. name .focus();
   return false;
 } 
else if(isAlpha(name)) 
{
  alert("territory name contains invalid characters. Please re-enter.");
  document.forms[0].name.focus();
  return false;
}
return true;
}
function func_sub()
{
   if(validateAll() )
 {
  terr_form.action="territory_insert.jsp";
  terr_form.method="post";
  terr_form.submit();
  }
}
function func_search()
{
  terr_form.action="territory_search.jsp";
  terr_form.method="post";
  terr_form.submit();
}
function func_delete()
{
  terr_form.action="territory_delete.jsp";
  terr_form.method="post";
  terr_form.submit();
}

</script>


<body bgcolor=aliceblue>

<form  name="terr_form">
  <!--webbot bot="SaveResults" U-File="E:\policecrime\_private\form_results.txt"
  S-Format="TEXT/CSV" S-Label-Fields="TRUE" -->
  <p>&nbsp; </p>
  <p>&nbsp; </p>
  <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#996633" size="5">Territory
  Master</font></p>
  <p align="center">&nbsp;</p>
<table border="0" width="100%" height="118">
  <tr>
    <td width="25%" align="right" height="25"></td>
    <td width="25%" align="right" height="25"><b><font face="Verdana" size="2">Territory
      ID</font></b></td>
    <td width="25%" height="25"><select size="1" name="D1" style="WIDTH:144 PX" tabindex="1">
<%
         DataCon ds = new DataCon();
		Connection con=null;
		Statement st=null;
	 	ResultSet rs=null;
		String evid=null;
							  	 
 try{
	 
	con = ds.getConnection1(); 
	st=con.createStatement();
	rs=st.executeQuery("select max(TERRITORY_ID) from TERRITORY_MASTER");
	System.out.println("rs:"+rs);
	int id=0;
	
	while(rs.next())
	 {     
		evid=rs.getString(1);
		System.out.println("inside while");
			 if(evid==null) 
			{	 
				 		System.out.println("inside if");

				 evid="TE101";
					 %><option value="<%=evid%>"><%=evid%></option>
		        	<%
			 }
	
		 else{
			 		System.out.println("inside else");
					   evid=rs.getString(1);
					   String str=evid.substring(2,5);
					   int x=Integer.parseInt(str);
					   x++;
                      
					   evid="TE"+x;; %>
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
    <td width="25%" height="25"></td>
  </tr>
  <tr>
    <td width="25%" align="right" height="25"></td>
    <td width="25%" align="right" height="25"><b><font face="Verdana" size="2">Territory
      Name&nbsp;</font></b></td>
    <td width="25%" height="25"><input type="text" name="T1" size="20" tabindex="2"></td>
    <td width="25%" height="25"></td>
  </tr>
  <tr>
    <td width="25%" align="right" height="25"></td>
    <td width="25%" align="right" height="25"><b><font face="Verdana" size="2">Description</font></b></td>
    <td width="25%" height="25"><input type="text" name="T2" size="20" tabindex="3"></td>
    <td width="25%" height="25"></td>
  </tr>
  <tr>
    <td width="25%" align="right" height="27"></td>
    <td width="25%" align="right" height="27">
      <p align="right">&nbsp; <input type=button value="Insert"   onClick="func_sub()" tabindex="4"> <input type=button value="Search"    onClick="func_search()" tabindex="5"></td>
    <td width="25%" align="right" height="27">
      <p align="left"><input type=button value="Delete"    onClick="func_delete()" tabindex="6"></td>
    <td width="25%" height="27"></td>
  </tr>
</table>
</form>
<p>&nbsp;</p>

</body>

</html>
