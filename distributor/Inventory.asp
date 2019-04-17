
<%@LANGUAGE=VBSCRIPT%>
<%OPTION EXPLICIT%>
<!--#INCLUDE FILE="OurDatabaseConnect.ASP"-->
<%

if session("un")="" then
response.redirect("login.asp")
end if
%>
<html>
<head>
<meta charset="utf-8">
<title>Inventory</title>
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
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css">
<style type="text/css">
#apDiv3 {
	position: absolute;
	left: 440px;
	top: 301px;
	width: 512px;
	height: 242px;
	z-index: 303;
}
#label {
	position: absolute;
	left: 13px;
	top: 204px;
	width: 347px;
	height: 143px;
	z-index: 303;
}
#apDiv4 {
	position: absolute;
	left: 372px;
	top: 207px;
	width: 368px;
	height: 182px;
	z-index: 304;
	background-color: rgba(0,0,0,.4);
	color: rgba(255,255,255,1);
	border-radius: 0px 20px 0px 20px;
	padding-left: 15px;
}
</style>
<style type="text/css">
#abc {
	position: absolute;
	left: 410px;
	top: 224px;
	width: 438px;
	height: 184px;
	z-index: 304;
	background-color: rgba(0,0,0,.4);
	color: rgba(255,255,255,1);
	text-align: center;
	padding-top: 10px;
	border-radius: 0px 20px 0px 20px;
}
#apDiv5 {
	position: absolute;
	left: 434px;
	top: 222px;
	width: 549px;
	height: 337px;
	z-index: 303;
	background-color: rgba(0,0,0,0);
	padding-left: 10px;
	border-radius: 0px 20px 0px 20px;
}
#apDiv6 {
	position: absolute;
	left: 644px;
	top: 171px;
	width: 420px;
	height: 105px;
	z-index: 303;
}
#apDiv7 {
	position: absolute;
	left: 5px;
	top: 204px;
	width: 424px;
	height: 361px;
	z-index: 304;
	padding-right: 7px;
	padding-left: 7px;
}
#apDiv8 {
	position: absolute;
	left: 473px;
	top: 254px;
	width: 609px;
	height: 171px;
	z-index: 305;
	border-radius: 0px 18px 0px 18px;
	background-color: rgba(0,0,0,.4);
}
body,td,th {
	color: rgba(255,255,255,1);
}
#apDiv9 {
	position: absolute;
	left: 473px;
	top: 421px;
	width: 608px;
	height: 60px;
	z-index: 306;
	background-color: rgba(0,0,0,.4);
	border-radius: 0px 0px 0px 25px;
}
</style>
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css">
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
</head>

<body>
<div id="Nav">
  <ul id="MenuBar1" class="MenuBarHorizontal">
    <li><a href="Distributor.asp">Home</a></li>
    <li><a href="Inventory.asp">Inventory</a></li>
    <li><a href="request.asp">Request</a></li>
    <li><a href="reports.asp">Reports</a></li>
    <li><a href="logout.asp">Logout</a></li>
  </ul>
</div>
<div id="log"><a href="../Home.asp"><img src="Images/logo.gif" width="387" height="197" alt="logo"></a></div>
<div id="footer"> 
  <h3>Copyrighted © All rights reserved</h3>
</div>
<div id="apDiv6">
 <h1>Branch <%= session("un")
 %>
 </h1>
</div>
<div id="apDiv9">
  <form name="form2" method="post" action="confirmation.asp">
    <table width="607" border="0">
      <tr>
        <td width="358" height="50">Send Confirmation To The Administrator</td>
        <td width="233"><input type="submit" name="confirmation" id="confirmation" value="Stock Recieved"></td>
      </tr>
    </table>
  </form>
</div>
<%
DIM OBJRS
set OBJRS = server.createobject("adodb.recordset")
OBJRS.OPEN "diststock",OBJCONN, ,adLockOptimistic,adCmdTable
DO WHILE NOT OBJRS.EOF
IF(STRCOMP(OBJRS("DISTRICT"),SESSION ("UN"),VBTEXTCOMPARE)=0) THEN
EXIT DO

END IF
OBJRS.MOVENEXT
LOOP	
%>
<div id="apDiv8">
  <form name="form1" method="post" action="Hard_Request.asp">
    <table width="608" height="168" border="0">
      <tr>
        <td width="274"><label for="pstock">Present Stock Available</label></td>
        <td width="279"><input name="pstock" type="text" id="pstock" value= <% =OBJRS("STOCK") %> ></td>
      </tr>
      <tr>
        <td><label for="rstock">Request For Stock</label></td>
        <td><span id="sprytextfield1">
          <input type="text" name="rstock" id="rstock">
        <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        
      </tr>
      <tr>
        <td height="52">&nbsp;</td>
        <td><input type="submit" name="login" id="login" value="Hard Request"></td>
      </tr>
    </table>
  </form>
</div>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
</script>
</body>
</html>


