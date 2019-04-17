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
<style type="text/css">
#apDiv5 {
	position: absolute;
	left: 373px;
	top: 130px;
	width: 282px;
	height: 49px;
	z-index: 305;
}
#apDiv6 {
	position: absolute;
	left: 460px;
	top: 273px;
	width: 445px;
	height: 167px;
	z-index: 303;
}
a:link {
	color: rgba(255,255,255,1);
}
a:visited {
	color: rgba(255,255,255,1);
}
</style>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
</head>

<body>
<div id="log"><a href="../Home.asp"><img src="Images/logo.gif" width="387" height="197" alt="logo"></a></div>
<div id="footer"> 
  <h3>Copyrighted © All rights reserved</h3>
</div>

<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
<div id="apDiv6">
<h2>
<%
DIM OBJRS
DIM COUNT
COUNT=0

SET OBJRS = server.createobject("adodb.recordset")
OBJRS.OPEN "ADMINREQUEST",OBJCONN, ,adLockOptimistic,adCmdTable


DO WHILE NOT OBJRS.EOF
IF(OBJRS("REQUEST")="1") THEN

	IF (OBJRS("DISTRICTNAME")="Srinagar") THEN
                IF(OBJRS("TEMP")=0) THEN
		COUNT=COUNT+2000
		OBJRS("TEMP")=OBJRS("TEMP")+2000
		END IF
	ELSEIF (OBJRS("DISTRICTNAME")="Budgam")  THEN
		IF(OBJRS("TEMP")=0) THEN
		COUNT=COUNT+1500
		OBJRS("TEMP")=OBJRS("TEMP")+1500
		END IF
	ELSEIF (OBJRS("DISTRICTNAME")="Baramulla")  THEN
		IF(OBJRS("TEMP")=0) THEN
		COUNT=COUNT+1500
		OBJRS("TEMP")=OBJRS("TEMP")+1500
		END IF
	ELSEIF (OBJRS("DISTRICTNAME")="Anatnag")  THEN
		IF(OBJRS("TEMP")=0) THEN
		COUNT=COUNT+1500
		OBJRS("TEMP")=OBJRS("TEMP")+1500
		END IF
	ELSEIF (OBJRS("DISTRICTNAME")="Pulwama")  THEN
		IF(OBJRS("TEMP")=0) THEN
		COUNT=COUNT+1500
		OBJRS("TEMP")=OBJRS("TEMP")+1500
		END IF
	ELSEIF (OBJRS("DISTRICTNAME")="Ganderbal")  THEN
		IF(OBJRS("TEMP")=0) THEN
		COUNT=COUNT+1500
		OBJRS("TEMP")=OBJRS("TEMP")+1500
		END IF
	ELSEIF (OBJRS("DISTRICTNAME")="Kulgam")  THEN
		IF(OBJRS("TEMP")=0) THEN
		COUNT=COUNT+1500
		OBJRS("TEMP")=OBJRS("TEMP")+1500
		END IF
	ELSE

	END IF

End IF

OBJRS("REQUEST")=0
OBJRS.UPDATE
OBJRS.MOVENEXT
LOOP


OBJRS.CLOSE
SET OBJRS=NOTHING


SET OBJRS = server.createobject("adodb.recordset")
OBJRS.OPEN "ADMINSTOCK",OBJCONN, ,adLockOptimistic,adCmdTable

OBJRS("STOCK")=OBJRS("STOCK")-COUNT
OBJRS.UPDATE
OBJRS.CLOSE
SET OBJRS=NOTHING

OBJCONN.CLOSE
SET OBJCONN=NOTHING


RESPONSE.WRITE "<A HREF='request.asp'>"
RESPONSE.WRITE "Dispatch Successful"
RESPONSE.WRITE "</A>"

%>
</h2>
</div>
</body>
</html>


