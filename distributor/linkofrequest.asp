<%@LANGUAGE=VBSCRIPT%>
<%OPTION EXPLICIT%>
<!--#INCLUDE FILE="OurDatabaseConnect.ASP"-->
<%

if session("un")="" then
response.redirect("login.asp")
end if
%>


<html>
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="-1">
<meta http-equiv="CACHE-CONTROL" content ="N0-CACHE">
<title>Request</title>
<link rel="stylesheet" "type=text/css" href="../consumer/stylesheets/Contactstyle.css"/>
<style type="text/css">
body {
	background-image: url(../consumer/Images/Red-Wallpaper-Texture-49.jpg);
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
	left: 416px;
	top: 261px;
	width: 543px;
	height: 222px;
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
<div id="log"><a href="../Home.asp"><img src="../consumer/Images/logo.gif" width="387" height="197" alt="logo"></a></div>
<div id="footer"> 
  <h3>Copyrighted © All rights reserved</h3>
</div>
<div id="apDiv7">
<h2>
<%
DIM OBJRS,OBJRS1,OBJRS2,OBJRS3
DIM TOTAL,COUNT
COUNT=0
SET OBJRS = server.createobject("adodb.recordset")
OBJRS.OPEN "DISTSTOCK",OBJCONN, ,adLockOptimistic,adCmdTable
DO WHILE NOT OBJRS.EOF
	IF(STRCOMP(OBJRS("DISTRICT"),SESSION ("UN"),VBTEXTCOMPARE)=0) THEN
	TOTAL= OBJRS("STOCK")
	END IF
	OBJRS.MOVENEXT
LOOP
OBJRS.CLOSE
SET OBJRS=NOTHING
SET OBJRS3 = server.createobject("adodb.recordset")
	OBJRS3.OPEN "ADMINREQUEST",OBJCONN, ,adLockOptimistic,adCmdTable
IF (total<1000)  then
DO WHILE NOT OBJRS3.EOF
	IF(STRCOMP(OBJRS3("DISTRICTNAME"),SESSION("UN"),VBTEXTCOMPARE)=0) THEN
		OBJRS3("REQUEST")=1
		OBJRS3.UPDATE
	END IF
OBJRS3.MOVENEXT
LOOP
OBJRS3.CLOSE
SET OBJRS3=NOTHING
END IF

 
SET OBJRS1 = server.createobject("adodb.recordset")
OBJRS1.OPEN "BOOKING",OBJCONN, ,adLockOptimistic,adCmdTable

DO WHILE NOT OBJRS1.EOF
IF(STRCOMP(OBJRS1("DISTRICT"),SESSION ("UN"),VBTEXTCOMPARE)=0) THEN
	IF ((TOTAL>0) AND OBJRS1("STATUS")="PENDING") THEN
	OBJRS1("STATUS")="DELIVERED"
	TOTAL=TOTAL-1
	COUNT=COUNT+1
	OBJRS1.UPDATE
	END IF
END IF
	
OBJRS1.MOVENEXT
LOOP

OBJRS1.CLOSE
SET OBJRS1=NOTHING

set OBJRS2 = server.createobject("adodb.recordset")
OBJRS2.OPEN "DISTSTOCK",OBJCONN, ,adLockOptimistic,adCmdTable
DO WHILE NOT OBJRS2.EOF
	IF(STRCOMP(OBJRS2("DISTRICT"),SESSION ("UN"),VBTEXTCOMPARE)=0) THEN
	OBJRS2("STOCK")=TOTAL
	OBJRS2("COUNT")=OBJRS2("COUNT")+COUNT
	OBJRS2.UPDATE
	END IF
OBJRS2.MOVENEXT
LOOP

RESPONSE.WRITE "<A HREF='REQUEST.asp'>"
RESPONSE.WRITE "Dispatch Successful"
RESPONSE.WRITE "</A>"


OBJRS2.CLOSE
SET OBJRS2=NOTHING

OBJCONN.CLOSE
SET OBJCONN=NOTHING
%>
</h2>

</div>
</body>
</html>
