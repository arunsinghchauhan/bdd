<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Status</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
</head>
<body bgcolor=" #593E1A">
<div id="header"><img
	src="<%=request.getContextPath() %>/images/the-hotel-header.jpg" width="1300"
	height="200"></img>
<marquee   align="center"  behavior="alternate"
			style="COLOR: #FF5050; font-family:Verdana; font-weight:bold"  scrollDelay=100  width=1300
			bgColor=#FFFFFF height=16>Welcome To Hotel Royal
		</marquee>

<h3 align="center" ><font color="red" face="Arial Black">Login</font></h3>
	<p align="center" >
	<h3 align="center" ><font color="blue" face="Arial Black"><%=request.getAttribute("message")==null?"":request.getAttribute("message") %></font></h3>
	</p>


<form id="loginForm" action="Royalservelet" method="post">
	<table border="0" align="center">
		<tr>
			<td><b class="text1">User ID:</b></td>
			<td>
			<strong><b><input  type="text"  id="userId" name="userId" size="20" style="text1" /></b></strong></td>
		</tr>
		<tr>
			<td><b class="text1">Password:</b></td>
			<td>
			<input type="password" id="password" name="password" style="text1"/></td>

		</tr>

		<tr>
			<td><b class="text1">Start as:</b></td>
			<td>
			  <select name="accountType">
			 <!--   <option value="user">USER</option>-->
			  <option value="royalreception">RECEPTION</option>
			  <option value="royaladmin">ADMIN</option>
			  		  
			  </select>
			</td>
		</tr>

		<tr>
			<td colspan="2" align="right">&nbsp;<input type="submit"
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



<tr>
</tr>
</table></form>
</body>
</html>