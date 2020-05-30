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
   var name =  document.forms[0].name .value;
    if(isEmpty(name  )) 
 {
     alert("Please type Category name.");
     document.forms[0]. name .focus();
     return false;
 } 
else if(!isAlpha(name)) 
{
     alert("category name contains invalid characters. Please re-enter.");
     document.forms[0].name.focus();
     return false;
}
   return true;
}
function func_sub()
{
	if(validateAll())
	{
      crime_category_form.action="crime_category_insert.jsp";
      crime_category_form.method="post";
      crime_category_form.submit();
}
}
function func_search()
{
     crime_category_form.action="crime_category_search.jsp";
     crime_category_formmethod="post";
     crime_category_form.submit();
}
function func_delete()
{
     crime_category_form.action="crime_category_delete.jsp";
     crime_category_form.method="post";
     crime_category_form.submit();
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
   <form name="crime_category_form">
   <tr align="center">
   <td colspan=2 width="360" height="70">
    <p align="center"><font color="#996633" size="5">&nbsp;</font><font size="5">Crime Category  Master</font><font color="#996633" size="5">&nbsp;</font></p>

    <p align="center">&nbsp;</p>

   <tr>
     <td width="192" align="right" height="19"><b><font face="Verdana" size="2">Crime  Category ID</font></b></td>
    <td width="162" height="19">
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
	 rs=st.executeQuery("select max(CRIME_CATEGORY_ID) from CRIME_CATEGORY_MASTER");
	 System.out.println("rs:"+rs);
	 int id=0;
	
	while(rs.next())
	  {     
		evid=rs.getString(1);
		System.out.println("inside while");
			 if(evid==null) 
			{	 
				 		System.out.println("inside if");

				 evid="CC101";
					 %><option value="<%=evid%>"><%=evid%></option>
		        	<%
			 }
	
		 else{
			 		System.out.println("inside else");
					   evid=rs.getString(1);
					   String str=evid.substring(2,5);
					   int x=Integer.parseInt(str);
					   x++;
                      
					   evid="CC"+x;; %>
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
    <td width="370" align="right"><b><font face="Verdana" size="2">Crime
      Category Name</font></b></td>
    <td width="263">
	<input type="text" name="name" size="20" tabindex="2"></td>
  </tr>
  <tr>
    <td width="370" align="right"><b><font face="Verdana" size="2">Description</font></b></td>
    <td width="263"><input type="text" name="desc" size="20" tabindex="3"></td>
  </tr>
  <tr>
    <td width="370" align="right"></td>
    <td width="263"></td>
  </tr>
  <tr>
    <td width="370" align="right"></td>
    <td width="263"></td>
  </tr>
   </form>
  <tr>
    <td width="370" align="right">
      <p align="right">&nbsp; 
	  <input type=button value="Insert" name="submit" onClick="func_sub()" class=bu tabindex="4"> 
	  <input type="submit" value="Search" name="submit" onClick="func_search()"  class=bu tabindex="5"></td>
    <td width="263" align="right">
      <p align="left">
	  <input type="submit" value="Delete" name="submit" onClick="func_delete()" class=bu tabindex="6"></td>
  </tr>
</tr>
  </table>
    </td>
    </tr>
    </center>
  </div>
 
  </table>
 </body>
</html>
