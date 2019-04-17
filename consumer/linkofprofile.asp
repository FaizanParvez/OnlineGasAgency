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
<style type="text/css">
body,td,th {
	color: rgba(255,255,255,1);
}
#apDiv5 {
	position: absolute;
	left: 395px;
	top: 237px;
	width: 530px;
	height: 281px;
	z-index: 303;
}
a:link {
	color: rgba(255,255,255,1);
}
a:visited {
	color: rgba(255,255,255,1);
}
</style>
</head>

<body>
<div id="log"><a href="../Home.asp"><img src="Images/logo.gif" width="387" height="197" alt="logo"></a></div>
<div id="footer"> 
  <h3>Copyrighted © All rights reserved</h3>
</div>
<div id="apDiv5">
<h2>
<%
DIM OBJRS,bola
IF((REQUEST.FORM("EMAIL")="") OR (REQUEST.FORM("PHONE")="") _
OR (REQUEST.FORM("ADDRESS")="")) THEN
RESPONSE.WRITE "<A HREF='PROFILE.asp'>"
RESPONSE.WRITE "YOU MUST ENTER VALUES FOR ALL THE FIELDS"
RESPONSE.WRITE "</A>"

ELSE

BOLA=FALSE
set OBJRS = server.createobject("adodb.recordset")
OBJRS.OPEN "registration",OBJCONN, ,adLockOptimistic,adCmdTable
IF NOT BOLA THEN
DO WHILE NOT (OBJRS.EOF)
IF session("un")=objrs("UNAME") THEN
   IF(STRCOMP(REQUEST.FORM("CURRENT"),OBJRS("PASSWORD"),VBTEXTCOMPARE)=0) THEN
	OBJRS("EMAIL")=REQUEST.FORM("EMAIL")
	OBJRS("PHONE")=REQUEST.FORM("PHONE")
	OBJRS("ADDRESS")=REQUEST.FORM("ADDRESS")
	OBJRS("PASSWORD")=REQUEST.FORM("NEW")
	OBJRS("DISTRICT")=REQUEST.FORM("DISTRICT")
	OBJRS.UPDATE
	RESPONSE.WRITE "<A HREF='consumer.asp'>"
	RESPONSE.WRITE "YOUR PROFILE HAS BEEN  UPDATED"
	RESPONSE.WRITE "</A>"
    ELSE
	RESPONSE.WRITE "<A HREF='profile.asp'>"
	RESPONSE.WRITE "INCORRECT PASSWORD"
	RESPONSE.WRITE "</A>"
END IF
END IF
OBJRS.MOVENEXT
loop
END IF
OBJRS.CLOSE
SET OBJRS=NOTHING




set OBJRS = server.createobject("adodb.recordset")
OBJRS.OPEN "booking",OBJCONN, ,adLockOptimistic,adCmdTable
IF NOT BOLA THEN
DO WHILE NOT (OBJRS.EOF)
IF session("un")=objrs("UNAME") THEN
        OBJRS("DISTRICT")=REQUEST.FORM("DISTRICT")
        OBJRS.UPDATE
END IF
OBJRS.MOVENEXT
loop
END IF
OBJRS.CLOSE
SET OBJRS=NOTHING
END IF
OBJCONN.CLOSE
SET OBJCONN=NOTHING
%></h2>
</div>
</body>
</html>

