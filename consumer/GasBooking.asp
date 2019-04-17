<%@LANGUAGE=VBSCRIPT%>
<%OPTION EXPLICIT%>
<!--#INCLUDE FILE="OurDatabaseConnect.ASP"-->
<%

if session("un")="" then
response.redirect("login.asp")
end if
%>
<%
dim OBJRS
DIM CT,UID,nn,DT,DA,un
set OBJRS = server.createobject("adodb.recordset")
OBJRS.OPEN "registration",OBJCONN, ,adLockOptimistic,adCmdTable
DO WHILE NOT (OBJRS.EOF)
IF(STRCOMP(OBJRS("uname"),session("UN"),VBTEXTCOMPARE)=0) THEN
CT=OBJRS("connection")
UID=OBJRS("consumerid")
nn=OBJRS("fname")
DT = DATE()
DA = OBJRS("district")

	
END IF
OBJRS.MOVENEXT
LOOP
%>
<html>
<head>
<meta charset="utf-8">
<title>Gas Booking</title>
<link rel="stylesheet" "type=text/css" href="stylesheets/Contactstyle.css"/>
<style type="text/css">
body {
	background-image: url(Images/Red-Wallpaper-Texture-49.jpg);
	background-attachment: fixed;
	background-size: cover;
}
</style>
<style type="text/css">
h1 {
	color: rgba(255,255,255,1);
}
h3 {
	color: rgba(255,255,255,1);
}
#contactus {
	position: absolute;
	left: 453px;
	top: 215px;
	width: 341px;
	height: 257px;
	z-index: 303;
	background-color: rgba(0,0,0,.5);
	padding-left: 8px;
	border-radius: 0px 14px 0px 14px;
}
#apDiv1 {
	position: absolute;
	left: 443px;
	top: 204px;
	width: 510px;
	height: 405px;
	z-index: 303;
	background-color: rgba(0,0,0,.4);
	color: rgba(255,255,255,1);
	padding-left: 10px;
	border-radius: 0px 17px 0px 17px;
}
</style>
<style type="text/css">
#apDiv2 {
	position: absolute;
	left: 360px;
	top: 136px;
	width: 425px;
	height: 52px;
	z-index: 304;
	font-family: "Courier New", Courier, monospace;
}
h2 {
	color: rgba(255,255,255,1);
}
</style>

<style type="text/css">
#apDiv3 {
	position: absolute;
	left: 440px;
	top: 301px;
	width: 512px;
	height: 242px;
	z-index: 303;
}
#content {
	position: absolute;
	left: 545px;
	top: 280px;
	width: 529px;
	height: 274px;
	z-index: 303;
	font-family: "Times New Roman", Times, serif;
	color: rgba(255,255,255,1);
	background-color: rgba(0,0,0,.4);
	padding-left: 10px;
	border-radius: 0px 15px 0px 15px;
	padding-top: 10px;
}
#apDiv4 {
	position: absolute;
	left: 645px;
	top: 219px;
	width: 351px;
	height: 36px;
	z-index: 304;
}
</style>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css">
<style type="text/css">
body,td,th {
	color: rgba(255,255,255,1);
}
</style>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
</head>

<body>
<div id="Nav">
  <ul id="MenuBar1" class="MenuBarHorizontal">
    <li><a href="Consumer.asp">Home</a></li>
    <li><a href="Profile.asp">Profile</a></li>
<li><a href="GasBooking.asp">Gas Booking</a></li>
    <li><a href="Feedback.asp">Feedback</a></li>
    <li><a href="logout.asp">Logout</a></li>
  </ul>
</div>
<div id="log"><a href="../Home.asp"><img src="Images/logo.gif" width="387" height="197" alt="logo"></a></div>
<div id="footer"> 
  <h3>Copyrighted © All rights reserved</h3>
</div>

<div id="content">
  <form name="form1" method="post" action="linkofbooking.asp">
    <table width="528" height="275" border="0">
      <tr>
        <td height="37"><label for="consumer_no">Consumer Number :</label></td>
        <td><input name="consumer_no" type="text" id="consumer_no" value = <%= uid %> ></td>
      </tr>
      <tr>
        <td height="35"><label for="consumer_name">Consumer Name :</label></td>
        <td><input name="consumer_name" type="text" id="consumer_name" value = <%= nn %>  ></td>
      </tr>
      <tr>
        <td height="36"><label for="connection_type">Connection Type :</label></td>
        <td><input name="connection_type" type="text" id="connection_type" value = <%= ct %> ></td>
      </tr>
      <tr>
        <td height="28"><label for="applied_date">Applied Date :</label></td>
        <td><input name="applied_date" type="text" id="applied_date" value=<% = dt %> ></td>
      </tr>
      <tr>
        <td height="39">District :</td>
        <td><input name="district" type="text" id="district"value=<% = da %> ></td>
      </tr>
      <tr>
        <td height="63">&nbsp;</td>
        <td><input type="submit" name="book_gas" id="book_gas" value="Book Gas"></td>
      </tr>
      <tr>
        <td height="21">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table>
  </form>
</div>
<div id="apDiv4">
  <h2>Consumer Gas Card Details</h2>
</div>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>




</body>
</html>

