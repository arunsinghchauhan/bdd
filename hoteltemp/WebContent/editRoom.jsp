<%@page import="com.model.RoomData"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Five Star Hotel | Booking</title>
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
  <div id="header">
    <div class="row-1">
      <div class="wrapper">
        <div class="logo">
          <h1><a href="#">Five Star</a></h1>
          <em>Hotel</em> <strong>True Luxury</strong> </div>
        <div class="phones"> 1-800-412-45-56<br />
          1-800-542-64-48 </div>
      </div>
    </div>
    <div class="row-2">
      <div class="indent">
        <!-- header-box begin -->
        <div class="header-box">
          <div class="inner">
            <ul class="nav">
              <li><a href="admin.jsp">Home page</a></li>
              <li><a href="services2.jsp">Services</a></li>
              <li><a href="gallery2.jsp">Gallery</a></li>
              <li><a href="restaurant2.jsp">Restaurant</a></li>
              <li><a href="testimonials2.jsp">Testimonials</a></li>
              <li><a href="booking2.jsp" class="current">Booking</a></li>
            </ul>
          </div>
        </div>
		

		<div class="center_content">
		
			<form	action="updateRoom.jsp"
										method="post">
		

						<table width="721" height="373" border="0">
							<tr>
								<th width="550" height="367" valign="top" scope="col"
									align="center">
								
								      <%
								      
								         RoomData roomData=(RoomData)request.getAttribute("roomData");
								       
								      %>
										<table width="546" border="1"
											style="border: 2px solid; border-radius: 10px;">
											<tr>
												<td align="left">Room No:</td>
												<td align="left"><input type="text" name="roomno" size="30"
													maxlength="120" readonly="readonly" value="<%=roomData.getRoomNo()%>"/></td>
											</tr>

											<tr>
												<td align="left">Room Type:</td>
												<td align="left">
													<select name="roomtype">
														<option>Premium</option>
														<option>business</option>
												     	<option>Economy</option>
														
														
													</select>
													
												</td>
												
											</tr>
												<tr>
												<td align="left">Bed Type:</td>
												<td align="left">
													<select name="bedtype">
														<option>Single</option>
														<option>Double</option>
														
													</select>
													
												</td>
											</tr>
			                                      <tr>
												<td align="left">Bill per day:</td>
												<td align="left">
													<select name="bill">
														<option>1500</option>
														<option>1000</option>
														<option>2500</option>
														<option>3000</option>
														<option>3500</option>
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
