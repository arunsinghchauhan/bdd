<%@page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Check Time</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="layout.css" rel="stylesheet" type="text/css" />
<script src="maxheight.js" type="text/javascript"></script>
<!--[if lt IE 7]>
<link href="ie_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="ie_png.js"></script>
<script type="text/javascript">ie_png.fix('.png, #header .row-2, #header .nav li a, #content, .gallery li');</script>
<![endif]-->
</head>
<body id="page3" onload="new ElementMaxHeight();">
<div id="main">
  <!-- header -->
  <div id="header" class="small">
    <div class="row-1">
      <div class="wrapper">
        <div class="logo">
          <h1><a href="#">Five Star</a></h1>
          <em>Hotel</em> <strong>True Luxury</strong> </div>
        <div class="phones"> 1-800-412-45-56<br />
          1-800-542-64-48 </div>
      </div>
    </div>
    <div class="row-2 alt">
      <div class="indent">
        <!-- header-box-small begin -->
        <div class="header-box-small">
          <div class="inner">
            <ul class="nav">
              <li><a href="user.jsp">Home page</a></li>
              <li><a href="services.jsp">Services</a></li>
              <li><a href="gallery.jsp" class="current">Gallery</a></li>
              <li><a href="restaurant.jsp">Restaurant</a></li>
              <li><a href="testimonials.jsp">Testimonials</a></li>
              <li><a href="booking.jsp">Booking</a></li>
            </ul>
          </div>
        </div>
        <!-- header-box-small end -->

		<div class="tab_bg">
			<div class="ltabs"></div>
			<div class="tabs">
				
			</div>

			<div class="clear"></div>
		</div>

		<div class="center_content">
		
			<form	action=""
										method="post">
			<table width="895px" height="435" border="0">
				<tr>
					<th width="147" height="364" align="center" valign="top"
						bgcolor="#3399CC" scope="col">
						<div class="left_menu_tab"></div>

							
					</th>
					<th width="715" valign="top" scope="col">

						<table width="721" height="373" border="0">
							<tr>
								<th width="550" height="367" valign="top" scope="col"
									align="center">
								
										<table width="546" border="1"
											style="border: 2px solid; border-radius: 10px;">
											<tr bgcolor="#heshe">
											    
												
												<td align="left">Room No.</td>
												<td align="left">Room Type</td>
												<td align="left">Bed Type</td>
									          	<td align="left">Bill Per Day</td>
												
												
												
											</tr>
											
											<%
											 //loading the driver
											Class.forName("com.mysql.jdbc.Driver");
											//Connection points to the database
											Connection connection=DriverManager.
													getConnection("jdbc:mysql://localhost:3306/hoteldatabase","root","");
											//Creating statement to execute query
											String sql="select * from totalroom_tbl INNER JOIN reservation_tbl ON totalroom_tbl.roomno= reservation_tbl.roomno where reservation_tbl.checkout='0000-00-00'";
											PreparedStatement pstmt=connection.prepareStatement(sql);
											//executing the query to the database
									        ResultSet rs=pstmt.executeQuery();
									    	while(rs.next()){
											%>
											<tr>
											   
												<td align="left"><%=rs.getString(1) %></td>
												<td align="left"><%=rs.getString(2) %></td>
												<td align="left"><%=rs.getString(3) %></td>
												<td align="left"><%=rs.getString(4) %></td>
												
											</tr>
											<% }%>

										</table>
									
									
									
								</th>
								
							</tr>
						</table>
					</th>
				</tr>
			<tr>
					<td height="50" colspan="2"><span class="style1">
					</span>
					</td>
					</tr>
					</table>
					</form>
					
			</body>
</html>
				
