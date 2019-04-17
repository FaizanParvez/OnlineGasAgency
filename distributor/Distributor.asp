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
<title>Distributor</title>
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
<div id="Nav">
  <ul id="MenuBar1" class="MenuBarHorizontal">
    <li><a href="Distributor.asp">Home</a></li>
    <li><a href="Inventory.asp">Inventory</a></li>
    <li><a href="request.asp">Request</a></li>
    <li><a href="reports.asp">Reports</a></li>
<li><a href="logout.asp">Logout</a></li>
  </ul>
</div>
<div id="log"><a href="../Home.asp"><img src="Images/logo.gif" width="387" height="197" alt="logo"></a></div>
<div id="footer"> 
  <h3>Copyrighted © All rights reserved</h3>
</div>
<div id="apDiv6">
 <h1>Branch <%= session("un") %>
 </h1>
</div>
<div id="apDiv7">

<h3 align="justify">
  You can  check the  available stock  in the Inventory menu. 
  If  you want  to accept the requests of pending  deliveries  go  in  Request  menu and click on dispatch button. 
  You can  also see  the comments in   the Reports menu which were posted  by  consumers. </h3>
  
  <pre><h4> 

                  Have a great day ahead.</h4></pre>   



</div>
<div id="apDiv9">

  <h2><pre>   Send Feedback to the Admin</pre></h2>
  <p>              
           <h2><pre>                  <a href="feedback.asp">CLICK HERE</a></pre></h2>
  &nbsp;	 </p>
</div>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>
</html>


