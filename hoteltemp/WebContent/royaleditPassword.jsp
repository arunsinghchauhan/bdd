<%@page import="com.model.RoyalPasswordData"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title> Royal Hotel | Booking</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="layout.css" rel="stylesheet" type="text/css" />
<script src="maxheight.js" type="text/javascript"></script>
<script type="text/javascript" src="calander.js"></script>

<!--[if lt IE 7]>
<link href="ie_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="ie_png.js"></script>
<script type="text/javascript">ie_png.fix('.png, #header .row-2, #header .nav li a, #content, .gallery li');</script>
<![endif]-->
</head>
<body id="page5" onload="new ElementMaxHeight();">
<div id="main">
  <!-- header -->
  
		<div class="center_content">
		
			<form	action="royalupdatePassword.jsp"
										method="post">
		

						<table width="721" height="373" border="0">
							<tr>
								<th width="550" height="367" valign="top" scope="col"
									align="center">
								
								      <%
								      
								         RoyalPasswordData passwordData=(RoyalPasswordData)request.getAttribute("passData");
								       
								      %>
										<table width="546" border="1"
											style="border: 2px solid; border-radius: 10px;">
											<tr>
												<td align="left">User Id:</td>
												<td align="left"><input type="text" name="userId" size="30"
													maxlength="120"  value="<%=passwordData.getUserId()%>"/></td>
											</tr>

											<tr>
												<td align="left">Password:</td>
												<td align="left"><input type="text" name="password"
													size="30" maxlength="120" readonly="readonly" value="<%=passwordData.getPassword()%>"/></td>
											</tr>
												<tr>
												<td align="left">AccountType:</td>
												<td align="left">
													<select name="accountType">
														<option>Reception</option>
														<option>Admin</option>
														
													</select>
													
												</td>
											</tr>
			

										</table>
										<p>
											<input type="submit" value="update"/><input
												type="reset" value="Reset" name="B2" />
										</p>
									
									
								</th>
								
</form>
		</div>
</body>
</html>
