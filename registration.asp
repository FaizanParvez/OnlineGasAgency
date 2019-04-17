<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>registration</title>
<link rel="stylesheet" "type=text/css" href="stylesheets/Contactstyle.css"/>
<style type="text/css">
body {
	background-image: url(Images/Red-Wallpaper-Texture-49.jpg);
	background-attachment: fixed;
	background-size: cover;
}
</style>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css">
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
	left: 545px;
	top: 196px;
	width: 651px;
	height: 488px;
	z-index: 303;
	background-color: rgba(0,0,0,.4);
	color: rgba(255,255,255,1);
	padding-left: 20px;
	border-radius: 0px 20px 0px 20px;
	padding-top: 10px;
}
</style>
<style type="text/css">
#apDiv2 {
	position: absolute;
	left: 711px;
	top: 142px;
	width: 425px;
	height: 52px;
	z-index: 304;
	font-family: "Courier New", Courier, monospace;
}
h2 {
	color: rgba(255,255,255,1);
}
</style>
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css">
<link href="SpryAssets/SpryValidationSelect.css" rel="stylesheet" type="text/css">
<link href="SpryAssets/SpryValidationTextarea.css" rel="stylesheet" type="text/css">
<link href="SpryAssets/SpryValidationPassword.css" rel="stylesheet" type="text/css">
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationSelect.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationTextarea.js" type="text/javascript"></script>
<script src="SpryAssets/SpryValidationPassword.js" type="text/javascript"></script>
</head>

<body>
<div id="Nav">
  <ul id="MenuBar1" class="MenuBarHorizontal">
    <li><a href="Home.asp">Home</a></li>
    <li><a href="About.asp">About Us</a></li>
    <li><a href="Contact.asp">Contact Us</a>    </li>
    <li><a href="registration.asp">Registration</a></li>
  </ul>
</div>
<div id="log">
  <div id="log2"><a href="Home.asp"><img src="Images/logo.gif" width="387" height="224" alt="logo"></a></div>
<a href="Home.asp"></a></div>
<div id="footer"> 
  <h3>Copyrighted © All rights reserved</h3>
</div>
<div id="apDiv1">
  <form name="form1" method="post" action="linktohome.asp">
    <table width="631" height="470" border="0">
      <tr>
        <td width="148"><label for="fname">First Name :</label></td>
        <td width="156"><span id="sprytextfield1">
          <input type="text" name="fname" id="fname">
        <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        <td width="99"></td>
        <td width="210"></td>
      </tr>
      <tr>
        <td><label for="mname">Middle Name :</label></td>
        <td><span id="sprytextfield2">
          <input type="text" name="mname" id="mname">
        <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        <td></td>
        <td></td>
      </tr>   
      <tr>
        <td><label for="lname">Last Name :</label></td>
        <td><span id="sprytextfield3">
          <input type="text" name="lname" id="lname">
        <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        <td><label for="electionid"> Election 
        ID Number: </label></td>
        <td><span id="sprytextfield8">
          <input type="text" name="electionid" id="electionid">
       <pre>
<span class="textfieldRequiredMsg">A value is required.</span></pre></span></td>
      </tr>
      <tr>
        <td><label for="dob">DOB :</label></td>
        <td><span id="sprytextfield4">
        <input type="text" name="dob" id="dob">
        <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></td>
        <td><label>Format : </label></td>
        <td><label>dd/mm/yyyy</label></td>
      </tr>
      <tr>
        <td><label for="gender">Gender</label></td>
        <td><span id="spryselect1">
          <select name="gender" id="gender">
            <option selected>Select</option>
            <option>Male</option>
            <option>Female</option>
          </select>
</span>
        <td><label for="district">District</label></td>
        <td><span id="spryselect2">
          <select name="district" id="district">
            <option selected>Select</option>
            <option>Srinagar</option>
            <option>Budgam</option>
            <option>Baramulla</option>
            <option>Anatnag</option>
            <option>Pulwama</option>
            <option>Ganderbal</option>
            <option>Kulgam</option>
          </select>
</span></td>
      </tr>
      <tr>
        <td><label for="connection">Connection Type</label></td>
        <td><span id="spryselect3">
          <select name="connection" id="connection">
            <option selected>Select</option>
            <option>Commercial</option>
            <option>Domestic</option>
          </select>
</span></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td><label for="email">Email Address </label></td>
        <td><span id="sprytextfield5">
        <input type="text" name="email" id="email">
        <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></td>
        <td><label for="address">Address</label></td>
        <td><span id="sprytextarea1">
          <textarea name="address" cols="30" rows="3" id="address"></textarea>
        <span class="textareaRequiredMsg">A value is required.</span></span></td>
      </tr>
      <tr>
        <td><label for="phone">Phone Number</label></td>
        <td><span id="sprytextfield6">
        <input type="text" name="phone" id="phone">
        <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><label for="uname">User Name</label></td>
        <td><span id="sprytextfield7">
          <input type="text" name="uname" id="uname">
        <span class="textfieldRequiredMsg">A value is required.</span></span></td>
        <td><span id="sprypassword1">
          <label for="password">Password</label>
          <span class="passwordRequiredMsg">A value is required.</span></span></td>
        <td><input type="password" name="password" id="password"></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><input type="submit" name="Submit" id="Submit" value="Submit"></td>
        <td><input type="reset" name="Reset" id="Reset" value="Reset"></td>
      </tr>
    </table>
   
  </form>
</div>
<div id="apDiv2">
  <h2><pre>  <em>Consumer Registration Form </em></pre></h2>
</div>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1", "none", {validateOn:["blur"]});
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2", "none", {validateOn:["blur"]});
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3", "none", {validateOn:["blur"]});
var sprytextfield4 = new Spry.Widget.ValidationTextField("sprytextfield4", "date", {validateOn:["blur"], format:"dd/mm/yyyy"});
var spryselect1 = new Spry.Widget.ValidationSelect("spryselect1", {isRequired:false});
var spryselect2 = new Spry.Widget.ValidationSelect("spryselect2", {isRequired:false});
var spryselect3 = new Spry.Widget.ValidationSelect("spryselect3", {isRequired:false});
var sprytextfield5 = new Spry.Widget.ValidationTextField("sprytextfield5", "email", {validateOn:["blur"]});
var sprytextarea1 = new Spry.Widget.ValidationTextarea("sprytextarea1", {validateOn:["blur"]});
var sprytextfield6 = new Spry.Widget.ValidationTextField("sprytextfield6", "phone_number", {validateOn:["blur"], format:"phone_custom"});
var sprytextfield7 = new Spry.Widget.ValidationTextField("sprytextfield7", "none", {validateOn:["blur"]});
var sprypassword1 = new Spry.Widget.ValidationPassword("sprypassword1");
var sprytextfield8 = new Spry.Widget.ValidationTextField("sprytextfield8");
</script>
</body>
</html>
