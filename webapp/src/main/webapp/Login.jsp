<html>
<head>
<title>Login</title>
<meta name="Microsoft Theme" content="blueprnt 011">
<SCRIPT language="JavaScript">
  	function validate()
  	{
	  	if(document.frm.UserName.value==""||document.frm.Password.value=="")
		{
			alert("UserName or Password cannot be blank!!");
            document.frm.UserName.focus();
             return false;
			//return;
  		
	  	/* document.frm.action="Validate.jsp";
  		document.frm.submit(); */
  	}

	}
	</SCRIPT>
	</head>	
   <body bgcolor=aliceblue leftmargin=0 topmargin=0>
<%
String msg=request.getParameter("msg");
%>
	
   <table border="0" width="80%">
  
    <div align="center">
    <center>
      <tr>
        <td width="100%">
		<img src="policecrime.jpg" width="770" height="60"><br>
       </td>
      </tr>
	  <tr>
        <td width="100%">
          <div align="center">
            <table border="0" width="100%" height="129">
              <td width="20%" height="125">
			 <marquee direction="down" height="330" scrolldelay="100" >
        <img src="p1.jpg" width="150" height="80"><BR>
        <font face="Verdana" color=#0099FF size="1"><strong>Freindly Counsellings</strong></font><BR>
        <BR>
        <img src="p2.jpg" width="150" height="80"><BR>
        <font face="Verdana" color=#0099FF size="1"><strong>Guards For Public</strong></font><BR>
        <BR>
        <img src="p3.jpg" width="150" height="80"><BR>
        <font face="Verdana" color=#0099FF size="1"><strong>e-cops</strong></font><BR>
        <BR>
        <img src="p4.jpg" width="150" height="80"><BR>
        <font face="Verdana" color=#0099FF size="1"><strong>Lady Police Advancing</strong></font><BR>
        <BR>
        <img src="p5.jpg" width="150" height="80"><br>
        <font face="Verdana" color=#0099FF size="1"><strong>Temples Of Security</strong></font>
</marquee><br></td>
             <td width="80%" height="125">
		  <table background="PoliceCrimeBkng.jpg" border="0" width="100%" height="225">
		<tr align="center">  		 
		  <td  colspan=2 width="360" height="70" >
         <p align="center"><font face ="Garamond"color="#6600FF" size="5">&nbsp;</font><font size="5">
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       Login Form </dfn></u></font></H1>
 	 </td>
   </tr>
     <tr>
     <td background="PoliceCrimeBkng.jpg" width="267" align="right" height="15">
	 <FONT SIZE="2" face=verdana COLOR="#FF0066"><B><%=msg%></B></FONT>
	 </tr><br>
	  <form name =frm method="POST" action="Validate.jsp" onSubmit="return validate()">
	  <tr>
	  <td width="267" align="right" height="20">
	  <b><font face="Garmond" size="3">&nbsp; User Name </font></b></td>
	   <td width="344" height="40">
       <input type="text" name="UserName" size="20" >
        </td>
       </tr>
       <tr>
       <td width="267" align="right" height="28"><b><font size="3" face="Garmond">Password</font></b></td>
         <td width="344" height="28">
		 <input type="password" name="Password" size="20" >
		 </td>
	        </tr>
			
		 <TR align="center">
    	<TD colspan=2>
             <p>&nbsp;</p>
            <p>
    		<input type="submit"  value="Login" name="B1"> 
            </p>
			</form>
			</TD>
			</TR>
    
  </table>
   </table>
 </body>
</html>