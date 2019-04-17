<%

if session("un")="" then
response.redirect("login.asp")
end if
%>
<html>
<head>
<meta charset="utf-8">
<title>Profile</title>
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
#apDiv6 {
	position: absolute;
	left: 558px;
	top: 243px;
	width: 527px;
	height: 469px;
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
	left: 729px;
	top: 181px;
	width: 541px;
	height: 16px;
	z-index: 305;
}
</style>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css">
<style type="text/css">
body,td,th {
	color: rgba(255,255,255,1);
}
</style>
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css">
<link href="SpryAssets/SpryValidationPassword.css" rel="stylesheet" type="text/css">
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationPassword.js" type="text/javascript"></script>
</head>

<body>
<div id="Nav">
  <ul id="MenuBar1" class="MenuBarHorizontal">
    <li><a href="Consumer.asp">Home</a></li>
    <li><a href="Profile.asp">Profile</a></li>
<li><a href="GasBooking.asp">Gas Booking</a></li>
    <li><a href="Feedback.asp">Feedback</a></li>
    <li><a href="logout.asp">Logout</a></li>
  </ul>
</div>
<div id="log"><a href="../Home.asp"><img src="Images/logo.gif" width="387" height="197" alt="logo"></a></div>
<div id="footer"> 
  <h3>Copyrighted © All rights reserved</h3>
</div>
<div id="apDiv6">
  <form name="form1" method="post" action="linkofprofile.asp">
    <table width="492" height="266" border="0">
      <tr>
        <td width="173"><label for="email">Email Address</label></td>
        <td width="287"><span id="sprytextfield1">
        <input type="text" name="email" id="email">
        <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></td>
        
      </tr>
      <tr>
        <td><label for="phone">PhoneNumber</label></td>
        <td><input type="text" name="phone" id="phone"></td>
        
      </tr>
      <tr>
        <td><label for="address">Address</label></td>
        <td><textarea name="address" cols="45" rows="8" id="address"></textarea></td>
       
      </tr>
      <tr>
        <td height="64"><label for="district">District</label></td>
        <td><select name="district" id="district">
          <option selected>Select</option>
          <option>Srinagar</option>
          <option>Budgam</option>
          <option>Pulwama</option>
          <option>Ganderbal</option>
          <option>Anatnag</option>
          <option>Kulgam</option>
          <option>Baramulla</option>
        </select></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="64">Change Password</td>
        <td><span id="sprypassword1">
          <label for="current">Current Password  </label>
        <span class="passwordRequiredMsg">A value is required.</span></span>
          <input type="password" name="current" id="current"></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="64">&nbsp;</td>
        <td><span id="sprypassword2">
          <label for="new">New Password</label>
          <input type="password" name="new" id="new">
        <span class="passwordRequiredMsg">A value is required.</span></span></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="64">&nbsp;</td>
        <td><input type="submit" name="update" id="update" value="Update">
        <input type="reset" name="Reset" id="Reset" value="Reset"></td>
        <td>&nbsp;</td>
      </tr>
    </table>
  </form>
</div>
<div id="apDiv7">
  <label><h2>Update My Profile</h2>
  </label>
</div>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1", "email");
var sprypassword1 = new Spry.Widget.ValidationPassword("sprypassword1");
var sprypassword2 = new Spry.Widget.ValidationPassword("sprypassword2");
</script>
</body>
</html>
