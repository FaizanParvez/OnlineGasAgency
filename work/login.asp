<%@LANGUAGE=VBSCRIPT%>
<%OPTION EXPLICIT%>
<!--#INCLUDE FILE="OurDatabaseConnect.ASP"-->
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
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
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css">
<link href="SpryAssets/SpryValidationPassword.css" rel="stylesheet" type="text/css">
<style type="text/css">
#apDiv5 {
	position: absolute;
	left: 373px;
	top: 130px;
	width: 282px;
	height: 49px;
	z-index: 305;
}
</style>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationPassword.js" type="text/javascript"></script>
</head>

<body text="#FFFFFF">
<div id="log"><a href="../Home.asp"><img src="Images/logo.gif" width="387" height="197" alt="logo"></a></div>
<div id="footer"> 
  <h3>Copyrighted © All rights reserved</h3>
</div>
<div id="label">
  <h1>Consumer's Area :</h1>
</div>
<div id="apDiv4">
  <form name="form1" method="post" action="login.asp">
    <table width="366" height="179" border="0">
      <tr>
        <td><span id="sprytextfield1">
          <label for="username">Username</label>
        <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        <td><input type="text" name="username" id="username" required></td>
      </tr>
      <tr>
        <td><span id="sprypassword1">
          <label for="password">Password</label>
        <span class="passwordRequiredMsg">A value is required.</span></span></td>
        <td><input type="password" name="password" id="password" required></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" name="login" id="login" value="Login"></td>
      </tr>

    </table>
  </form>
</div>
<div id="apDiv5">
  <h1>Login </h1>
</div>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
var sprypassword1 = new Spry.Widget.ValidationPassword("sprypassword1");
</script>
</body>
</html>
<%
DIM OBJRS
set OBJRS = server.createobject("adodb.recordset")
OBJRS.OPEN "registration",OBJCONN,,,adCmdTable
DO WHILE NOT OBJRS.EOF
IF OBJRS("uname")=request.form("username") and objrs("password")=request.form("password") THEN
session("un")=request.form("username")
response.redirect ("Consumer.asp")
END IF
OBJRS.MOVENEXT
LOOP
OBJRS.CLOSE
SET OBJRS=NOTHING
OBJCONN.CLOSE
SET OBJCONN=NOTHING
%>
