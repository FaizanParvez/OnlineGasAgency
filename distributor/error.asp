<%@LANGUAGE=VBSCRIPT%>
<%OPTION EXPLICIT%>
<!--#INCLUDE FILE="OurDatabaseConnect.ASP"-->
<html>
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="-1">
<meta http-equiv="CACHE-CONTROL" content ="N0-CACHE">
<title>Login Error</title>
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
</style>
<style type="text/css">
#apDiv6 {
	position: absolute;
	left: 494px;
	top: 220px;
	width: 523px;
	height: 350px;
	z-index: 304;
	padding-top: 15px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 30px;                                  
	color: rgba(255,255,255,1);
	background-color: rgba(0,0,0,.5);
	border-radius: 0px 18px 0px 18px;
}
#apDiv7 {
	position: absolute;
	left: 411px;
	top: 249px;
	width: 500px;
	height: 209px;
	z-index: 303;
}
body,td,th {
	color: rgba(255,255,255,1);
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
<div id="apDiv7"><h2>
<%
DIM OBJRS
DIM FLAG
FLAG=0
set OBJRS = server.createobject("adodb.recordset")
OBJRS.OPEN "distlogin",OBJCONN,,,adCmdTable
DO WHILE NOT OBJRS.EOF
IF OBJRS("username")=request.form("username") and objrs("password")=request.form("password") THEN
session("un")=OBJRS("BRANCHNAME")
response.redirect ("Distributor.asp")
END IF
OBJRS.MOVENEXT
LOOP
IF (FLAG=0)THEN
RESPONSE.WRITE("Please re-enter your password.")
RESPONSE.WRITE("<br>")
RESPONSE.WRITE ("The password you entered is incorrect.") 
RESPONSE.WRITE("<br>")
RESPONSE.WRITE("Please try again (make sure your caps lock is off).")
RESPONSE.WRITE("<br>")
RESPONSE.WRITE("<br>")
RESPONSE.WRITE "<A HREF='login.asp'>"
RESPONSE.WRITE "LOGIN  AGAIN"
RESPONSE.WRITE "</A>"
END IF
OBJRS.CLOSE
SET OBJRS=NOTHING
OBJCONN.CLOSE
SET OBJCONN=NOTHING
%></h2></div>

<div id="log"><a href="../Home.asp"><img src="Images/logo.gif" width="387" height="197" alt="logo"></a></div>
<div id="footer"> 
  <h3>Copyrighted © All rights reserved</h3>
</div>
</body>
</html>
