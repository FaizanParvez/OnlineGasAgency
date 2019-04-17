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
<title>Home</title>
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
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css">
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
</style>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
</head>

<body>
<div id="log"><a href="../Home.asp"><img src="Images/logo.gif" width="387" height="197" alt="logo"></a></div>
<div id="footer"> 
  <h3>Copyrighted © All rights reserved</h3>
</div>
<div id="Nav">
  <ul id="MenuBar1" class="MenuBarHorizontal">
    <li><a href="Consumer.asp">Home</a></li>
    <li><a href="Profile.asp">Profile</a></li>
<li><a href="GasBooking.asp">Gas Booking</a></li>
    <li><a href="Feedback.asp">Feedback</a></li>
    <li><a href="logout.asp">Logout</a></li>
  </ul>
</div>
<div id="apDiv6">
<h2>  
<%
DIM OBJRS
SET OBJRS = server.createobject("adodb.recordset")
OBJRS.OPEN "REGISTRATION",OBJCONN, ,adLockOptimistic,adCmdTable
DO WHILE NOT OBJRS.EOF
	IF(STRCOMP(OBJRS("uname"),SESSION("un"),VBTEXTCOMPARE)=0) THEN %>
	
	<h2> <pre>      Welcome Mr/Mrs  <%=OBJRS("FNAME") %>    </pre></h2>
	<%   
	
	END IF
OBJRS.MOVENEXT
LOOP
OBJRS.CLOSE
SET OBJRS=NOTHING

OBJCONN.CLOSE
SET OBJCONN=NOTHING
%>
</h2>

 <pre>
<h3>
You can update your profile in the Profile menu.</h3><h3>If you want to book a gas please go in the Book Gas menu.

You can also send your comments in the Feedack menu <br>
or any improvement you want to see in this agency to help <br>
us provide you better service we will appreciate that.</h3></pre>
  <pre><h4> 

                                   Have a great day ahead.<h4></pre>   
</div>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>
</html>
