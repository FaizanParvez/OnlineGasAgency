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
	left: 573px;
	top: 207px;
	width: 480px;
	height: 302px;
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
	left: 657px;
	top: 130px;
	width: 420px;
	height: 105px;
	z-index: 303;
}
#apDiv7 {
	position: absolute;
	left: 446px;
	top: 260px;
	width: 413px;
	height: 289px;
	z-index: 304;
	padding-right: 20px;
	padding-left: 20px;
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
body,td,th {
	color: rgba(255,255,255,1);
}
#apDiv9 {
	position: absolute;
	left: 975px;
	top: 412px;
	width: 354px;
	height: 141px;
	z-index: 305;
	background-color: rgba(0,0,0,.3);
	border-radius: 0px 17px 0px 17px;
	padding-right: 15px;
}
</style>
</head>

<body>
<div id="log"><a href="../Home.asp"><img src="Images/logo.gif" width="387" height="197" alt="logo"></a></div>
<div id="footer"> 
  <h3>Copyrighted © All rights reserved</h3>
</div>
<div id="apDiv6">
 <h1>Feedback
</h1>
</div>
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
</body>
</html>


