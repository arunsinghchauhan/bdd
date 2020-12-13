

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>HIET Attendance System</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/style.css" />
<!--[if IE 6]><script type="text/javascript" src="unitpngfix.js"></script><![endif]-->
<style type="text/css">
<!--
.style1 {
	color: #0000FF;
	font-weight: bold;
}
-->
</style>

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
<div class="wrap">
		<%@ include file="header.jsp" %>

		<div class="tab_bg">
			<div class="ltabs"></div>
			<div class="tabs">
				<div class="tab" style="width: 276px;">
					<img src="${pageContext.request.contextPath}/images/icon1.png"
						alt="" border="0" class="tab_icon" />
					<p class="tab_text">
						<a href="http://all-free-download.com/free-website-templates/">Summer
							School Program </a><br /> Hello students !!!
					</p>
				</div>
			</div>

			<div class="clear"></div>
		</div>

		<div class="center_content">
		
			<form	action="hietData.jsp"
										method="post" enctype="multipart/form.data">
										
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
												<td align="left">1) Student Id (For HIET students only):</td>
												<td align="left"><input type="text" name="studentid" size="30"
													maxlength="120" /></td>
											</tr>
											

											<tr>
												<td align="left">2) Participant Name (In CAPITAL Letter):</td>
												<td align="left"><input type="text" name="participantName"
													size="30" maxlength="120" /></td>
											</tr>
											<tr>
												<td align="left">3) Father's Name:</td>
												<td align="left"><input type="text" name="fatherName"
													size="30" maxlength="120" /></td>
											</tr>
											<tr>
												<td align="left">4) Date of Birth:</td>
												<td align="left"><input type="text" name="dob"
													size="30" maxlength="120" /></td>
											</tr>
											<tr>
											<p>
												<td align="left">5) Course:</td>
												<td align="left">
													<select name="course">
														<option>B.TECH</option>
														<option>BCA</option>
														<option>BBA</option>
														<option>M.TECH</option>
														<option>MBA</option>
														<option>MCA</option>
													</select>
													
												</td>
											</tr>
											<tr>
												<td align="left">  Branch:</td>
												<td align="left">
													<select name="branch">
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
												<td align="left">  Year:</td>
												<td align="left">
													<select name="year">
														<option>1</option>
														<option>2</option>
														<option>3</option>
														<option>4</option>
														
													</select>
													
												</td>
												</p>
											</tr>
											<tr>
												<td align="left">6) Institute Name & Address:</td>
												<td align="left"><textarea rows="2" cols="30"
														name="institutename"></textarea></td>
											</tr>
											<tr>
												<td align="left">7) Address for communication:</td>
												<td align="left"><textarea rows="2" cols="30"
					
														name="address"></textarea></td>
											</tr>
											<tr>
												<td align="left">9) Contact:</td>
												<td align="left">(M)<input type="text" name="contact"
													size="15" maxlength="60" />(R)<input type="text" name="contact"
													size="15" maxlength="60" />
													</td>
													
										
													
											</tr>
											
											<tr>
												<td align="left">8) Email:</td>
												<td align="left"><input type="text" name="email"
													size="30" maxlength="120" /></td>
											</tr>
										
										
											
											
												<tr>
												<td align="left">10) Why you have joined this course?</td>
												<td align="left"><textarea rows="3" cols="30"
														name="join"></textarea></td>
											</tr>
<tr>
												<td align="left">11)Image</td>
												<td align="left"><input type="file" name="image" size="30"
													maxlength="120" /></td>
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
		</div>
</body>
</html>
