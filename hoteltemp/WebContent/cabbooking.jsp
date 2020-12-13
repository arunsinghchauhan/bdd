<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Five Star Hotel | Gallery</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="layout.css" rel="stylesheet" type="text/css" />
<script src="maxheight.js" type="text/javascript"></script>
<script type="text/javascript" src="calander.js"></script>
<script type="text/javascript" src="calander.js"></script>

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
            <h3>Cab Booking:</h3>
           <form action="Calcabinfo" id="reservation-form" method="post">
           <%
			String sno=request.getParameter("sno");
			
			%>
			<input type="hidden" name="sno" value="<%=sno%>"/>
              <fieldset>
                <th width="715" valign="top" scope="col">

						<table width="721" height="373" border="0">
							<tr>
								<th width="550" height="367" valign="top" scope="col"
									align="center">
								
										<table width="546" border="1"
											style="border: 2px solid; border-radius: 10px;">
											


											<tr>
												<td align="left">Name:</td>
												<td align="left"><input type="text" name="cname"
													size="30" maxlength="120" style="width:140px;" /></td>
											</tr>
											
											
											<tr>
												<td align="left">E Mail:</td>
												<td align="left"><input type="text" name="email"
													size="30" maxlength="120"  style="width:170px;"/></td>
											</tr>
											<tr>
												<td align="left">Phone:</td>
												<td align="left"><input type="text" name="phone"
													size="30" maxlength="120" style="width:120px;" /></td>
											</tr>
											<tr>
												<td align="left">Address</td>
												<td align="left"><textarea  rows="2" cols="30"
														name="address"></textarea></td>
											</tr>
											
											
										
										
											
											
											
												

										</table>
										<table width="646" border="1"
											style="border: 4px solid; border-radius: 20px;">
											<tr>
												<td align="left">FROM/TO</td>
												<td align="left">
													<select name="from">
														<option>Indira Gandhi International Airport</option>
														<option>Safdarjung Airport</option>
														<option>Ramagundam  Airport</option>
														<option>Nizamabad Airport</option>
														<option>New Dehi Metro Station</option>
														<option>Hotel Five Star</option>
														
														
														
													</select>
													<select name="to">
														<option>Red Fort</option>
														<option>Qutub Minar</option>
														<option>Akshardham</option>
														<option>Bahai Temple</option>
														<option>New Dehi Metro Station</option>
														<option>Hotel Five Star</option>
														
														
														
													</select>
												</td>
											</tr>
											<tr>
												<td align="left">NO OF PASSENGERS</td>
												<td align="left">
													<select name="passenger">
														<option>1-4</option>
														<option>5-8</option>
														
														
														
													</select>
													
												</td>
											</tr>
											<tr>
												<td align="left">Date:</td>
												<td align="left"><input type="text" name="date"
													size="30"readonly onclick="scwShow(this,event);" maxlength="120"  style="width:100px;"/></td>
											</tr>
											<tr>
												<td align="left">TIME</td>
												<td align="left">
													<select name="hour">
														<option>00</option>
														<option>01</option>
														<option>02</option>
														<option>03</option>
														<option>04</option>
														<option>05</option>
														<option>06</option>
														<option>07</option>
														<option>08</option>
														<option>09</option>
														<option>10</option>
														<option>11</option>
														<option>12</option>
														<option>13</option>
														<option>14</option>
														<option>15</option>
														<option>15</option><option>16</option><option>17</option><option>18</option><option>19</option><option>20</option><option>21</option><option>22</option><option>23</option>
														
														
														
													</select>
													<select name="min">
														<option>00</option>
														<option>05</option>
														<option>10</option>
														<option>15</option>
														<option>20</option>
														<option>25</option>
														<option>30</option>
														<option>35</option>
														<option>40</option>
														<option>45</option>
														<option>50</option>
														<option>55</option>
														<option>60</option>
														
														
														
														
													</select>
													<select name="period">
														<option>AM</option>
														<option>PM</option></select>
													
												</td>
											</tr>
											<tr>
												<td align="left">Payment(Choose Bank):</td>
												<td align="left"><select name="choosebank" id="choosebank">
														<option value="Allahabad Bank">Allahabad Bank</option>
	    
	     
	     		<option value="Andhra Bank">Andhra Bank</option>
	    
	     
	     		<option value="Bank of Bahrain & Kuwait">Bank of Bahrain & Kuwait</option>
	    
	     
	     		<option value="Bank of Baroda - Corporate NetBanking">Bank of Baroda - Corporate NetBanking</option>
	    
	     
	     		<option value="Bank of Baroda - Retail NetBanking">Bank of Baroda - Retail NetBanking</option>
	    
	     
	     		<option value="Bank of Maharashtra">Bank of Maharashtra</option>
	    
	     
	     		<option value="Canara Bank">Canara Bank</option>
	    
	     
	     		<option value="Catholic Syrian Bank">Catholic Syrian Bank</option>
	    
	     
	     		<option value="Central Bank of India">Central Bank of India</option>
	    
	     
	     		<option value="City Union Bank">City Union Bank</option>
	    
	     
	     		<option value="Corporation Bank">Corporation Bank</option>
	    
	     
	     		<option value="Cosmos Bank">Cosmos Bank</option>
	    
	     
	     		<option value="Deutsche Bank">Deutsche Bank</option>
	    
	     
	     		<option value="Development Credit Bank">Development Credit Bank</option>
	    
	     
	     		<option value="Dhanlaxmi Bank">Dhanlaxmi Bank</option>
	    
	     
	     		<option value="Federal Bank">Federal Bank</option>
	    
	     
	     		<option value="HDFC">HDFC</option>
	    
	     
	     		<option value="ICICI">ICICI</option>
	    
	     
	     		<option value="IDBI">IDBI</option>
	    
	     
	     		<option value="ING Vysya bank">ING Vysya bank</option>
	    
	     
	     		<option value="Indian Bank">Indian Bank</option>
	    
	     
	     		<option value="Indian Overseas Bank">Indian Overseas Bank</option>
	    
	     
	     		<option value="IndusInd Bank">IndusInd Bank</option>
	    
	     
	     		<option value="Jammu And Kashmir Bank">Jammu And Kashmir Bank</option>
	    
	     
	     		<option value="Karnataka Bank">Karnataka Bank</option>
	    
	     
	     		<option value="Karur Vyasa Bank">Karur Vyasa Bank</option>
	    
	     
	     		<option value="Kotak Mahindra Bank">Kotak Mahindra Bank</option>
	    
	     
	     		<option value="Lakshmi Vilas Bank">Lakshmi Vilas Bank</option>
	    
	     
	     		<option value="Oriental Bank of Commerce">Oriental Bank of Commerce</option>
	    
	     
	     		<option value="PNB">PNB</option>
	    
	     
	     		<option value="PNB Corporate NetBanking">PNB Corporate NetBanking</option>
	    
	     
	     		<option value="Punjab and Maharashtra Bank">Punjab and Maharashtra Bank</option>
	    
	     
	     		<option value="Punjab and Sind Bank">Punjab and Sind Bank</option>
	    
	     
	     		<option value="Ratnakar Bank">Ratnakar Bank</option>
	    
	     
	     		<option value="Royal Bank of Scotland">Royal Bank of Scotland</option>
	    
	     
	     		<option value="SBI">SBI</option>
	    
	     
	     		<option value="Saraswat Bank">Saraswat Bank</option>
	    
	     
	     		<option value="Shamrao Vitthal Co-operative Bank">Shamrao Vitthal Co-operative Bank</option>
	    
	     
	     		<option value="South Indian Bank">South Indian Bank</option>
	    
	     
	     		<option value="Standard Chartered Bank">Standard Chartered Bank</option>
	    
	     
	     		<option value="State Bank of Bikaner and Jaipur">State Bank of Bikaner and Jaipur</option>
	    
	     
	     		<option value="State Bank of Hyderabad">State Bank of Hyderabad</option>
	    
	     
	     		<option value="State Bank of India Debit Card">State Bank of India Debit Card</option>
	    
	     
	     		<option value="State Bank of MYSORE">State Bank of MYSORE</option>
	    
	     
	     		<option value="State Bank of Patiala">State Bank of Patiala</option>
	    
	     
	     		<option value="State Bank of Travancore">State Bank of Travancore</option>
	    
	     
	     		<option value="Syndicate Bank">Syndicate Bank</option>
	    
	     
	     		<option value="Tamilnad Mercantile Bank">Tamilnad Mercantile Bank</option>
	    
	     
	     		<option value="Tamilnadu State Coop Bank">Tamilnadu State Coop Bank</option>
	    
	     
	     		<option value="Union Bank Of India">Union Bank Of India</option>
	    
	     
	     		<option value="United Bank of India">United Bank of India</option>
	    
	     
	     		<option value="United Commercial Bank">United Commercial Bank</option>
	    
	     
	     		<option value="Vijaya Bank">Vijaya Bank</option>
	    
	     
	     		<option value="YES Bank">YES Bank</option>
	     		</select>
		    
		    </td>
											</tr>
										    <tr>
												<td align="left">Card Number:</td>
												<td align="left"><input type="text" id="enterpin" name="enterpin"
													size="30" maxlength="120"style="width:120px;" /></td>
											</tr>
											<tr>
												<td align="left">Expiry Date:</td>
												<td align="left"><input type="text" id="expirydate" name="expirydate"
													size="30" readonly onclick="scwShow(this,event);" maxlength="120"style="width:120px;" /></td>
											</tr>
											<tr>
												<td align="left">Amount:</td>
												<td align="left">
													<select name="amount" id="amount">
														<option>4000</option>
														
													</select>
													
												</td>
											</tr>
											</table>
										<p>
											<input type="submit" value="Submit" style="width:100px;"/><input
												type="reset" value="Reset" name="B2" style="width:100px; "/>
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
