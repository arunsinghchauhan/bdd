<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Corporate by Free CSS Templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="<%=request.getContextPath() %>/css/desibank.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath() %>/css/style.css"
	rel="stylesheet" type="text/css" />

</head>
<body>
<div id="header"><img
	src="<%=request.getContextPath() %>/images/header_bg.jpg" width="900"
	height="100"></img>
	<br><marquee   align="center"  behavior="alternate"
			style="COLOR: #FF5050; font-family:Verdana; font-weight:bold"  scrollDelay=100  width=700
			bgColor=#FFFFFF height=16>Welcome To Online
		Desi@Bank </marquee></font> 
	</div>
<div id="content">

<div id="right" style="width: 100%; height: 433">&nbsp;
<hr />


<h3 align="center" ><font color="red" face="Arial Black">Login</font></h3>
	<p align="center" >
	<h3 align="center" ><font color="blue" face="Arial Black"><%=request.getAttribute("message")==null?"":request.getAttribute("message") %></font></h3>
	</p>


<form id="loginForm" action="auth" method="post">
	<table border="0" align="center">
		<tr>
			<td><b class="text1">User ID:</b></td>
			<td>
			<strong><b><input  type="text"  id="userid" name="userid" size="20" style="text1" /></b></strong></td>
		</tr>
		<tr>
			<td><b class="text1">Password:</b></td>
			<td>
			<input type="password" id="password" name="password" style="text1"/></td>

		</tr>

		<tr>
			<td><b class="text1">Start in:</b></td>
			<td>
			  <select name="accoutType">
			  <option value="My Accounts">My Accounts</option>
			  <option value="Banks">Banks</option>
			  <option value="Credit Card">Credit Card</option>
			  <option value="Loan">Loan</option>
			  		  
			  </select>
			</td>
		</tr>

		<tr>
			<td colspan="2" align="right"><input type="submit"
				value="Login-in" id="sendData"/></td>
		</tr>
		
	</table>
</form>
</div>
</div>
<p id="result"></p>
<br></br>
<br></br>
<br></br>



<div id="footer">
<p>Copyright © 2006 Sitename.com. Designed by <a
	href="http://www.freecsstemplates.org" class="link1">Free CSS
Templates</a> | Downloaded from <a href="http://www.cssbank.com/"><strong>Free
CSS Resource Bank</strong></a></p>
</div>
</body>
</html>