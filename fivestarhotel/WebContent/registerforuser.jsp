<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Five Star Hotel | Booking</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<script src="js/maxheight.js" type="text/javascript"></script>
<!--[if lt IE 7]>
<link href="ie_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="ie_png.js"></script>
<script type="text/javascript">ie_png.fix('.png, #header .row-2, #header .nav li a, #content, .gallery li');</script>
<![endif]-->
</head>
<body id="page5" onload="new ElementMaxHeight();">
<div id="main">
  <!-- header -->
 <%@ include
								file="headerfive.jsp"%>
  <!-- content -->
  <div id="content">
    <div class="wrapper">
      <div class="aside maxheight">
        <!-- box begin -->
        <div class="box maxheight">
          <div class="inner">
            <h3>Welcome user:</h3>
            <form action="#" id="reservation-form">
              <fieldset>
                <th width="715" valign="top" scope="col">

						<table width="721" height="373" border="0">
							<tr>
								<th width="550" height="367" valign="top" scope="col"
									align="center">
								
										<table width="546" border="1"
											style="border: 2px solid; border-radius: 10px;">
											<tr>
												<td align="left">User Id:</td>
												<td align="left"><input type="text" name="userid" size="30"
													maxlength="120" /></td>
											</tr>
                                             <tr>
												<td align="left">Create Security Pin:</td>
												<td align="left"><input type="password" name="pin" size="30"
													maxlength="120" /></td>
											</tr>
                                             <tr>
												<td align="left">Confirm Security Pin:</td>
												<td align="left"><input type="password" name="pin1" size="30"
													maxlength="120" /></td>
											</tr>
                                             

											<tr>
												<td align="left">Image:</td>
												<td align="left"><input type="file" name="image" size="30"
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
												<td align="left"><textarea  rows="2" cols="30"
														name="address"></textarea></td>
											</tr>
											
											
										
										
											<tr>
												<td align="left">Pin:</td>
												<td align="left"><input type="text" name="pin"
													size="30" maxlength="120" /></td>
											</tr>
											
												

										</table>
										<p>
											<input type="submit" value="Submit"/><input
												type="reset" value="Reset" name="B2" />
										</p>
									
									
								</th>
								<th width="57" valign="top"  scope="col">&nbsp;<img
									src="${pageContext.request.contextPath}/images/5page-img1.png"
									width="150" height="233" /></th>
							</tr>
						</table>
					</th>
              </fieldset>
            </form>
          </div>
        </div>
        <!-- box end -->
      </div>
     
    </div>
  </div>
  <!-- footer -->
   <%@ include
								file="footerfive.jsp"%>
</div>
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>