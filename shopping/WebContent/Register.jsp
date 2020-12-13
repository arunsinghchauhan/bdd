<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="style/style.css" rel="stylesheet" type="text/css" />
<!--[if IE]>
<link href="style/style-ie.css" rel="stylesheet" type="text/css" />
<![endif]-->
<script type="text/javascript">
	
function validate()
{
	var name=document.f1.fname.value;
	
	var pass=document.f1.upass.value;
	var cpass=document.f1.cpass.value;
	
	if(name==null || name=="")
		{
		alert("Please enter your first name");
		return false;
		}
	if(cpass != pass)
		{
		alert("Password does not matching");
		return false;
		}
}
	
	
</script>
</head>
<body>
<form action="Register1.jsp" method="get" name="f1" onsubmit="return validate();">
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
  <center><h1 align="left" style="color: #2C76C3;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;REGISTRATION FORM</h1></center>

<%

String msg1=(String)request.getAttribute("error");
if(msg1!=null){
	
	%>
	<font color="red"><%=msg1 %></font>
	<%
}
%>

	<table border="0" cellspacing="2" cellpadding="7" bgcolor="white" align="center">
		<tr>
			<td>First Name</td>
			<td><input type="text" name="fname"></td>
			<td>Last Name</td>
			<td><input type="text" name="lname"></td>
		</tr>
		
		<tr>
			<td>Username</td>
			<td><input type="text" name="uname"></td><% %>
			<td>Email</td>
			<td><input type="text" name="email"></td>
		</tr>
		
		<tr>
			<td>Password</td>
			<td><input type="password" name="upass"></td>
			<td>Confirm Password</td>
			<td><input type="password" name="cpass"></td>
		</tr>
		
		<tr>
			<td>Date of Birth</td>
			<td><input type="text" name="dob" value="mm/dd/yyyy"></td>
			<td>Age</td>
			<td><input type="text" name="age"></td>
		</tr>
		
		<tr>
			<td>Permanent Address</td>
			<td><textarea rows="4" cols="17" name="addr"></textarea></td>
			<td>Correspondence Address</td>
			<td><textarea rows="4" cols="17" name="caddr"></textarea></td>
		</tr>
		
		<tr>
			<td>Gender</td>
			<td><input type="radio" name="gen" value="Male">Male
			<input type="radio" name="gen" value="Female">Female
			</td>
			<td>Contact No</td><td><input type="text" name="cont"></td>
		</tr>
		
		<tr>
			<td>Country</td>
			<td>
				<select name="con">
<option value="">Country...</option>
<option>Australia</option>
<option>Bahrain</option>
<option>Bangladesh</option>
<option>Belgium</option>
<option>Canada</option>
<option>Doha</option>
<option>Dubai</option>
<option>France</option>
<option>Germany</option>
<option>Hong Kong</option>
<option selected>India</option>
<option>Indonesia</option>
<option>Ireland</option>
<option>Italy</option>
<option>Japan</option>
<option>Kenya</option>
<option>Kuwait</option>
<option>Lebanon</option>
<option>Libya</option>
<option>Malaysia</option>
<option>Maldives</option>
<option>Mauritius</option>
<option>Mexico</option>
<option>Nepal</option>
<option>Netherlands</option>
<option>New Zealand</option>
<option>Norway</option>
<option>Oman</option>
<option>Pakistan</option>
<option>Qatar</option>
<option>Quilon</option>
<option>Russia</option>
<option>Saudi Arabia</option>
<option>Singapore</option>
<option>South Africa</option>
<option>South Korea</option>
<option>Spain</option>
<option>Sri Lanka</option>
<option>Sweden</option>
<option>Switzerland</option>
<option>Thailand</option>
<option>UAE</option>
<option>UK</option>
<option>US</option>
<option>Yemen</option>
<option>Zimbabwe</option>
<option>Other</option>
</select>
			
			</td>
			<td>State</td>
			<td>
				<select name="state">
					<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Orissa">Orissa</option>
<option value="Pondicherry">Pondicherry</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Tripura">Tripura</option>
<option value="Uttaranchal">Uttaranchal</option>
<option value="Uttar Pradesh"SELECTED>Uttar Pradesh</option>
<option value="West Bengal">West Bengal</option>
				
				</select>
			</td>
		</tr>
		
		<tr>
			<td><input type="submit" value="Register"></td>
			<td></td>
			<td></td>
			<td><input type="reset" value="Reset"></td>
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