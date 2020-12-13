<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Five Star Hotel</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="layout.css" rel="stylesheet" type="text/css" />
<script src="maxheight.js" type="text/javascript"></script>

<script type="text/javascript" src="calander.js"></script>
<script type="text/javascript">
 function checkAvailibility(){
	 //alert("invoked!!!");
	 document.forms[0].submit();
 }

</script>

<!--[if lt IE 7]>
<link href="ie_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="ie_png.js"></script>
<script type="text/javascript">ie_png.fix('.png, #header .row-2, #header .nav li a, #content, .gallery li');</script>
<![endif]-->
</head>
<body id="page1" onload="new ElementMaxHeight();">
<div id="main">
<dl>    <div class="button"><span><span>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<a href="user.jsp">Logout!</a></span></span></div>
      </dl>
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
              <li><a href="admin.jsp" class="current">Home page</a></li>
              <li><a href="services2.jsp">Services</a></li>
              <li><a href="gallery2.jsp">Gallery</a></li>
              <li><a href="restaurant2.jsp">Restaurant</a></li>
              <li><a href="testimonials2.jsp">Testimonials</a></li>
              <li><a href="booking2.jsp">Booking</a></li>
            </ul>
          </div>
        </div>
        <!-- header-box end -->
      </div>
    </div>
  </div>
  <!-- content -->
  <div id="content">
    <div class="wrapper">
      <div class="aside maxheight">
        <!-- box begin -->
        <div class="box maxheight">
          <div class="inner">
            <h3>Reservation:</h3>
            <form action="showroomdetail.jsp" id="reservation-form" name="reservation-form">
              <fieldset>
              <div class="field">
              <table>
                <tr>
												<td align="left">Check In:</td> 
												<td align="left"><input type="text" name="checkin"
													size="30" readonly onclick="scwShow(this,event);" maxlength="120" style="width:100px;"/></td>
											</tr>
											
											<tr>
												<td align="left">Check Out:</td> 
												<td align="left"><input type="text" name="checkout"
													size="50" readonly onclick="scwShow(this,event);" maxlength="150" style="width:100px;"/></td>
											</tr>
											<tr>
                                        
											</table>
											</div>
                                     <br /><br />
              <div class="button"><span><span><a href="javascript:checkAvailibility();">Check Availability</a></span></span></div>
              <br><br></br></br>
          <div class="button"><span><span><a href="addrooms.jsp">Add Rooms</a></span></span></div>
             <br><br></br></br> 
         <div class="button"><span><span><a href="deletecab.jsp">Booked Cab</a></span></span></div>
              
              </fieldset>
            </form>
          </div>
        </div>
        <!-- box end -->
      </div>
      <div class="content">
        <div class="indent">
          <h2>FiveStar is happy to welcome you!</h2>
          <img class="img-indent png" alt="" src="images/1page-img1.png" />
          <p class="alt-top">Come alone or bring your family with you, stay here for a night or for weeks, stay here while on business trip or at some kind of conference - either way our hotel is the best possible variant.</p>
          Feel free to contact us anytime in case you have any questions or concerns.
          <div class="clear"></div>
          <div class="line-hor"></div>
          <div class="wrapper line-ver">
            <div class="col-1">
              <h3>Special Offers</h3>
              <ul>
                <li>FREE wide-screen TV</li>
                <li>50% Discount for Restaraunt service</li>
                <li>30% Discount for 3 days+ orders</li>
                <li>FREE drinks and beverages in rooms</li>
                <li>Exclusive souvenirs</li>
              </ul>
              <div class="button"><span><span><a href="booking2.jsp">Order Now!</a></span></span></div>
              <dl>    <div class="button"><span><span>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<a href="passworddetail.jsp">Change Password!</a></span></span></div>
      </dl>
            </div>
            <div class="col-2">
              <h3>Location</h3>
              <p>We are located in the center of Prague surrounded by malls and boutiques.</p>
              <dl class="contacts-list">
                <dt>Gazek st., 210 New Delhi</dt>
                <dd>1-800-412-4556</dd>
                <dd>1-800-542-6448</dd>
                                <br></br>
                              
                               <div class="button"><span><span><a href="ahistory.jsp">Booked History!</a></span></span></div>
                
              </dl>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- footer -->
  <div id="footer">
    <ul class="nav">
      <li><a href="#">Home</a>|</li>
      <li><a href="#">Services</a>|</li>
      <li><a href="#">Gallery</a>|</li>
      <li><a href="#">Restaurant</a>|</li>
      <li><a href="#">Testimonials</a>|</li>
      <li><a href="#">Booking</a></li>
    </ul>
    <div class="wrapper">
      <div class="fleft">Copyright &copy; 2009 <a href="#">Name Here</a>. All Rights Reserved</div>
      <div class="fright">Designed by TemplateMonster - <a href="http://www.templatemonster.com/">website templates</a> provider</div>
    </div>
  </div>
</div>
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
