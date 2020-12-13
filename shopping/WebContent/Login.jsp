<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="style/style.css" rel="stylesheet" type="text/css" />
<!--[if IE]>
<link href="style/style-ie.css" rel="stylesheet" type="text/css" />
<![endif]-->
<script type="text/javascript">
function validate()
{
	var name=document.f2.uid.value;
	
	var cpass=document.f2.pass.value;
	
	if(uname==null || uname=="")
		{
		alert("Please enter your user id");
		return false;
		}
	if(cpass != upass)
		{
		alert("Password does not match");
		return false;
		}
}
</script>
</head>
<body>
<form action="Login1.jsp" method="post" name="f2" onsubmit="return validate();">
<center>
  <div class="wrapper">
    <div class="logo"> Shop<strong>Online</strong></div>
    <div class="menu">
      <ul class="solidblockmenu">
        <li><a href="index.jsp">Home</a></li>
        <li><a href="Register.jsp">Registration</a></li>
        <li><a href="Login.jsp">Log In</a></li>
        <li><a href="Help.jsp">Help</a></li>
        <li><a href="FAQ.jsp">FAQ's</a></li>
        <li><a href="Evoucher.jsp">e-Gift Voucher</a></li>
      </ul>
      <div class="clear"></div>
    </div>
  </div>
  <div class="search">
    <div class="search-text"> Search the world of shopping!&nbsp;
      <input type="text" size="40" />
      &nbsp;&nbsp;</div>
    <div style="float:left; margin-left:5px; margin-top:10px;">
      <input type="image" src="images/search.jpg" />
    </div>
  </div>
  <div class="hot-search">
    <div class="hot-search-text"> Hot Searches: Apple iPod Nano, Hugo Boss Clothing, HD DVD Player, DSLR Camera, Toshiba 32&quot; LCD TV, Unsecured Loans, Excersise Machines..</div>
  </div>
   <div class="body-wrapper">
   <div class="body-middle">
   <div align="left"><h1 style="color: #2C76C3;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOGIN PAGE</h1></div>


	<table border="0" cellspacing="8" cellpadding="8" bgcolor="white" align="left">
	
	<tr>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Username</td>
			<td><input type="text" name="uname"></td>
		</tr>
			
		<tr>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password</td>
			<td><input type="password" name="upass"></td>
			
		</tr>
		<tr>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Login"></td>
			
			
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset"></td>
		</tr>
	</table></div>
	<div class="body-left">
      <div class="left-main-title"> Shopping Categories</div>
      <div class="left-topic-title" style="padding-top:30px;"><a href="electronics.jsp"> Electronics</a></div>
      <div class="left-topic-desc"> Laptop&#8217;s, TV, Mobiles,Tablets &amp; more..</div>
     <div class="left-topic-title" style="padding-top:20px;"><a href="jewellery.jsp"> Jewellery</a></div>
      <div class="left-topic-desc"> Necklace, Bangles, Earrings  &amp; more..</div>
      <div class="left-topic-title" style="padding-top:30px;"><a href="book.jsp"> Books </a></div>
      <div class="left-topic-desc"> Fiction, Non-Fiction, Education, Stationary &amp; more..</div>
      <div class="left-topic-title" style="padding-top:30px;"><a href="gaming.jsp"> Gaming</a></div>
      <div class="left-topic-desc"> Action, Racing, Sports &amp; more..</div>
      <div class="left-topic-title" style="padding-top:30px;"> <a href="Sports.jsp"> Sports &amp; Fitness</a></div>
      <div class="left-topic-desc"> Cricket, Football, Treadmill, Massager &amp; more..</div>
      <div class="left-topic-title" style="padding-top:30px;"><a href="Clothing.jsp"> Clothing</a></div>
      <div class="left-topic-desc"> Men, Women, Kids, &amp; more..</div>
      <div class="left-topic-title" style="padding-top:30px;"> <a href="Footwear.jsp">Footwear</a></div>
      <div class="left-topic-desc"> Casual, Formal, Sports &amp; more..</div>
      <div class="left-topic-title" style="padding-top:30px;"> <a href="Kitchen.jsp">Home &amp; Kitchen</a></div>
      <div class="left-topic-desc"> Dinner set, Home decor, &amp; more..</div>
    </div>     
     </div>
 <div class="separator-main"> &nbsp;</div>
 <div class="footer">
    <center><div class="footer-text" style="padding-top:10px;margin-left:20px;"> <a href="index.jsp" class="nav1">Home</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="Register.jsp" class="nav1">Registration</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="Login.jsp" class="nav1">Login</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="Help.jsp" class="nav1">Help</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="FAQ.jsp" class="nav1">FAQ's</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="Contact.jsp" class="nav1">Contact</a>&nbsp;&nbsp;<span style="color:#dbdbdb">|</span>&nbsp;&nbsp;<a href="Policy.jsp" class="nav1">Privacy Policy</a></div>
    <div class="footer-text" style="padding-top:20px;margin-left:20px;"> Copyright &copy; 2003-2008 <a href="index.jsp">www.ShopOnline.com.</a> All Rights Reserved.
    </div>
    </center>
  </div>
</center>
</form>

</body>
</html>

