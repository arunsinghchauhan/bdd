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
<script src="js/jquery.validate.min.js"></script>
<script>
$(document).ready(function() {
 $('#signup').validate({
   rules: {
     email: {
        required: true,
        email: true
     },
     libid: {
         required: true,
         rangelength:[6,8]
      },
     pin: {
        required: true,
        number:true,
        rangelength:[6,6]
     },
     phone:{
    	 required: true,
         number:true,
         rangelength:[10,10]
    	 
     }
   }, //end rules
   messages: {
      email: {
         required: "Please supply an e-mail address",
         email: "This is not a valid email address"
       },
       libid: {
           required: "Please supply a lib id",
           rangelength: "libid must be between 6  and 8 characters long"
         },
       pin: {
        required: 'Please provide your Pin',
        number: 'Please provide correct Pin',
        rangelength: 'Pin must be 6 characters long'
      },
      phone:{
    	  required: 'Please provide your phone number',
          number: 'Please provide a correct phone number',
          rangelength: 'Phone number must be 10 characters long'
     	 
      }      
   },
   errorPlacement: function(error, element) { 
       if ( element.is(":radio") || element.is(":checkbox")) {
          error.appendTo( element.parent()); 
        } else if(element.is("textarea")){
          error.insertBefore(element);	
        }  else {
          error.insertAfter(element);
        } 
    } 

  }); // end validate 
}); // end ready
</script>

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
							School Program </a><br /> Hello Mr. xxxx!
					</p>
				</div>
			</div>

			<div class="clear"></div>
		</div>

		<div class="center_content">
		
			<form id="signup"	action="processData.jsp"
										method="post"  enctype="multipart/form-data">
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
												<td align="left">Lib Id:</td>
												<td align="left"><input type="text" name="libid" id="libid" size="30"
													maxlength="120" /></td>
											</tr>

											<tr>
												<td align="left">Image:</td>
												<td align="left"><input type="file"  id="image"" name="image" size="30"
													maxlength="120" /></td>
											</tr>

											<tr>
												<td align="left">First Name:</td>
												<td align="left"><input type="text"  id="firstName" name="firstName"
													size="30" maxlength="120" /></td>
											</tr>
											<tr>
												<td align="left">Middle Name:</td>
												<td align="left"><input type="text" id="middleName" name="middleName"
													size="30" maxlength="120" /></td>
											</tr>
											<tr>
												<td align="left">Last Name:</td>
												<td align="left"><input type="text" id="lastName" name="lastName"
													size="30" maxlength="120" /></td>
											</tr>
											<tr>
												<td align="left">Dob:</td>
												<td align="left">
													<!--  <input type="text" name="dob" size="30" maxlength="120"/> -->
													<input type="text" id="datepicker" id="dob" name="dob" size="30"
													maxlength="120" />
												</td>
											</tr>
											<tr>
												<td align="left">Doa:</td>
												<td align="left"><input type="text" id="datepicker" id="doa" name="doa"
													size="30" maxlength="120" /></td>
											</tr>

											<tr>
												<td align="left">E Mail:</td>
												<td align="left"><input type="text" id="email" name="email"
													size="50" maxlength="120" /></td>
											</tr>
											<tr>
												<td align="left">Phone:</td>
												<td align="left"><input type="text" id="phone" name="phone"
													size="30" maxlength="120" /></td>
											</tr>
											<tr>
												<td align="left">Address</td>
												<td align="left"><textarea rows="2" cols="30"
														name="address" id="address"></textarea></td>
											</tr>
											<tr>
												<td align="left">Father Name:</td>
												<td align="left"><input type="text" name="fatherName" id="fatherName"
													size="30" maxlength="120" /></td>
											</tr>
										
										
											<tr>
												<td align="left">Pin:</td>
												<td align="left"><input type="text" name="pin" id="pin"
													size="30" maxlength="120" /></td>
											</tr>
											
												<tr>
												<td align="left">Branch:</td>
												<td align="left">
													<select name="branch" id="branch">
														<option>CS</option>
														<option>EC</option>
														<option>EE</option>
														<option>ME</option>
														<option>IT</option>
														<option>MCA</option>
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
</div>		
</body>
</html>
