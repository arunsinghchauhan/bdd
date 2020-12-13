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
		
			<%
			String sno=request.getParameter("sno");
			int intSno=Integer.parseInt(sno);
			
			
			
			
			try{
				Class.forName("com.mysql.jdbc.Driver");
				//Connection points to the database
				Connection connection=DriverManager.
						getConnection("jdbc:mysql://localhost:3306/hoteldatabase","root","");
				//Creating statement to execute query
				PreparedStatement pstmt=connection.prepareStatement("update cabavailable_tbl set available='Yes' where sno="+sno);
		     //setting the values into the query
				
				//executing the query to the database
		        int p=pstmt.executeUpdate();
		        System.out.println("Data is updated sucessfully!");}
		        catch(Exception  exception){
					exception.printStackTrace();
		        } %>
<jsp:forward page="unlock.jsp"/>		</div>
</div>		
</body>
</html>
