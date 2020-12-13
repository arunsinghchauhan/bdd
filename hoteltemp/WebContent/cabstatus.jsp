<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
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
              <li><a href="user.jsp">Home page</a></li>
              <li><a href="services.jsp">Services</a></li>
              <li><a href="gallery.jsp">Gallery</a></li>
              <li><a href="restaurant.jsp">Restaurant</a></li>
              <li><a href="testimonials.jsp">Testimonials</a></li>
              <li><a href="booking.jsp" class="current">Booking</a></li>
            </ul>
          </div>
        </div>
        <!-- header-box end -->
        
         <form	action=""
										method="post">
        <table width="721" height="373" border="0">
							<tr>
								<th width="550" height="367" valign="top" scope="col"
									align="center">
									<br></br>
								<h>Available Cabs</h>  
										<table width="546" border="1"
											style="border: 2px solid; border-radius: 10px;">
											<tr bgcolor="#heshe">
											<br></br>
											    <td align="left">S No:</td>
												<td align="left">Cab Type</td>
												<td align="left">Bill Per Km</td>
											
												
											</tr>
											
		
				
											<%
											//String sno=request.getParameter("sno");
											 //loading the driver
											Class.forName("com.mysql.jdbc.Driver");
											//Connection points to the database
											Connection connection=DriverManager.
													getConnection("jdbc:mysql://localhost:3306/hoteldatabase","root","");
											//Creating statement to execute query
											String sql="select *  from totalcab_tbl INNER JOIN cabavailable_tbl ON totalcab_tbl.sno=cabavailable_tbl.sno and cabavailable_tbl.available='Yes'";
											PreparedStatement pstmt=connection.prepareStatement(sql);
											//executing the query to the database
									        ResultSet rs=pstmt.executeQuery();
									    	while(rs.next()){
									    		String sno=rs.getString(1);
											%>
											<tr>
											    
											    
												<td align="left"><%=sno %></td>
												<td align="left"><%=rs.getString(2) %></td>
												<td align="left"><%=rs.getString(3) %>&nbsp; &nbsp;    <a href="cabbooking.jsp?sno=<%=sno%>">Book Now</a></td>
												
												
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
       