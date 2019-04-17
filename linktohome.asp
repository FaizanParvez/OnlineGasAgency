<%@LANGUAGE=VBSCRIPT%>
<%OPTION EXPLICIT%>
<!--#INCLUDE FILE="OurDatabaseConnect.ASP"-->
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Contact</title>
<link rel="stylesheet" type"text/css" href="stylesheets/Homestyle.css"/>
<style type="text/css">
body {
	background-image: url(Images/Red-Wallpaper-Texture-49.jpg);
	background-attachment: fixed;
	background-size: cover;
}

</style>
<style type="text/css">
h3 {
	color: rgba(255,255,255,1);
}
#apDiv2 {
	position: absolute;
	left: 520px;
	top: 166px;
	width: 675px;
	height: 269px;
	z-index: 304;
}
a:visited {
	color: rgba(255,255,255,1);
}
#apDiv1 {
	position: absolute;
	left: 565px;
	top: 515px;
	width: 380px;
	height: 172px;
	z-index: 305;
	background-color: rgba(0,0,0,.4);
	padding-left: 10px;
}
#apDiv3 {
	position: absolute;
	left: 707px;
	top: 458px;
	width: 354px;
	height: 198px;
	z-index: 305;
	background-color: rgba(0,0,0,.4);
}
body,td,th {
	color: rgba(255,255,255,1);
}
#apDiv4 {
	position: absolute;
	left: 317px;
	top: 558px;
	width: 368px;
	height: 74px;
	z-index: 306;
}
#apDiv5 {
	position: absolute;
	left: 166px;
	top: 164px;
	width: 285px;
	height: 474px;
	z-index: 306;
}
#apDiv6 {
	position: absolute;
	left: 964px;
	top: 494px;
	width: 242px;
	height: 170px;
	z-index: 307;
}
#apDiv6 pre p em {
	font-family: Arial, Helvetica, sans-serif;
}
#acont2 {
	position: absolute;
	left: 589px;
	top: 211px;
	width: 589px;
	height: 461px;
	z-index: 304;
	background-color: rgba(0,0,0,.5);
	padding-left: 10px;
	border-radius: 0px 14px 0px 15px;
}
#acont1 {
	position: absolute;
	left: 154px;
	top: 257px;
	width: 322px;
	height: 114px;
	z-index: 303;
	font-family: "Courier New", Courier, monospace;
	background-color: rgba(0,0,0,.7);
	padding-left: 10px;
	border-radius: 0px 14px 0px 14px;
}
#contactus {
	position: absolute;
	left: 582px;
	top: 211px;
	width: 341px;
	height: 257px;
	z-index: 303;
	background-color: rgba(0,0,0,.5);
	padding-left: 8px;
	border-radius: 0px 14px 0px 14px;
}
#apDiv7 {
	position: absolute;
	left: 492px;
	top: 250px;
	width: 452px;
	height: 215px;
	z-index: 303;
}
</style>
</head>
<body background="login_img.gif">
<div id="log"><a href="Home.asp"><img src="Images/logo.gif" width="387" height="224" alt="logo"></a></div>
<div id="Footer">  
  <h3>Copyrighted © All rights reserved</h3>
</div>
<div id="apDiv7"><h2>
<%
DIM OBJRS,bola
IF((REQUEST.FORM("fname")="") OR (REQUEST.FORM("mname")="") _
OR (REQUEST.FORM("lname")="") OR (REQUEST.FORM("dob")="") _
OR (REQUEST.FORM("gender")="") OR (REQUEST.FORM("district")="") _ 
OR (REQUEST.FORM("connection")="") OR (REQUEST.FORM("email")="") _
OR (REQUEST.FORM("phone")="") OR (REQUEST.FORM("address")="") _
OR (REQUEST.FORM("uname")="") OR (REQUEST.FORM("password")="")) THEN
RESPONSE.WRITE "<A HREF='REGistration.asp'>"
RESPONSE.WRITE "YOU MUST ENTER VALUES FOR ALL THE FIELDS"
RESPONSE.WRITE "</A>"
ELSE
BOLA=FALSE
set OBJRS = server.createobject("adodb.recordset")
OBJRS.OPEN "registration",OBJCONN, ,adLockOptimistic,adCmdTable
DO WHILE NOT (OBJRS.EOF OR BOLA)
IF(STRCOMP(OBJRS("UNAME"),REQUEST.FORM("UNAME"),VBTEXTCOMPARE)=0) THEN
RESPONSE.WRITE "<A HREF='REGistration.asp'>"
RESPONSE.WRITE "USER NAME ALREADY EXISTS."
RESPONSE.WRITE"</A>"
BOLA=TRUE
END IF
IF (STRCOMP(OBJRS("EMAIL"),REQUEST.FORM("EMAIL"),VBTEXTCOMPARE)=0) THEN
RESPONSE.WRITE "<A HREF='REGistration.asp'>"
RESPONSE.WRITE "EMAIL ALREADY EXISTS."
RESPONSE.WRITE"</A>"
BOLA=TRUE
END IF
IF (STRCOMP(OBJRS("electionid"),REQUEST.FORM("electionid"),VBTEXTCOMPARE)=0 ) THEN
RESPONSE.WRITE "<A HREF='REGistration.asp'>"
RESPONSE.WRITE "YOU'RE ALREADY REGISTERED BASED ON YOUR ELECTION ID NUMBER."
RESPONSE.WRITE"</A>"
BOLA=TRUE
END IF
OBJRS.MOVENEXT
LOOP
IF NOT BOLA THEN
OBJRS.ADDNEW
OBJRS("FNAME")=REQUEST.FORM("FNAME")
OBJRS("MNAME")=REQUEST.FORM("MNAME")
OBJRS("LNAME")=REQUEST.FORM("LNAME")
OBJRS("DOB")=REQUEST.FORM("DOB")
OBJRS("GENDER")=REQUEST.FORM("GENDER")
OBJRS("DISTRICT")=REQUEST.FORM("DISTRICT")
OBJRS("CONNECTION")=REQUEST.FORM("CONNECTION")
OBJRS("EMAIL")=REQUEST.FORM("EMAIL")
OBJRS("ADDRESS")=REQUEST.FORM("ADDRESS")
OBJRS("PHONE")=REQUEST.FORM("PHONE")
OBJRS("UNAME")=REQUEST.FORM("UNAME")
OBJRS("PASSWORD")=REQUEST.FORM("PASSWORD")
OBJRS("ELECTIONID")=REQUEST.FORM("electionid")
OBJRS.UPDATE
RESPONSE.WRITE "<A HREF='home.asp'>"
RESPONSE.WRITE "You've been registered"
RESPONSE.WRITE"</A>"
END IF
OBJRS.CLOSE
SET OBJRS=NOTHING
END IF

OBJCONN.CLOSE
SET OBJCONN=NOTHING
%></h2></div>
</body>
</html>
