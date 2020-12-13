<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Five Star Hotel | Booking</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="layout.css" rel="stylesheet" type="text/css" />
<script src="maxheight.js" type="text/javascript"></script>
<script type="text/javascript" src="calander.js"></script>
<script type="text/javascript">
 function checkAvailibility(){
	// alert("invoked!!!");
	 document.forms[0].submit();
 }

</script>

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
              <li><a href="booking1.jsp">Booking</a></li>
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
            <form action="rshowroomdetail.jsp" id="reservation-form" name="reservation-form">
              <fieldset>
                <div class="field">
                <table>
               <tr>
												<td align="left">Check In:</td> 
												<td align="left"><input type="text" name="checkin" readonly onclick="scwShow(this,event);"
													size="30" maxlength="120" style="width:100px;"/></td>
											</tr>
											
											<tr>
												<td align="left">Check Out:</td> 
												<td align="left"><input type="text" name="checkout" readonly onclick="scwShow(this,event);"
													size="30" maxlength="150" style="width:100px;"/></td>
											</tr>
											</table>
											
               
                </div>
                <div class="field"> Persons: &nbsp;
                  <input type="text" name="persons" value="1"/> &nbsp; &nbsp; Rooms:&nbsp;
                  <input type="text" name="rooms" value="1"/>
                  
                </div>
                <div class="button"><span><span><a href="javascript:checkAvailibility();">Check Availability</a></span></span></div>
                <!-- <input id="submit-button" type="submit"  style="width:100px;" value="Check" tabindex="110"> -->
                
                
              </fieldset>
            </form>
          </div>
        </div>
        <!-- box end -->
      </div>
      <div class="content">
        <div class="indent">
          <h2>Our location</h2>
          <img class="img-indent png" alt="" src="images/5page-img1.png" />
          <div class="extra-wrap">
            <p class="alt-top">Our hotel is located in the most spectacular part of Prague - surrounded by boutiques, restaurants and luxurious shops.</p>
            <p>Please feel free to come visit us at the following adress:</p>
            <dl class="contacts-list">
              <dt>Gazek st., 210 New Delhi</dt>
              <dd>1-800-412-4556</dd>
              <dd>1-800-542-6448</dd>
            </dl>
          </div>
          <div class="clear"></div>
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
