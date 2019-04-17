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
<div id="apDiv5"><h2>
<%
DIM OBJRS,dt,FLAG
set OBJRS = server.createobject("adodb.recordset")
OBJRS.OPEN "booking",OBJCONN, ,adLockOptimistic,adCmdTable
FLAG=0
dt=date
DO WHILE NOT (OBJRS.EOF)
IF(STRCOMP(OBJRS("consumername"),REQUEST.FORM("consumer_name"),VBTEXTCOMPARE)=0) THEN
   IF(STRCOMP(OBJRS("uname"),SESSION("un"),VBTEXTCOMPARE)=0) THEN
	IF(OBJRS("CLYNUMBER")< 12 AND Month(OBJRS("applieddate")) <> MONTH(DATE)) THEN
           OBJRS("CLYNUMBER")=OBJRS("CLYNUMBER")+1
           OBJRS("uname")=SESSION("UN")
           OBJRS("applieddate")=REQUEST.FORM("applied_date")
	   OBJRS("STATUS")="PENDING"
           OBJRS.UPDATE
	   FLAG=1
	   RESPONSE.WRITE "<A HREF='CONSUMER.asp'>"
           RESPONSE.WRITE ("Your request has been sent")
           RESPONSE.WRITE "</A>"
            RESPONSE.WRITE "<BR>"
             RESPONSE.WRITE "<BR>"
	   RESPONSE.WRITE("You will recieve your GAS CYLINDER")
           RESPONSE.WRITE ("<br>")
            RESPONSE.WRITE("ON:"& DATEADD("Y",1,dt))
	   RESPONSE.WRITE "<BR>"
             RESPONSE.WRITE "<BR>"
            RESPONSE.WRITE("Thank You.")
	ELSE
	   RESPONSE.WRITE "<A HREF='CONSUMER.asp'>"
	   RESPONSE.WRITE("You've already issued a cylinder for this month  or you might have exceeded your limit.")
           RESPONSE.WRITE "</A>"
	   FLAG=1
	END IF
   END IF
END IF
OBJRS.MOVENEXT
LOOP
IF (FLAG=0) THEN
OBJRS.ADDNEW
OBJRS("CLYNUMBER")=1
OBJRS("consumerid")=REQUEST.FORM("consumer_no")
OBJRS("consumername")=REQUEST.FORM("consumer_name")
OBJRS("connectiontype")=REQUEST.FORM("connection_type")
OBJRS("applieddate")=REQUEST.FORM("applied_date")
OBJRS("district")=REQUEST.FORM("district")
OBJRS("uname")=SESSION("un")
OBJRS("status")="PENDING"

RESPONSE.WRITE "<A HREF='CONSUMER.asp'>"
RESPONSE.WRITE ("Your request has been sent.")
RESPONSE.WRITE "</A>"
RESPONSE.WRITE ("<br>")
RESPONSE.WRITE ("<br>")
RESPONSE.WRITE("You will recieve your GAS CYLINDER")
RESPONSE.WRITE ("<br>")
RESPONSE.WRITE("ON:"& DATEADD("Y",1,dt))
RESPONSE.WRITE "<BR>"
RESPONSE.WRITE "<BR>"
RESPONSE.WRITE("Thank You.")

OBJRS.UPDATE
OBJRS.CLOSE
SET OBJRS=NOTHING
END IF



OBJCONN.CLOSE
SET OBJCONN=NOTHING
%>
</h2>
</div>
</body>
</html>

