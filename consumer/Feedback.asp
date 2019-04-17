<%@LANGUAGE=VBSCRIPT%>
<%OPTION EXPLICIT%>
<!--#INCLUDE FILE="OurDatabaseConnect.ASP"-->

<%
if session("un")="" then
response.redirect("login.asp")
end if
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Feedback</title>
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
#apDiv4 {
	position: absolute;
	left: 554px;
	top: 264px;
	width: 479px;
	height: 336px;
	z-index: 303;
	background-color: rgba(0,0,0,.3);
	color: rgba(255,255,255,1);
	border-radius: 0px 18px 0px 18px;
	padding-left: 20px;
	padding-top: 15px;
}
#apDiv5 {
	position: absolute;
	left: 707px;
	top: 206px;
	width: 535px;
	height: 49px;
	z-index: 304;
}
</style>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css">
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
<%
dim OBJRS
set OBJRS = server.createobject("adodb.recordset")
OBJRS.OPEN "registration",OBJCONN, ,adLockOptimistic,adCmdTable
DO WHILE NOT OBJRS.EOF
	IF(STRCOMP(OBJRS("UNAME"),SESSION("un"),VBTEXTCOMPARE)=0) THEN
	SESSION ("PN")=OBJRS("DISTRICT")
	SESSION ("BN")=OBJRS("FNAME")
	END IF
OBJRS.MOVENEXT
LOOP
OBJRS.CLOSE
SET OBJRS=NOTHING
OBJCONN.CLOSE
SET OBJCONN=NOTHING
%>

<div id="apDiv4">
  <form name="form1" method="post" action="linkoffeedback.asp">
    <table width="387" height="267">
      <tr>
        <td width="200"><label for="subject">Subject</label></td>
        <td width="171"><input type="text" name="subject" id="subject"></td>
      </tr>
      <tr>
        <td><label for="description">Description</label></td>
        <td><textarea name="description" cols="45" rows="10" id="description"></textarea></td>
      </tr>
      <tr>
        <td height="94">&nbsp;</td>
        <td><input type="submit" name="submit" id="submit" value="Submit"></td>
      </tr>
    </table>
  </form>
</div>
<div id="apDiv5">
  <label><h2>Feedback</h2>
  </label></div>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>
</html>
