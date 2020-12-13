<%@page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Five Star Hotel | Booking</title>
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
              <li><a href="reception.jsp">Home page</a></li>
              <li><a href="services1.jsp">Services</a></li>
              <li><a href="gallery1.jsp">Gallery</a></li>
              <li><a href="restaurant1.jsp">Restaurant</a></li>
              <li><a href="testimonials1.jsp">Testimonials</a></li>
              <li><a href="booking1.jsp" class="current">Booking</a></li>
            </ul>
          </div>
        </div>
        <!-- header-box end -->
        
        <form action="" method="post">
						<table width="721" height="373" border="0">
							<tr>
								<th width="550" height="367" valign="top" scope="col"
									align="center">

									<table width="546" border="1"
										style="border: 2px solid; border-radius: 10px;">
										<tr bgcolor="#heshe">
											<td align="left">Room No:</td>
											<td align="left">Room Type</td>
											<td align="left">Bed Type</td>
											<td align="left">Bill Per Day</td>


										</tr>

										<%
											
											String checkin=request.getParameter("checkin");
											String checkinTokens[]=checkin.split("-");
											checkin=checkinTokens[2]+"-"+checkinTokens[1]+"-"+checkinTokens[0];
											String checkout=request.getParameter("checkout");
											String checkoutTokens[]=checkout.split("-");
										    checkout=checkoutTokens[2]+"-"+checkoutTokens[1]+"-"+checkoutTokens[0];
											System.out.println("checkin = "+checkin);
											System.out.println("checkout = "+checkout);
											
											String checkAvailability="select *  from totalroom_tbl where roomno not in (select roomno from  bookroominfo_tbl where checkintime>='"+checkin+"' and checkouttime<='"+checkout+"')";
											System.out.println("checkAvailability = "+checkAvailability);
											
											//loading the driver
											Class.forName("com.mysql.jdbc.Driver");
											//Connection points to the database
											Connection connection=DriverManager.
													getConnection("jdbc:mysql://localhost:3306/hoteldatabase","root","");
											//Creating statement to execute query
											//String sql="select *  from totalroom_tbl INNER JOIN bookroominfo_tbl ON totalroom_tbl.roomno=bookroominfo_tbl.roomno and bookroominfo_tbl.checkin>="+DateUtils.getFromDateDateInSQLFormat(checkin)+" and bookroominfo_tbl.checkout<"+DateUtils.getFromDateDateInSQLFormat(checkout);
											PreparedStatement pstmt=connection.prepareStatement(checkAvailability);
											//executing the query to the database
									        ResultSet rs=pstmt.executeQuery();
									    	while(rs.next()){
									    		String roomno=rs.getString(1);
											%>
										<tr>


											<td align="left"><%=roomno %></td>
											<td align="left"><%=rs.getString(2) %></td>
											<td align="left"><%=rs.getString(3) %></td>
											<td align="left"><%=rs.getString(4) %> &nbsp; &nbsp; <a
												href="rcustomerinfo.jsp?roomno=<%=roomno%>&checkin=<%=checkin%>&checkout=<%=checkout%>">Book
													Now</a></td>

										</tr>
										<% }%>

									</table>



								</th>
							</tr>
						</table>




					</form>
				</div>
</body>
</html>
 