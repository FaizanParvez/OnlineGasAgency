﻿<%@LANGUAGE=VBSCRIPT%>
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
<title>Request</title>
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
	left: 174px;
	top: 246px;
	width: 394px;
	height: 337px;
	z-index: 303;
	background-color: rgba(0,0,0,0);
	padding-left: 10px;
	border-radius: 0px 20px 0px 20px;
}
#apDiv6 {
	position: absolute;
	left: 940px;
	top: 232px;
	width: 160px;
	height: 41px;
	z-index: 304;
}
#apDiv7 {
	position: absolute;
	left: 754px;
	top: 252px;
	width: 371px;
	height: 340px;
	z-index: 304;
}
#apDiv8 {
	position: absolute;
	left: 281px;
	top: 188px;
	width: 209px;
	height: 34px;
	z-index: 305;
}
#apDiv9 {
	position: absolute;
	left: 835px;
	top: 198px;
	width: 244px;
	height: 38px;
	z-index: 306;
}
</style>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
</head>

<body text="#FFFFFF">
<div id="Nav">
  <ul id="MenuBar1" class="MenuBarHorizontal">
    <li><a href="Admin.asp">Home</a></li>
<li><a href="request.asp">Request</a></li>
    <li><a href="reports.asp">Reports</a></li>
    <li><a href="logout.asp">Logout</a></li>
  </ul>
</div>
<div id="log"><a href="../Home.asp"><img src="Images/logo.gif" width="387" height="197" alt="logo"></a></div>
<div id="footer"> 
  <h3>Copyrighted © All rights reserved</h3>
</div>
<div id="apDiv5">
<%
DIM OBJRS
set OBJRS = server.createobject("adodb.recordset")
OBJRS.OPEN "ADMINREQUEST",OBJCONN, ,adLockOptimistic,adCmdTable
%>

<form name="form1" method="post" action="Linkofrequest.asp">
  <table width="372" border=1 bordercolor="#000000">
    <tr>
      <td width="86">DISTRICT</td>
      <td width="110">REQUEST</td>
      <td width="154"><input type="submit" name="submit" id="submit" value="Dispatch" ></td>
    </tr>
    <%
DO WHILE NOT OBJRS.EOF 
IF(Objrs("request")=1) then 
%>
    <tr>
      <td><%=OBJRS("DISTRICTNAME")%></td>
      <td><%=OBJRS("DESCRIPTION")%></td>
    </tr>
    <% End If 
OBJRS.MOVENEXT
LOOP
%>
  </table>
  <%
OBJRS.CLOSE
SET OBJRS=NOTHING

%>


</form>


</div>

<div id="apDiv7">
<%
DIM OBJRS1
set OBJRS1 = server.createobject("adodb.recordset")
OBJRS1.OPEN "HARDREQUEST",OBJCONN, ,adLockOptimistic,adCmdTable
%>
  <form name="form2" method="post" action="Hard_Request.asp">
  <table width="372" border=1 bordercolor="#000000">
    <tr>
      <td width="86">DISTRICT</td>
      <td width="110">REQUEST</td>
      <td width="154"><input type="submit" name="submit" id="submit" value="Dispatch" ></td>
    </tr>
        <%
DO WHILE NOT OBJRS1.EOF 
IF(OBJRS1("request")=1) then 
%>
    <tr>
      <td><%=OBJRS1("DISTRICT")%></td>
      <td>Hard Request</td>
    </tr>
    <% End If 
OBJRS1.MOVENEXT
LOOP
OBJRS1.CLOSE
SET OBJRS1=NOTHING
%>
  </table>
  </form>
</div>
<div id="apDiv8">
  <h2>Automatic Request </h2>
</div>
<div id="apDiv9">
  <h2>Manual Request </h2>
</div>
<%
OBJCONN.CLOSE
SET OBJCONN=NOTHING
%>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>
</html>


