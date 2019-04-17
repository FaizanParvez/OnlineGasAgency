
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
<title>Hard Request</title>
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
	left: 575px;
	top: 273px;
	width: 440px;
	height: 244px;
	z-index: 304;
	padding-right: 15px;
	padding-left: 15px;
	background-color: rgba(0,0,0,.4);
	border-radius: 0px 18px 0px 18px;
}
#apDiv8 {
	position: absolute;
	left: 492px;
	top: 253px;
	width: 609px;
	height: 312px;
	z-index: 305;
}
#apDiv9 {
	position: absolute;
	left: 465px;
	top: 263px;
	width: 452px;
	height: 201px;
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

<body text="#FFFFFF">
<div id="log"><a href="../Home.asp"><img src="Images/logo.gif" width="387" height="197" alt="logo"></a></div>
<div id="footer"> 
  <h3>Copyrighted © All rights reserved</h3>
</div>
<div id="apDiv9">
<h2>
<%
DIM OBJRS
DIM COUNT
DIM SRINAGAR, BARAMULLA,BUDGAM,ANATNAG,PULWAMA,GANDERBAL,KULGAM

SRINAGAR=0
BARAMULLA=0
BUDGAM=0
ANATNAG=0
PULWAMA=0
GANDERBAL=0
KULGAM=0
COUNT=0

SET OBJRS = server.createobject("adodb.recordset")
OBJRS.OPEN "HARDREQUEST",OBJCONN, ,adLockOptimistic,adCmdTable

DO WHILE NOT OBJRS.EOF
IF(OBJRS("REQUEST")="1") THEN

	IF (OBJRS("DISTRICT")="Srinagar") THEN
                IF(OBJRS("QUANTITY")<>0) THEN
		SRINAGAR=OBJRS("QUANTITY")
		OBJRS("QUANTITY")=0
		COUNT=COUNT+SRINAGAR
		END IF
	ELSEIF (OBJRS("DISTRICT")="Budgam")  THEN
		IF(OBJRS("QUANTITY")<>0) THEN
		BUDGAM=OBJRS("QUANTITY")
		OBJRS("QUANTITY")=0
		COUNT=COUNT+BUDGAM
		END IF
	ELSEIF (OBJRS("DISTRICT")="Baramulla")  THEN
		IF(OBJRS("QUANTITY")<>0) THEN
		BARAMULLA=OBJRS("QUANTITY")
		OBJRS("QUANTITY")=0
		COUNT=COUNT+BARAMULLA
		END IF
	ELSEIF (OBJRS("DISTRICT")="Anatnag")  THEN
		IF(OBJRS("QUANTITY")<>0) THEN
		ANATNAG=OBJRS("QUANTITY")
		OBJRS("QUANTITY")=0
		COUNT=COUNT+ANATNAG
		END IF
	ELSEIF (OBJRS("DISTRICT")="Pulwama")  THEN
		IF(OBJRS("QUANTITY")<>0) THEN
		PULWAMA=OBJRS("QUANTITY")
		OBJRS("QUANTITY")=0
		COUNT=COUNT+PULWAMA
		END IF
	ELSEIF (OBJRS("DISTRICT")="Ganderbal")  THEN
		IF(OBJRS("QUANTITY")<>0) THEN
		GANDERBAL=OBJRS("QUANTITY")
		OBJRS("QUANTITY")=0
		COUNT=COUNT+GANDERBAL
		END IF
	ELSEIF (OBJRS("DISTRICT")="Kulgam")  THEN
		IF(OBJRS("QUANTITY")<>0) THEN
		KULGAM=OBJRS("QUANTITY")
		OBJRS("QUANTITY")=0
		COUNT=COUNT+KULGAM
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

SET OBJRS = server.createobject("adodb.recordset")
OBJRS.OPEN "DISTSTOCK",OBJCONN, ,adLockOptimistic,adCmdTable

DO WHILE NOT OBJRS.EOF

	IF (OBJRS("DISTRICT")="Srinagar") THEN
                
		OBJRS("STOCK")=OBJRS("STOCK")+SRINAGAR
			
	ELSEIF (OBJRS("DISTRICT")="Budgam")  THEN
		
		OBJRS("STOCK")=OBJRS("STOCK")+BUDGAM
		
		
	ELSEIF (OBJRS("DISTRICT")="Baramulla")  THEN
		
		OBJRS("STOCK")=OBJRS("STOCK")+BARAMULLA
		
	ELSEIF (OBJRS("DISTRICT")="Anatnag")  THEN
		
		OBJRS("STOCK")=OBJRS("STOCK")+ANATNAG
	
		
	ELSEIF (OBJRS("DISTRICT")="Pulwama")  THEN

		OBJRS("STOCK")=OBJRS("STOCK")+PULWAMA
	
		
	ELSEIF (OBJRS("DISTRICT")="Ganderbal")  THEN
		
		OBJRS("STOCK")=OBJRS("STOCK")+GANDERBAL
		
		
	ELSEIF (OBJRS("DISTRICT")="Kulgam")  THEN
		
		OBJRS("STOCK")=OBJRS("STOCK")+KULGAM
		
		
	ELSE

	END IF



OBJRS.UPDATE
OBJRS.MOVENEXT
LOOP

OBJRS.CLOSE
SET OBJRS=NOTHING


OBJCONN.CLOSE
SET OBJCONN=NOTHING


RESPONSE.WRITE "<A HREF='request.asp'>"
RESPONSE.WRITE "Dispatch Successful"
RESPONSE.WRITE "</A>"

%>
</h2>
<h2>&nbsp;</h2>
</div>
</body>
</html>


