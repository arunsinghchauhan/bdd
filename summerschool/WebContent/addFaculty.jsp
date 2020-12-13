<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>HIET Attendance System</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/style.css" />
<!--[if IE 6]><script type="text/javascript" src="unitpngfix.js"></script><![endif]-->
<style type="text/css">


<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>
<style type="text/css">
<!--
.style8 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 12px;
}

.style9 {
	font-family: Arial, Helvetica, sans-serif
}

body,td,th {
	color: #000000;
}

.style12 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
}

.style13 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
	font-weight: bold;
	color: #FFFFFF;
}
-->
</style>
</head>
<body>
		<%@ include file="header.jsp" %>

		<div class="tab_bg">
			<div class="ltabs"></div>
			<div class="tabs">
				<div class="tab" style="width: 276px;">
					<img src="${pageContext.request.contextPath}/images/icon1.png"
						alt="" border="0" class="tab_icon" />
					<p class="tab_text">
						<a href="http://all-free-download.com/free-website-templates/">Summer
							School Program </a><br /> Hello Mr. xxxx!
					</p>
				</div>
			</div>

			<div class="clear"></div>
		</div>

		<div class="center_content">
		
			<form	action="processFacultyData.jsp"
										method="post">
			<table width="895px" height="435" border="0">
				<tr>
					<th width="147" height="364" align="center" valign="top"
						bgcolor="#3399CC" scope="col">
						<div class="left_menu_tab">

							<p class="tab_text">
								<a href="http://all-free-download.com/free-website-templates/">Profile</a><br />
								<br /> <a
									href="http://all-free-download.com/free-website-templates/">Result</a>
								<br /> <br />
						</div>
					</th>
					<th width="715" valign="top" scope="col">

						<table width="721" height="373" border="0">
							<tr>
								<th width="550" height="367" valign="top" scope="col"
									align="center">
								
										<table width="546" border="1"
											style="border: 2px solid; border-radius: 10px;">
											<tr>
												<td align="left">Faculty Id:</td>
												<td align="left"><input type="text" name="facultyId" size="30"
													maxlength="120" /></td>
											</tr>

											<tr>
												<td align="left">First Name:</td>
												<td align="left"><input type="text" name="firstName"
													size="30" maxlength="120" /></td>
											</tr>
											<tr>
												<td align="left">Middle Name:</td>
												<td align="left"><input type="text" name="middleName"
													size="30" maxlength="120" /></td>
											</tr>
											<tr>
												<td align="left">Last Name:</td>
												<td align="left"><input type="text" name="lastName"
													size="30" maxlength="120" /></td>
											</tr>
											<tr>
												<td align="left">Dob:</td>
												<td align="left">
													<!--  <input type="text" name="dob" size="30" maxlength="120"/> -->
													<input type="text" id="datepicker" name="dob" size="30"
													maxlength="120" />
												</td>
											</tr>
											<tr>
												<td align="left">Doj:</td>
												<td align="left"><input type="text" name="doj"
													size="30" maxlength="120" /></td>
											</tr>

											<tr>
												<td align="left">E Mail:</td>
												<td align="left"><input type="text" name="email"
													size="50" maxlength="120" /></td>
											</tr>
											<tr>
												<td align="left">Phone:</td>
												<td align="left"><input type="text" name="phone"
													size="30" maxlength="120" /></td>
											</tr>
											<tr>
												<td align="left">Address</td>
												<td align="left"><textarea rows="2" cols="30"
														name="address"></textarea></td>
											</tr>
											<tr>
												<td align="left">Designation:</td>
												<td align="left"><input type="text" name="designation"
													size="30" maxlength="120" /></td>
											</tr>
										
										
											<tr>
												<td align="left">Pin:</td>
												<td align="left"><input type="text" name="pin"
													size="30" maxlength="120" /></td>
											</tr>
											
												<tr>
												<td align="left">Department:</td>
												<td align="left">
													<select name="department">
														<option>CS</option>
														<option>EC</option>
														<option>EE</option>
														<option>ME</option>
														<option>IT</option>
														<option>MCA</option>
													</select>
													
												</td>
											</tr>
											
												<tr>
												<td align="left">Highest Degree:</td>
												<td align="left">
													<select name="hdegree">
														<option>B.Tech</option>
														<option>M.Tech</option>
														<option>MS</option>
														<option>PhD</option>
														<option>BE</option>
														<option>MCA</option>
													</select>
												</td>
											</tr>
											
												<tr>
												<td align="left">Experience:</td>
												<td align="left">
													<select name="experience">
														<option>1 Year</option>
														<option>2 Years</option>
														<option>3 Years</option>
														<option>4 Years</option>
														<option>5 Years</option>
														<option>6 Years</option>
														<option>7 Years</option>
														<option>8 Years</option>
													</select>
												</td>
											</tr>

										</table>
										<p>
											<input type="submit" value="Submit"/><input
												type="reset" value="Reset" name="B2" />
										</p>
									
									
								</th>
								<th width="137" valign="top" bgcolor="#FFFFFF" scope="col">&nbsp;<img
									src="${pageContext.request.contextPath}/images/attendance.png"
									width="150" height="233" /></th>
							</tr>
						</table>
					</th>
				</tr>
				<tr>
					<td height="50" colspan="2"><span class="style1">
					<%@ include
								file="footer.jsp"%></span></td>
				</tr>
			</table>
</form>
		</div>
</body>
</html>
